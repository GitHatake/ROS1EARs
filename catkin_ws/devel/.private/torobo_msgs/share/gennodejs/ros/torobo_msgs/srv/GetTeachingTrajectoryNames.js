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

class GetTeachingTrajectoryNamesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTeachingTrajectoryNamesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTeachingTrajectoryNamesRequest
    let len;
    let data = new GetTeachingTrajectoryNamesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/GetTeachingTrajectoryNamesRequest';
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
    const resolved = new GetTeachingTrajectoryNamesRequest(null);
    return resolved;
    }
};

class GetTeachingTrajectoryNamesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.teachingTrajectoryNames = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('teachingTrajectoryNames')) {
        this.teachingTrajectoryNames = initObj.teachingTrajectoryNames
      }
      else {
        this.teachingTrajectoryNames = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTeachingTrajectoryNamesResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [teachingTrajectoryNames]
    bufferOffset = _arraySerializer.string(obj.teachingTrajectoryNames, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTeachingTrajectoryNamesResponse
    let len;
    let data = new GetTeachingTrajectoryNamesResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [teachingTrajectoryNames]
    data.teachingTrajectoryNames = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.teachingTrajectoryNames.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/GetTeachingTrajectoryNamesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b78c8a970090dfff436e75670b29785b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string[] teachingTrajectoryNames
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTeachingTrajectoryNamesResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.teachingTrajectoryNames !== undefined) {
      resolved.teachingTrajectoryNames = msg.teachingTrajectoryNames;
    }
    else {
      resolved.teachingTrajectoryNames = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTeachingTrajectoryNamesRequest,
  Response: GetTeachingTrajectoryNamesResponse,
  md5sum() { return 'b78c8a970090dfff436e75670b29785b'; },
  datatype() { return 'torobo_msgs/GetTeachingTrajectoryNames'; }
};
