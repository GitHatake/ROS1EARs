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

class SetRobotControllerParameterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.parameter_name = null;
      this.joint_names = null;
      this.parameter_values = null;
    }
    else {
      if (initObj.hasOwnProperty('parameter_name')) {
        this.parameter_name = initObj.parameter_name
      }
      else {
        this.parameter_name = '';
      }
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('parameter_values')) {
        this.parameter_values = initObj.parameter_values
      }
      else {
        this.parameter_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetRobotControllerParameterRequest
    // Serialize message field [parameter_name]
    bufferOffset = _serializer.string(obj.parameter_name, buffer, bufferOffset);
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [parameter_values]
    bufferOffset = _arraySerializer.float32(obj.parameter_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetRobotControllerParameterRequest
    let len;
    let data = new SetRobotControllerParameterRequest(null);
    // Deserialize message field [parameter_name]
    data.parameter_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [parameter_values]
    data.parameter_values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.parameter_name.length;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.parameter_values.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/SetRobotControllerParameterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '809bf8ee7e3ad4cfaee151a913a9f52a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string parameter_name
    string[] joint_names
    float32[] parameter_values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetRobotControllerParameterRequest(null);
    if (msg.parameter_name !== undefined) {
      resolved.parameter_name = msg.parameter_name;
    }
    else {
      resolved.parameter_name = ''
    }

    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.parameter_values !== undefined) {
      resolved.parameter_values = msg.parameter_values;
    }
    else {
      resolved.parameter_values = []
    }

    return resolved;
    }
};

class SetRobotControllerParameterResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetRobotControllerParameterResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetRobotControllerParameterResponse
    let len;
    let data = new SetRobotControllerParameterResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/SetRobotControllerParameterResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetRobotControllerParameterResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetRobotControllerParameterRequest,
  Response: SetRobotControllerParameterResponse,
  md5sum() { return 'f6a7b3b84aaf90a78da4f4ecdbe454b7'; },
  datatype() { return 'torobo_msgs/SetRobotControllerParameter'; }
};
