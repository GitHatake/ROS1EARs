// Auto-generated. Do not edit!

// (in-package torobo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ToroboDynamics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timeStamp = null;
      this.name = null;
      this.gravity_compensation_effort = null;
      this.ref_dynamics_effort = null;
      this.cur_dynamics_effort = null;
      this.inertia_diagonal = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('gravity_compensation_effort')) {
        this.gravity_compensation_effort = initObj.gravity_compensation_effort
      }
      else {
        this.gravity_compensation_effort = [];
      }
      if (initObj.hasOwnProperty('ref_dynamics_effort')) {
        this.ref_dynamics_effort = initObj.ref_dynamics_effort
      }
      else {
        this.ref_dynamics_effort = [];
      }
      if (initObj.hasOwnProperty('cur_dynamics_effort')) {
        this.cur_dynamics_effort = initObj.cur_dynamics_effort
      }
      else {
        this.cur_dynamics_effort = [];
      }
      if (initObj.hasOwnProperty('inertia_diagonal')) {
        this.inertia_diagonal = initObj.inertia_diagonal
      }
      else {
        this.inertia_diagonal = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToroboDynamics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint64(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [gravity_compensation_effort]
    bufferOffset = _arraySerializer.float64(obj.gravity_compensation_effort, buffer, bufferOffset, null);
    // Serialize message field [ref_dynamics_effort]
    bufferOffset = _arraySerializer.float64(obj.ref_dynamics_effort, buffer, bufferOffset, null);
    // Serialize message field [cur_dynamics_effort]
    bufferOffset = _arraySerializer.float64(obj.cur_dynamics_effort, buffer, bufferOffset, null);
    // Serialize message field [inertia_diagonal]
    bufferOffset = _arraySerializer.float64(obj.inertia_diagonal, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToroboDynamics
    let len;
    let data = new ToroboDynamics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [gravity_compensation_effort]
    data.gravity_compensation_effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ref_dynamics_effort]
    data.ref_dynamics_effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [cur_dynamics_effort]
    data.cur_dynamics_effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [inertia_diagonal]
    data.inertia_diagonal = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.gravity_compensation_effort.length;
    length += 8 * object.ref_dynamics_effort.length;
    length += 8 * object.cur_dynamics_effort.length;
    length += 8 * object.inertia_diagonal.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'torobo_msgs/ToroboDynamics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ddf478c1627240b10931b0b2684ea858';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint64 timeStamp
    string[] name
    float64[] gravity_compensation_effort
    float64[] ref_dynamics_effort
    float64[] cur_dynamics_effort
    float64[] inertia_diagonal
    
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
    const resolved = new ToroboDynamics(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.gravity_compensation_effort !== undefined) {
      resolved.gravity_compensation_effort = msg.gravity_compensation_effort;
    }
    else {
      resolved.gravity_compensation_effort = []
    }

    if (msg.ref_dynamics_effort !== undefined) {
      resolved.ref_dynamics_effort = msg.ref_dynamics_effort;
    }
    else {
      resolved.ref_dynamics_effort = []
    }

    if (msg.cur_dynamics_effort !== undefined) {
      resolved.cur_dynamics_effort = msg.cur_dynamics_effort;
    }
    else {
      resolved.cur_dynamics_effort = []
    }

    if (msg.inertia_diagonal !== undefined) {
      resolved.inertia_diagonal = msg.inertia_diagonal;
    }
    else {
      resolved.inertia_diagonal = []
    }

    return resolved;
    }
};

module.exports = ToroboDynamics;
