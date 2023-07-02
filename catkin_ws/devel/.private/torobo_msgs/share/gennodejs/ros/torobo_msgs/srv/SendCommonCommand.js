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

class SendCommonCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_names = null;
      this.whole_order = null;
      this.joint_order = null;
      this.value1 = null;
      this.value2 = null;
      this.value3 = null;
      this.value4 = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('whole_order')) {
        this.whole_order = initObj.whole_order
      }
      else {
        this.whole_order = 0;
      }
      if (initObj.hasOwnProperty('joint_order')) {
        this.joint_order = initObj.joint_order
      }
      else {
        this.joint_order = 0;
      }
      if (initObj.hasOwnProperty('value1')) {
        this.value1 = initObj.value1
      }
      else {
        this.value1 = 0.0;
      }
      if (initObj.hasOwnProperty('value2')) {
        this.value2 = initObj.value2
      }
      else {
        this.value2 = 0.0;
      }
      if (initObj.hasOwnProperty('value3')) {
        this.value3 = initObj.value3
      }
      else {
        this.value3 = 0.0;
      }
      if (initObj.hasOwnProperty('value4')) {
        this.value4 = initObj.value4
      }
      else {
        this.value4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SendCommonCommandRequest
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [whole_order]
    bufferOffset = _serializer.uint32(obj.whole_order, buffer, bufferOffset);
    // Serialize message field [joint_order]
    bufferOffset = _serializer.uint32(obj.joint_order, buffer, bufferOffset);
    // Serialize message field [value1]
    bufferOffset = _serializer.float32(obj.value1, buffer, bufferOffset);
    // Serialize message field [value2]
    bufferOffset = _serializer.float32(obj.value2, buffer, bufferOffset);
    // Serialize message field [value3]
    bufferOffset = _serializer.float32(obj.value3, buffer, bufferOffset);
    // Serialize message field [value4]
    bufferOffset = _serializer.float32(obj.value4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendCommonCommandRequest
    let len;
    let data = new SendCommonCommandRequest(null);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [whole_order]
    data.whole_order = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [joint_order]
    data.joint_order = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [value1]
    data.value1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [value2]
    data.value2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [value3]
    data.value3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [value4]
    data.value4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/SendCommonCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '58beac3de2d0d9e66b388dbe5228c3fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] joint_names
    uint32 whole_order
    uint32 joint_order
    float32 value1
    float32 value2
    float32 value3
    float32 value4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SendCommonCommandRequest(null);
    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.whole_order !== undefined) {
      resolved.whole_order = msg.whole_order;
    }
    else {
      resolved.whole_order = 0
    }

    if (msg.joint_order !== undefined) {
      resolved.joint_order = msg.joint_order;
    }
    else {
      resolved.joint_order = 0
    }

    if (msg.value1 !== undefined) {
      resolved.value1 = msg.value1;
    }
    else {
      resolved.value1 = 0.0
    }

    if (msg.value2 !== undefined) {
      resolved.value2 = msg.value2;
    }
    else {
      resolved.value2 = 0.0
    }

    if (msg.value3 !== undefined) {
      resolved.value3 = msg.value3;
    }
    else {
      resolved.value3 = 0.0
    }

    if (msg.value4 !== undefined) {
      resolved.value4 = msg.value4;
    }
    else {
      resolved.value4 = 0.0
    }

    return resolved;
    }
};

class SendCommonCommandResponse {
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
    // Serializes a message object of type SendCommonCommandResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SendCommonCommandResponse
    let len;
    let data = new SendCommonCommandResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/SendCommonCommandResponse';
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
    const resolved = new SendCommonCommandResponse(null);
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
  Request: SendCommonCommandRequest,
  Response: SendCommonCommandResponse,
  md5sum() { return '64dbb1a2af96fe7e3d28eaf27482f2f9'; },
  datatype() { return 'torobo_msgs/SendCommonCommand'; }
};
