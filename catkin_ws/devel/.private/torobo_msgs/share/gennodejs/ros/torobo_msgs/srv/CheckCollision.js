// Auto-generated. Do not edit!

// (in-package torobo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CheckCollisionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jointState = null;
    }
    else {
      if (initObj.hasOwnProperty('jointState')) {
        this.jointState = initObj.jointState
      }
      else {
        this.jointState = new sensor_msgs.msg.JointState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckCollisionRequest
    // Serialize message field [jointState]
    bufferOffset = sensor_msgs.msg.JointState.serialize(obj.jointState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckCollisionRequest
    let len;
    let data = new CheckCollisionRequest(null);
    // Deserialize message field [jointState]
    data.jointState = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.JointState.getMessageSize(object.jointState);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/CheckCollisionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '828d193d7c2252dd17a1fb6d7b1a79ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/JointState jointState
    
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
    const resolved = new CheckCollisionRequest(null);
    if (msg.jointState !== undefined) {
      resolved.jointState = sensor_msgs.msg.JointState.Resolve(msg.jointState)
    }
    else {
      resolved.jointState = new sensor_msgs.msg.JointState()
    }

    return resolved;
    }
};

class CheckCollisionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isColliding = null;
    }
    else {
      if (initObj.hasOwnProperty('isColliding')) {
        this.isColliding = initObj.isColliding
      }
      else {
        this.isColliding = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckCollisionResponse
    // Serialize message field [isColliding]
    bufferOffset = _serializer.bool(obj.isColliding, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckCollisionResponse
    let len;
    let data = new CheckCollisionResponse(null);
    // Deserialize message field [isColliding]
    data.isColliding = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/CheckCollisionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b2cb34f17a03d15f695e88eb1712876';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isColliding
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckCollisionResponse(null);
    if (msg.isColliding !== undefined) {
      resolved.isColliding = msg.isColliding;
    }
    else {
      resolved.isColliding = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckCollisionRequest,
  Response: CheckCollisionResponse,
  md5sum() { return '7f331446f35a1a09fd73f183dd0a3fe8'; },
  datatype() { return 'torobo_msgs/CheckCollision'; }
};
