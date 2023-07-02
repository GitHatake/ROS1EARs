// Auto-generated. Do not edit!

// (in-package torobo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let trajectory_msgs = _finder('trajectory_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RecordTeachingPointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.teachingPointName = null;
      this.point = null;
    }
    else {
      if (initObj.hasOwnProperty('teachingPointName')) {
        this.teachingPointName = initObj.teachingPointName
      }
      else {
        this.teachingPointName = '';
      }
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new trajectory_msgs.msg.JointTrajectoryPoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordTeachingPointRequest
    // Serialize message field [teachingPointName]
    bufferOffset = _serializer.string(obj.teachingPointName, buffer, bufferOffset);
    // Serialize message field [point]
    bufferOffset = trajectory_msgs.msg.JointTrajectoryPoint.serialize(obj.point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordTeachingPointRequest
    let len;
    let data = new RecordTeachingPointRequest(null);
    // Deserialize message field [teachingPointName]
    data.teachingPointName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [point]
    data.point = trajectory_msgs.msg.JointTrajectoryPoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.teachingPointName.length;
    length += trajectory_msgs.msg.JointTrajectoryPoint.getMessageSize(object.point);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/RecordTeachingPointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1be1bc2a5f104421491080126e043f79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string teachingPointName
    trajectory_msgs/JointTrajectoryPoint point 
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordTeachingPointRequest(null);
    if (msg.teachingPointName !== undefined) {
      resolved.teachingPointName = msg.teachingPointName;
    }
    else {
      resolved.teachingPointName = ''
    }

    if (msg.point !== undefined) {
      resolved.point = trajectory_msgs.msg.JointTrajectoryPoint.Resolve(msg.point)
    }
    else {
      resolved.point = new trajectory_msgs.msg.JointTrajectoryPoint()
    }

    return resolved;
    }
};

class RecordTeachingPointResponse {
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
    // Serializes a message object of type RecordTeachingPointResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordTeachingPointResponse
    let len;
    let data = new RecordTeachingPointResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/RecordTeachingPointResponse';
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
    const resolved = new RecordTeachingPointResponse(null);
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
  Request: RecordTeachingPointRequest,
  Response: RecordTeachingPointResponse,
  md5sum() { return 'da402d8c24b24843426eaf136284c37e'; },
  datatype() { return 'torobo_msgs/RecordTeachingPoint'; }
};
