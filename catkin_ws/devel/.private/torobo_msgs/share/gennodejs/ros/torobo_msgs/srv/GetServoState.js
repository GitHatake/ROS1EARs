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


//-----------------------------------------------------------

class GetServoStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_names = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetServoStateRequest
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetServoStateRequest
    let len;
    let data = new GetServoStateRequest(null);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/GetServoStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '587f4b1b8847cbdf153605e9cf8ebaed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] joint_names
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetServoStateRequest(null);
    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    return resolved;
    }
};

class GetServoStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_servo_on = null;
    }
    else {
      if (initObj.hasOwnProperty('is_servo_on')) {
        this.is_servo_on = initObj.is_servo_on
      }
      else {
        this.is_servo_on = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetServoStateResponse
    // Serialize message field [is_servo_on]
    bufferOffset = _arraySerializer.bool(obj.is_servo_on, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetServoStateResponse
    let len;
    let data = new GetServoStateResponse(null);
    // Deserialize message field [is_servo_on]
    data.is_servo_on = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.is_servo_on.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/GetServoStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f5ed245f1555ab9b0d81b89496b5632';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[] is_servo_on
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetServoStateResponse(null);
    if (msg.is_servo_on !== undefined) {
      resolved.is_servo_on = msg.is_servo_on;
    }
    else {
      resolved.is_servo_on = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetServoStateRequest,
  Response: GetServoStateResponse,
  md5sum() { return '97bcac43fb1f87b145f4ed8da59438f9'; },
  datatype() { return 'torobo_msgs/GetServoState'; }
};
