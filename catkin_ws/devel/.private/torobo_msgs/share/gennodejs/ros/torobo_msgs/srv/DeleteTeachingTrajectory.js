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

class DeleteTeachingTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.teachingTrajectoryName = null;
    }
    else {
      if (initObj.hasOwnProperty('teachingTrajectoryName')) {
        this.teachingTrajectoryName = initObj.teachingTrajectoryName
      }
      else {
        this.teachingTrajectoryName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DeleteTeachingTrajectoryRequest
    // Serialize message field [teachingTrajectoryName]
    bufferOffset = _serializer.string(obj.teachingTrajectoryName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeleteTeachingTrajectoryRequest
    let len;
    let data = new DeleteTeachingTrajectoryRequest(null);
    // Deserialize message field [teachingTrajectoryName]
    data.teachingTrajectoryName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.teachingTrajectoryName.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/DeleteTeachingTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e69c8cdc2b83254a745638df8e512b10';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string teachingTrajectoryName 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DeleteTeachingTrajectoryRequest(null);
    if (msg.teachingTrajectoryName !== undefined) {
      resolved.teachingTrajectoryName = msg.teachingTrajectoryName;
    }
    else {
      resolved.teachingTrajectoryName = ''
    }

    return resolved;
    }
};

class DeleteTeachingTrajectoryResponse {
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
    // Serializes a message object of type DeleteTeachingTrajectoryResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DeleteTeachingTrajectoryResponse
    let len;
    let data = new DeleteTeachingTrajectoryResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/DeleteTeachingTrajectoryResponse';
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
    const resolved = new DeleteTeachingTrajectoryResponse(null);
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
  Request: DeleteTeachingTrajectoryRequest,
  Response: DeleteTeachingTrajectoryResponse,
  md5sum() { return '562d1a1ce249e5404efbe936d40d377a'; },
  datatype() { return 'torobo_msgs/DeleteTeachingTrajectory'; }
};
