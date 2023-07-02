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

class SetPayloadParamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.mass = null;
      this.com = null;
      this.inertiaElem = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('mass')) {
        this.mass = initObj.mass
      }
      else {
        this.mass = 0.0;
      }
      if (initObj.hasOwnProperty('com')) {
        this.com = initObj.com
      }
      else {
        this.com = [];
      }
      if (initObj.hasOwnProperty('inertiaElem')) {
        this.inertiaElem = initObj.inertiaElem
      }
      else {
        this.inertiaElem = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPayloadParamRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [mass]
    bufferOffset = _serializer.float64(obj.mass, buffer, bufferOffset);
    // Serialize message field [com]
    bufferOffset = _arraySerializer.float64(obj.com, buffer, bufferOffset, null);
    // Serialize message field [inertiaElem]
    bufferOffset = _arraySerializer.float64(obj.inertiaElem, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPayloadParamRequest
    let len;
    let data = new SetPayloadParamRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mass]
    data.mass = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [com]
    data.com = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [inertiaElem]
    data.inertiaElem = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += 8 * object.com.length;
    length += 8 * object.inertiaElem.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/SetPayloadParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f76d249ec63a2eb572372b2b63bfd379';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    float64 mass
    float64[] com            # x, y, z
    float64[] inertiaElem    # ixx, ixy, ixz, iyy, iyz, izz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPayloadParamRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.mass !== undefined) {
      resolved.mass = msg.mass;
    }
    else {
      resolved.mass = 0.0
    }

    if (msg.com !== undefined) {
      resolved.com = msg.com;
    }
    else {
      resolved.com = []
    }

    if (msg.inertiaElem !== undefined) {
      resolved.inertiaElem = msg.inertiaElem;
    }
    else {
      resolved.inertiaElem = []
    }

    return resolved;
    }
};

class SetPayloadParamResponse {
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
    // Serializes a message object of type SetPayloadParamResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPayloadParamResponse
    let len;
    let data = new SetPayloadParamResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/SetPayloadParamResponse';
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
    const resolved = new SetPayloadParamResponse(null);
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
  Request: SetPayloadParamRequest,
  Response: SetPayloadParamResponse,
  md5sum() { return '18444bf482dd4c9fb50d4df61828e83f'; },
  datatype() { return 'torobo_msgs/SetPayloadParam'; }
};
