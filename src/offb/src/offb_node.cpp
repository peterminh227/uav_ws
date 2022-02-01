#include <ros/ros.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <mavros_msgs/GlobalPositionTarget.h>
#include <sensor_msgs/NavSatFix.h>
#include <geometry_msgs/PoseStamped.h>
#include <string> 

// global variables
mavros_msgs::State current_state;
sensor_msgs::NavSatFix global_position;
bool global_position_received = false;

// callback functions
void globalPosition_cb(const sensor_msgs::NavSatFix::ConstPtr& msg) {
    global_position = *msg;
    global_position_received = true;
    ROS_INFO_ONCE("Got global position: [%.2f, %.2f, %.2f]", msg->latitude, msg->longitude, msg->altitude);
}

void state_cb(const mavros_msgs::State::ConstPtr& msg) {
    current_state = *msg;
}
//
int main(int argc, char **argv)
{
    ros::init(argc, argv, "offb_node");
    ros::NodeHandle nh;

    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>
            ("mavros/state", 10, state_cb);
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 10);
    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>
            ("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>
            ("mavros/set_mode");
    //ros::Subscriber global_pos_sub = nh.subscribe < sensor_msgs::NavSatFix > ("mavros/global_position/global", 1, globalPosition_cb);
    //ros::Publisher goal_pos_pub = nh.advertise < mavros_msgs::GlobalPositionTarget > ("mavros/setpoint_position/global", 10);
    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(10.0);

    // wait for fcu connection
    while (ros::ok() && !current_state.connected) {
        ROS_INFO_ONCE("Waiting for FCU connection...");
        ros::spinOnce();
        rate.sleep();
    }
    ROS_INFO("FCU connected");

   
	
    // set target position
    mavros_msgs::GlobalPositionTarget goal_position;
    goal_position.latitude = global_position.latitude;
    goal_position.longitude = global_position.longitude;
    goal_position.altitude = global_position.altitude;


    geometry_msgs::PoseStamped pose;
    pose.pose.position.x = 0;
    pose.pose.position.y = 0;
    pose.pose.position.z = 5;

    //send a few setpoints before starting
    for(int i = 100; ros::ok() && i > 0; --i){
        local_pos_pub.publish(pose);
        ros::spinOnce();
        rate.sleep();
    }

    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";

    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;

    ros::Time last_request = ros::Time::now();

    while(ros::ok()){

        if( current_state.mode != "OFFBOARD" &&
            (ros::Time::now() - last_request > ros::Duration(5.0))){

            if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
		ROS_INFO("Offboard enabled");
            }
            last_request = ros::Time::now();
        } else {
            if( !current_state.armed &&
                (ros::Time::now() - last_request > ros::Duration(5.0))){
                if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO("Vehicle armed");
                }
                last_request = ros::Time::now();
            }
        }

        local_pos_pub.publish(pose);

        ros::spinOnce();

        rate.sleep();
    }

    return 0;
}


