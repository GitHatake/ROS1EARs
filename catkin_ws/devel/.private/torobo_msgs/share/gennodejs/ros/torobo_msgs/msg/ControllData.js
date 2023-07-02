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

class ControllData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.OriginalJointValue = null;
      this.RealsenseDepth = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('OriginalJointValue')) {
        this.OriginalJointValue = initObj.OriginalJointValue
      }
      else {
        this.OriginalJointValue = [];
      }
      if (initObj.hasOwnProperty('RealsenseDepth')) {
        this.RealsenseDepth = initObj.RealsenseDepth
      }
      else {
        this.RealsenseDepth = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControllData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [OriginalJointValue]
    bufferOffset = _arraySerializer.float64(obj.OriginalJointValue, buffer, bufferOffset, null);
    // Serialize message field [RealsenseDepth]
    bufferOffset = _serializer.float64(obj.RealsenseDepth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControllData
    let len;
    let data = new ControllData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [OriginalJointValue]
    data.OriginalJointValue = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [RealsenseDepth]
    data.RealsenseDepth = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.OriginalJointValue.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'torobo_msgs/ControllData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc555df7797f83d8d79097c136b37e1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64[] OriginalJointValue
    float64 RealsenseDepth
    
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
    const resolved = new ControllData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.OriginalJointValue !== undefined) {
      resolved.OriginalJointValue = msg.OriginalJointValue;
    }
    else {
      resolved.OriginalJointValue = []
    }

    if (msg.RealsenseDepth !== undefined) {
      resolved.RealsenseDepth = msg.RealsenseDepth;
    }
    else {
      resolved.RealsenseDepth = 0.0
    }

    return resolved;
    }
};

module.exports = ControllData;
