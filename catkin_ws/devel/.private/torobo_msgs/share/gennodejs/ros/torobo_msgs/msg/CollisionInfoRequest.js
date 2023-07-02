// Auto-generated. Do not edit!

// (in-package torobo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class CollisionInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jointState = null;
      this.max_contacts = null;
    }
    else {
      if (initObj.hasOwnProperty('jointState')) {
        this.jointState = initObj.jointState
      }
      else {
        this.jointState = new sensor_msgs.msg.JointState();
      }
      if (initObj.hasOwnProperty('max_contacts')) {
        this.max_contacts = initObj.max_contacts
      }
      else {
        this.max_contacts = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisionInfoRequest
    // Serialize message field [jointState]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.jointState, buffer, bufferOffset);
    // Serialize message field [max_contacts]
    bufferOffset = _serializer.uint32(obj.max_contacts, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisionInfoRequest
    let len;
    let data = new CollisionInfoRequest(null);
    // Deserialize message field [jointState]
    data.jointState = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_contacts]
    data.max_contacts = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.JointState.getMessageSize(object.jointState);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'torobo_msgs/CollisionInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '011912b45619601da9981598cea2b9a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/JointState jointState
    uint32 max_contacts
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CollisionInfoRequest(null);
    if (msg.jointState !== undefined) {
      resolved.jointState = sensor_msgs.msg.JointState.Resolve(msg.jointState)
    }
    else {
      resolved.jointState = new sensor_msgs.msg.JointState()
    }

    if (msg.max_contacts !== undefined) {
      resolved.max_contacts = msg.max_contacts;
    }
    else {
      resolved.max_contacts = 0
    }

    return resolved;
    }
};

module.exports = CollisionInfoRequest;
