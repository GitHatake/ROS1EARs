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

class SetGeneralOutputRegisterRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.general_register_number = null;
      this.parameter_name = null;
      this.joint_names = null;
    }
    else {
      if (initObj.hasOwnProperty('general_register_number')) {
        this.general_register_number = initObj.general_register_number
      }
      else {
        this.general_register_number = 0;
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetGeneralOutputRegisterRequest
    // Serialize message field [general_register_number]
    bufferOffset = _serializer.int32(obj.general_register_number, buffer, bufferOffset);
    // Serialize message field [parameter_name]
    bufferOffset = _serializer.string(obj.parameter_name, buffer, bufferOffset);
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGeneralOutputRegisterRequest
    let len;
    let data = new SetGeneralOutputRegisterRequest(null);
    // Deserialize message field [general_register_number]
    data.general_register_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parameter_name]
    data.parameter_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.parameter_name.length;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/SetGeneralOutputRegisterRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15b89147ffb7b3fa1afbf0dc5f37e1c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # "general_register_number" : Target general register number [0-3]
    # "parameter_name" : parameter name set to target general regiseter
    # "joint_names" : Target joint names
    int32 general_register_number
    string parameter_name
    string[] joint_names
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetGeneralOutputRegisterRequest(null);
    if (msg.general_register_number !== undefined) {
      resolved.general_register_number = msg.general_register_number;
    }
    else {
      resolved.general_register_number = 0
    }

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

    return resolved;
    }
};

class SetGeneralOutputRegisterResponse {
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
    // Serializes a message object of type SetGeneralOutputRegisterResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetGeneralOutputRegisterResponse
    let len;
    let data = new SetGeneralOutputRegisterResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/SetGeneralOutputRegisterResponse';
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
    const resolved = new SetGeneralOutputRegisterResponse(null);
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
  Request: SetGeneralOutputRegisterRequest,
  Response: SetGeneralOutputRegisterResponse,
  md5sum() { return 'f1fc8a310987bc35733b0d0e64490c68'; },
  datatype() { return 'torobo_msgs/SetGeneralOutputRegister'; }
};
