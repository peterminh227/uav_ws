#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <gazebo_msgs/ModelStates.h>
#include <sensor_msgs/PointCloud2.h>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
// 
#include <sync_ekf2_pc/pose_n_pc.h>


//mavros_msgs::State current_state;

using namespace message_filters;

//geometry_msgs::PoseStamped pose_var;
sync_ekf2_pc::pose_n_pc sync_data;
geometry_msgs::PoseStamped pose_var;
void callback(const geometry_msgs::PoseStamped::ConstPtr& mav_pose, const sensor_msgs::PointCloud2::ConstPtr& pointclound_data)
{
//
	ROS_INFO_STREAM("callback now");
	geometry_msgs::PoseStamped pose_here = *mav_pose;
	sensor_msgs::PointCloud2 pc_data = *pointclound_data;
	
	// mav_pose
	sync_data.pose_sync.position.x = pose_here.pose.position.x;
	sync_data.pose_sync.position.y = pose_here.pose.position.y;
	sync_data.pose_sync.position.z = pose_here.pose.position.z;
	sync_data.pose_sync.orientation.w = pose_here.pose.orientation.w;
	sync_data.pose_sync.orientation.x = pose_here.pose.orientation.x;
	sync_data.pose_sync.orientation.y = pose_here.pose.orientation.y;
	sync_data.pose_sync.orientation.z = pose_here.pose.orientation.z;
	// points cloud
	sync_data.pc_sync = pc_data.data;

	//pose_var.pose.position.y = pose_here.pose.position.y;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "sync_ekf2_pc_node");
    ros::NodeHandle nh;
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>("mavros/setpoint_position/local", 10);
	
    message_filters::Subscriber<geometry_msgs::PoseStamped> mav_pose_sub(nh, "/mavros/local_position/pose", 1);
    message_filters::Subscriber<sensor_msgs::PointCloud2> pointcloud_sub(nh, "/camera/depth/points", 1);

    ros::Publisher sync_pub = nh.advertise<sync_ekf2_pc::pose_n_pc>("sync_topic", 1);


    //TimeSynchronizer<geometry_msgs::PoseStamped, sensor_msgs::PointCloud2> sync(mav_pose_sub, pointcloud_sub, 10);
    typedef sync_policies::ApproximateTime<geometry_msgs::PoseStamped, sensor_msgs::PointCloud2> MySyncPolicy;
    Synchronizer<MySyncPolicy> sync(MySyncPolicy(10), mav_pose_sub, pointcloud_sub);
    // callback
    sync.registerCallback(boost::bind(&callback, _1, _2));

    ROS_INFO_STREAM("SYNC ... 1 2 3 4");

    //pose_var.pose.position.y = 0;
    //pose_var.pose.position.z = 2;	
    // PUB

    while(ros::ok()){
    	//local_pos_pub.publish(pose_var);
	//ROS_INFO_STREAM("WTF");
	sync_pub.publish(sync_data);

	ros::spinOnce();
        //rate.sleep();
    }

    //ros::spin();

    return 0;
}

