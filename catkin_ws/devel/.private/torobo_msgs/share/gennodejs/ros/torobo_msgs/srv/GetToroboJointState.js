// Auto-generated. Do not edit!

// (in-package torobo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let ToroboJointState = require('../msg/ToroboJointState.js');

//-----------------------------------------------------------

class GetToroboJointStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controllerName = null;
    }
    else {
      if (initObj.hasOwnProperty('controllerName')) {
        this.controllerName = initObj.controllerName
      }
      else {
        this.controllerName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetToroboJointStateRequest
    // Serialize message field [controllerName]
    bufferOffset = _serializer.string(obj.controllerName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetToroboJointStateRequest
    let len;
    let data = new GetToroboJointStateRequest(null);
    // Deserialize message field [controllerName]
    data.controllerName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.controllerName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/GetToroboJointStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '871c8bc8e290d38ba0b734d07fbebbf8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string controllerName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetToroboJointStateRequest(null);
    if (msg.controllerName !== undefined) {
      resolved.controllerName = msg.controllerName;
    }
    else {
      resolved.controllerName = ''
    }

    return resolved;
    }
};

class GetToroboJointStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.toroboJointState = null;
    }
    else {
      if (initObj.hasOwnProperty('toroboJointState')) {
        this.toroboJointState = initObj.toroboJointState
      }
      else {
        this.toroboJointState = new ToroboJointState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetToroboJointStateResponse
    // Serialize message field [toroboJointState]
    bufferOffset = ToroboJointState.serialize(obj.toroboJointState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetToroboJointStateResponse
    let len;
    let data = new GetToroboJointStateResponse(null);
    // Deserialize message field [toroboJointState]
    data.toroboJointState = ToroboJointState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ToroboJointState.getMessageSize(object.toroboJointState);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/GetToroboJointStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f0dead6332ebd57024a39d22134c85d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    torobo_msgs/ToroboJointState toroboJointState
    
    ================================================================================
    MSG: torobo_msgs/ToroboJointState
    Header header
    
    uint64 timeStamp
    uint64 hostTimeStamp
    string[] name
    uint32[] type
    uint32[] comStatus
    uint32[] systemMode
    uint32[] ctrlMode
    uint64[] errorWarningStatus
    uint32[] trjStatus
    uint32[] trjViaRemain
    float64[] refCurrent
    float64[] refPosition
    float64[] refVelocity
    float64[] refAcceleration
    float64[] refEffort
    float64[] current
    float64[] position
    float64[] velocity
    float64[] outConvInVelocity
    float64[] acceleration
    float64[] outConvInAcceleration
    float64[] effort
    float64[] temperature
    float64[] general_0
    float64[] general_1
    float64[] general_2
    float64[] general_3
    
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
    const resolved = new GetToroboJointStateResponse(null);
    if (msg.toroboJointState !== undefined) {
      resolved.toroboJointState = ToroboJointState.Resolve(msg.toroboJointState)
    }
    else {
      resolved.toroboJointState = new ToroboJointState()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetToroboJointStateRequest,
  Response: GetToroboJointStateResponse,
  md5sum() { return 'f076a05b5c866f51043035790c9b9bbf'; },
  datatype() { return 'torobo_msgs/GetToroboJointState'; }
};
