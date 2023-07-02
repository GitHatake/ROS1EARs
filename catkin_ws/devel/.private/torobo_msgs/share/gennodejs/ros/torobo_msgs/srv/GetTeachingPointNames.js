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

class GetTeachingPointNamesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTeachingPointNamesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTeachingPointNamesRequest
    let len;
    let data = new GetTeachingPointNamesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/GetTeachingPointNamesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTeachingPointNamesRequest(null);
    return resolved;
    }
};

class GetTeachingPointNamesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.teachingPointNames = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('teachingPointNames')) {
        this.teachingPointNames = initObj.teachingPointNames
      }
      else {
        this.teachingPointNames = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTeachingPointNamesResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [teachingPointNames]
    bufferOffset = _arraySerializer.string(obj.teachingPointNames, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTeachingPointNamesResponse
    let len;
    let data = new GetTeachingPointNamesResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [teachingPointNames]
    data.teachingPointNames = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.teachingPointNames.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/GetTeachingPointNamesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86750bf3b770c5fb06c0dead2089ecbf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string[] teachingPointNames
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTeachingPointNamesResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.teachingPointNames !== undefined) {
      resolved.teachingPointNames = msg.teachingPointNames;
    }
    else {
      resolved.teachingPointNames = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTeachingPointNamesRequest,
  Response: GetTeachingPointNamesResponse,
  md5sum() { return '86750bf3b770c5fb06c0dead2089ecbf'; },
  datatype() { return 'torobo_msgs/GetTeachingPointNames'; }
};
