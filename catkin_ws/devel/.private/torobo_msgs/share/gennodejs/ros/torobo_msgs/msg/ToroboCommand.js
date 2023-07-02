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

class ToroboCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timeStamp = null;
      this.wholeOrder = null;
      this.name = null;
      this.jointOrder = null;
      this.value1 = null;
      this.value2 = null;
      this.value3 = null;
      this.value4 = null;
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
      if (initObj.hasOwnProperty('wholeOrder')) {
        this.wholeOrder = initObj.wholeOrder
      }
      else {
        this.wholeOrder = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('jointOrder')) {
        this.jointOrder = initObj.jointOrder
      }
      else {
        this.jointOrder = [];
      }
      if (initObj.hasOwnProperty('value1')) {
        this.value1 = initObj.value1
      }
      else {
        this.value1 = [];
      }
      if (initObj.hasOwnProperty('value2')) {
        this.value2 = initObj.value2
      }
      else {
        this.value2 = [];
      }
      if (initObj.hasOwnProperty('value3')) {
        this.value3 = initObj.value3
      }
      else {
        this.value3 = [];
      }
      if (initObj.hasOwnProperty('value4')) {
        this.value4 = initObj.value4
      }
      else {
        this.value4 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToroboCommand
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint64(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [wholeOrder]
    bufferOffset = _serializer.uint32(obj.wholeOrder, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [jointOrder]
    bufferOffset = _arraySerializer.uint32(obj.jointOrder, buffer, bufferOffset, null);
    // Serialize message field [value1]
    bufferOffset = _arraySerializer.float32(obj.value1, buffer, bufferOffset, null);
    // Serialize message field [value2]
    bufferOffset = _arraySerializer.float32(obj.value2, buffer, bufferOffset, null);
    // Serialize message field [value3]
    bufferOffset = _arraySerializer.float32(obj.value3, buffer, bufferOffset, null);
    // Serialize message field [value4]
    bufferOffset = _arraySerializer.float32(obj.value4, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToroboCommand
    let len;
    let data = new ToroboCommand(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [wholeOrder]
    data.wholeOrder = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [jointOrder]
    data.jointOrder = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [value1]
    data.value1 = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [value2]
    data.value2 = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [value3]
    data.value3 = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [value4]
    data.value4 = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.jointOrder.length;
    length += 4 * object.value1.length;
    length += 4 * object.value2.length;
    length += 4 * object.value3.length;
    length += 4 * object.value4.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'torobo_msgs/ToroboCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bf8e50c61e424559a97586c3168409a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint64 timeStamp
    uint32 wholeOrder
    string[] name
    uint32[] jointOrder
    float32[] value1
    float32[] value2
    float32[] value3
    float32[] value4
    
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
    const resolved = new ToroboCommand(null);
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

    if (msg.wholeOrder !== undefined) {
      resolved.wholeOrder = msg.wholeOrder;
    }
    else {
      resolved.wholeOrder = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.jointOrder !== undefined) {
      resolved.jointOrder = msg.jointOrder;
    }
    else {
      resolved.jointOrder = []
    }

    if (msg.value1 !== undefined) {
      resolved.value1 = msg.value1;
    }
    else {
      resolved.value1 = []
    }

    if (msg.value2 !== undefined) {
      resolved.value2 = msg.value2;
    }
    else {
      resolved.value2 = []
    }

    if (msg.value3 !== undefined) {
      resolved.value3 = msg.value3;
    }
    else {
      resolved.value3 = []
    }

    if (msg.value4 !== undefined) {
      resolved.value4 = msg.value4;
    }
    else {
      resolved.value4 = []
    }

    return resolved;
    }
};

module.exports = ToroboCommand;
