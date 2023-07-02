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

class test_message {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timeStamp = null;
      this.test_float1 = null;
      this.test_float2 = null;
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
      if (initObj.hasOwnProperty('test_float1')) {
        this.test_float1 = initObj.test_float1
      }
      else {
        this.test_float1 = 0.0;
      }
      if (initObj.hasOwnProperty('test_float2')) {
        this.test_float2 = initObj.test_float2
      }
      else {
        this.test_float2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type test_message
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint64(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [test_float1]
    bufferOffset = _serializer.float64(obj.test_float1, buffer, bufferOffset);
    // Serialize message field [test_float2]
    bufferOffset = _serializer.float64(obj.test_float2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type test_message
    let len;
    let data = new test_message(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [test_float1]
    data.test_float1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [test_float2]
    data.test_float2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'torobo_msgs/test_message';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96068ba7517aeb29192183e2d4f6c968';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint64 timeStamp
    float64 test_float1
    float64 test_float2
    
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
    const resolved = new test_message(null);
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

    if (msg.test_float1 !== undefined) {
      resolved.test_float1 = msg.test_float1;
    }
    else {
      resolved.test_float1 = 0.0
    }

    if (msg.test_float2 !== undefined) {
      resolved.test_float2 = msg.test_float2;
    }
    else {
      resolved.test_float2 = 0.0
    }

    return resolved;
    }
};

module.exports = test_message;
