// Auto-generated. Do not edit!

// (in-package sync_ekf2_pc.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class pose_n_pc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_sync = null;
      this.pc_sync = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_sync')) {
        this.pose_sync = initObj.pose_sync
      }
      else {
        this.pose_sync = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('pc_sync')) {
        this.pc_sync = initObj.pc_sync
      }
      else {
        this.pc_sync = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pose_n_pc
    // Serialize message field [pose_sync]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_sync, buffer, bufferOffset);
    // Serialize message field [pc_sync]
    bufferOffset = _arraySerializer.uint8(obj.pc_sync, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pose_n_pc
    let len;
    let data = new pose_n_pc(null);
    // Deserialize message field [pose_sync]
    data.pose_sync = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [pc_sync]
    data.pc_sync = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pc_sync.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sync_ekf2_pc/pose_n_pc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71ef86c488f3dbd4c8a0838abdc40c23';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Pose pose_sync
    
    uint8[] pc_sync
    
    
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pose_n_pc(null);
    if (msg.pose_sync !== undefined) {
      resolved.pose_sync = geometry_msgs.msg.Pose.Resolve(msg.pose_sync)
    }
    else {
      resolved.pose_sync = new geometry_msgs.msg.Pose()
    }

    if (msg.pc_sync !== undefined) {
      resolved.pc_sync = msg.pc_sync;
    }
    else {
      resolved.pc_sync = []
    }

    return resolved;
    }
};

module.exports = pose_n_pc;
