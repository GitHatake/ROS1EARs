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

class ToroboJointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timeStamp = null;
      this.hostTimeStamp = null;
      this.name = null;
      this.type = null;
      this.comStatus = null;
      this.systemMode = null;
      this.ctrlMode = null;
      this.errorWarningStatus = null;
      this.trjStatus = null;
      this.trjViaRemain = null;
      this.refCurrent = null;
      this.refPosition = null;
      this.refVelocity = null;
      this.refAcceleration = null;
      this.refEffort = null;
      this.current = null;
      this.position = null;
      this.velocity = null;
      this.outConvInVelocity = null;
      this.acceleration = null;
      this.outConvInAcceleration = null;
      this.effort = null;
      this.temperature = null;
      this.general_0 = null;
      this.general_1 = null;
      this.general_2 = null;
      this.general_3 = null;
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
      if (initObj.hasOwnProperty('hostTimeStamp')) {
        this.hostTimeStamp = initObj.hostTimeStamp
      }
      else {
        this.hostTimeStamp = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = [];
      }
      if (initObj.hasOwnProperty('comStatus')) {
        this.comStatus = initObj.comStatus
      }
      else {
        this.comStatus = [];
      }
      if (initObj.hasOwnProperty('systemMode')) {
        this.systemMode = initObj.systemMode
      }
      else {
        this.systemMode = [];
      }
      if (initObj.hasOwnProperty('ctrlMode')) {
        this.ctrlMode = initObj.ctrlMode
      }
      else {
        this.ctrlMode = [];
      }
      if (initObj.hasOwnProperty('errorWarningStatus')) {
        this.errorWarningStatus = initObj.errorWarningStatus
      }
      else {
        this.errorWarningStatus = [];
      }
      if (initObj.hasOwnProperty('trjStatus')) {
        this.trjStatus = initObj.trjStatus
      }
      else {
        this.trjStatus = [];
      }
      if (initObj.hasOwnProperty('trjViaRemain')) {
        this.trjViaRemain = initObj.trjViaRemain
      }
      else {
        this.trjViaRemain = [];
      }
      if (initObj.hasOwnProperty('refCurrent')) {
        this.refCurrent = initObj.refCurrent
      }
      else {
        this.refCurrent = [];
      }
      if (initObj.hasOwnProperty('refPosition')) {
        this.refPosition = initObj.refPosition
      }
      else {
        this.refPosition = [];
      }
      if (initObj.hasOwnProperty('refVelocity')) {
        this.refVelocity = initObj.refVelocity
      }
      else {
        this.refVelocity = [];
      }
      if (initObj.hasOwnProperty('refAcceleration')) {
        this.refAcceleration = initObj.refAcceleration
      }
      else {
        this.refAcceleration = [];
      }
      if (initObj.hasOwnProperty('refEffort')) {
        this.refEffort = initObj.refEffort
      }
      else {
        this.refEffort = [];
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('outConvInVelocity')) {
        this.outConvInVelocity = initObj.outConvInVelocity
      }
      else {
        this.outConvInVelocity = [];
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = [];
      }
      if (initObj.hasOwnProperty('outConvInAcceleration')) {
        this.outConvInAcceleration = initObj.outConvInAcceleration
      }
      else {
        this.outConvInAcceleration = [];
      }
      if (initObj.hasOwnProperty('effort')) {
        this.effort = initObj.effort
      }
      else {
        this.effort = [];
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = [];
      }
      if (initObj.hasOwnProperty('general_0')) {
        this.general_0 = initObj.general_0
      }
      else {
        this.general_0 = [];
      }
      if (initObj.hasOwnProperty('general_1')) {
        this.general_1 = initObj.general_1
      }
      else {
        this.general_1 = [];
      }
      if (initObj.hasOwnProperty('general_2')) {
        this.general_2 = initObj.general_2
      }
      else {
        this.general_2 = [];
      }
      if (initObj.hasOwnProperty('general_3')) {
        this.general_3 = initObj.general_3
      }
      else {
        this.general_3 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToroboJointState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint64(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [hostTimeStamp]
    bufferOffset = _serializer.uint64(obj.hostTimeStamp, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [type]
    bufferOffset = _arraySerializer.uint32(obj.type, buffer, bufferOffset, null);
    // Serialize message field [comStatus]
    bufferOffset = _arraySerializer.uint32(obj.comStatus, buffer, bufferOffset, null);
    // Serialize message field [systemMode]
    bufferOffset = _arraySerializer.uint32(obj.systemMode, buffer, bufferOffset, null);
    // Serialize message field [ctrlMode]
    bufferOffset = _arraySerializer.uint32(obj.ctrlMode, buffer, bufferOffset, null);
    // Serialize message field [errorWarningStatus]
    bufferOffset = _arraySerializer.uint64(obj.errorWarningStatus, buffer, bufferOffset, null);
    // Serialize message field [trjStatus]
    bufferOffset = _arraySerializer.uint32(obj.trjStatus, buffer, bufferOffset, null);
    // Serialize message field [trjViaRemain]
    bufferOffset = _arraySerializer.uint32(obj.trjViaRemain, buffer, bufferOffset, null);
    // Serialize message field [refCurrent]
    bufferOffset = _arraySerializer.float64(obj.refCurrent, buffer, bufferOffset, null);
    // Serialize message field [refPosition]
    bufferOffset = _arraySerializer.float64(obj.refPosition, buffer, bufferOffset, null);
    // Serialize message field [refVelocity]
    bufferOffset = _arraySerializer.float64(obj.refVelocity, buffer, bufferOffset, null);
    // Serialize message field [refAcceleration]
    bufferOffset = _arraySerializer.float64(obj.refAcceleration, buffer, bufferOffset, null);
    // Serialize message field [refEffort]
    bufferOffset = _arraySerializer.float64(obj.refEffort, buffer, bufferOffset, null);
    // Serialize message field [current]
    bufferOffset = _arraySerializer.float64(obj.current, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float64(obj.velocity, buffer, bufferOffset, null);
    // Serialize message field [outConvInVelocity]
    bufferOffset = _arraySerializer.float64(obj.outConvInVelocity, buffer, bufferOffset, null);
    // Serialize message field [acceleration]
    bufferOffset = _arraySerializer.float64(obj.acceleration, buffer, bufferOffset, null);
    // Serialize message field [outConvInAcceleration]
    bufferOffset = _arraySerializer.float64(obj.outConvInAcceleration, buffer, bufferOffset, null);
    // Serialize message field [effort]
    bufferOffset = _arraySerializer.float64(obj.effort, buffer, bufferOffset, null);
    // Serialize message field [temperature]
    bufferOffset = _arraySerializer.float64(obj.temperature, buffer, bufferOffset, null);
    // Serialize message field [general_0]
    bufferOffset = _arraySerializer.float64(obj.general_0, buffer, bufferOffset, null);
    // Serialize message field [general_1]
    bufferOffset = _arraySerializer.float64(obj.general_1, buffer, bufferOffset, null);
    // Serialize message field [general_2]
    bufferOffset = _arraySerializer.float64(obj.general_2, buffer, bufferOffset, null);
    // Serialize message field [general_3]
    bufferOffset = _arraySerializer.float64(obj.general_3, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToroboJointState
    let len;
    let data = new ToroboJointState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [hostTimeStamp]
    data.hostTimeStamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [type]
    data.type = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [comStatus]
    data.comStatus = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [systemMode]
    data.systemMode = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [ctrlMode]
    data.ctrlMode = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [errorWarningStatus]
    data.errorWarningStatus = _arrayDeserializer.uint64(buffer, bufferOffset, null)
    // Deserialize message field [trjStatus]
    data.trjStatus = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [trjViaRemain]
    data.trjViaRemain = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [refCurrent]
    data.refCurrent = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [refPosition]
    data.refPosition = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [refVelocity]
    data.refVelocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [refAcceleration]
    data.refAcceleration = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [refEffort]
    data.refEffort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [current]
    data.current = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [outConvInVelocity]
    data.outConvInVelocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [acceleration]
    data.acceleration = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [outConvInAcceleration]
    data.outConvInAcceleration = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [effort]
    data.effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [temperature]
    data.temperature = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [general_0]
    data.general_0 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [general_1]
    data.general_1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [general_2]
    data.general_2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [general_3]
    data.general_3 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.type.length;
    length += 4 * object.comStatus.length;
    length += 4 * object.systemMode.length;
    length += 4 * object.ctrlMode.length;
    length += 8 * object.errorWarningStatus.length;
    length += 4 * object.trjStatus.length;
    length += 4 * object.trjViaRemain.length;
    length += 8 * object.refCurrent.length;
    length += 8 * object.refPosition.length;
    length += 8 * object.refVelocity.length;
    length += 8 * object.refAcceleration.length;
    length += 8 * object.refEffort.length;
    length += 8 * object.current.length;
    length += 8 * object.position.length;
    length += 8 * object.velocity.length;
    length += 8 * object.outConvInVelocity.length;
    length += 8 * object.acceleration.length;
    length += 8 * object.outConvInAcceleration.length;
    length += 8 * object.effort.length;
    length += 8 * object.temperature.length;
    length += 8 * object.general_0.length;
    length += 8 * object.general_1.length;
    length += 8 * object.general_2.length;
    length += 8 * object.general_3.length;
    return length + 116;
  }

  static datatype() {
    // Returns string type for a message object
    return 'torobo_msgs/ToroboJointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5d3c515466b817694ef73e566496757';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint64 timeStamp
    uint64 hostTimeStamp
    string[] name
    uint32[] type
    uint32[] comStatus
    uint32[] systemMode
    uint32[] ctrlMode
    uint64[] errorWarningStatus
    uint32[] trjStatus
    uint32[] trjViaRemain
    float64[] refCurrent
    float64[] refPosition
    float64[] refVelocity
    float64[] refAcceleration
    float64[] refEffort
    float64[] current
    float64[] position
    float64[] velocity
    float64[] outConvInVelocity
    float64[] acceleration
    float64[] outConvInAcceleration
    float64[] effort
    float64[] temperature
    float64[] general_0
    float64[] general_1
    float64[] general_2
    float64[] general_3
    
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
    const resolved = new ToroboJointState(null);
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

    if (msg.hostTimeStamp !== undefined) {
      resolved.hostTimeStamp = msg.hostTimeStamp;
    }
    else {
      resolved.hostTimeStamp = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = []
    }

    if (msg.comStatus !== undefined) {
      resolved.comStatus = msg.comStatus;
    }
    else {
      resolved.comStatus = []
    }

    if (msg.systemMode !== undefined) {
      resolved.systemMode = msg.systemMode;
    }
    else {
      resolved.systemMode = []
    }

    if (msg.ctrlMode !== undefined) {
      resolved.ctrlMode = msg.ctrlMode;
    }
    else {
      resolved.ctrlMode = []
    }

    if (msg.errorWarningStatus !== undefined) {
      resolved.errorWarningStatus = msg.errorWarningStatus;
    }
    else {
      resolved.errorWarningStatus = []
    }

    if (msg.trjStatus !== undefined) {
      resolved.trjStatus = msg.trjStatus;
    }
    else {
      resolved.trjStatus = []
    }

    if (msg.trjViaRemain !== undefined) {
      resolved.trjViaRemain = msg.trjViaRemain;
    }
    else {
      resolved.trjViaRemain = []
    }

    if (msg.refCurrent !== undefined) {
      resolved.refCurrent = msg.refCurrent;
    }
    else {
      resolved.refCurrent = []
    }

    if (msg.refPosition !== undefined) {
      resolved.refPosition = msg.refPosition;
    }
    else {
      resolved.refPosition = []
    }

    if (msg.refVelocity !== undefined) {
      resolved.refVelocity = msg.refVelocity;
    }
    else {
      resolved.refVelocity = []
    }

    if (msg.refAcceleration !== undefined) {
      resolved.refAcceleration = msg.refAcceleration;
    }
    else {
      resolved.refAcceleration = []
    }

    if (msg.refEffort !== undefined) {
      resolved.refEffort = msg.refEffort;
    }
    else {
      resolved.refEffort = []
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = []
    }

    if (msg.outConvInVelocity !== undefined) {
      resolved.outConvInVelocity = msg.outConvInVelocity;
    }
    else {
      resolved.outConvInVelocity = []
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = msg.acceleration;
    }
    else {
      resolved.acceleration = []
    }

    if (msg.outConvInAcceleration !== undefined) {
      resolved.outConvInAcceleration = msg.outConvInAcceleration;
    }
    else {
      resolved.outConvInAcceleration = []
    }

    if (msg.effort !== undefined) {
      resolved.effort = msg.effort;
    }
    else {
      resolved.effort = []
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = []
    }

    if (msg.general_0 !== undefined) {
      resolved.general_0 = msg.general_0;
    }
    else {
      resolved.general_0 = []
    }

    if (msg.general_1 !== undefined) {
      resolved.general_1 = msg.general_1;
    }
    else {
      resolved.general_1 = []
    }

    if (msg.general_2 !== undefined) {
      resolved.general_2 = msg.general_2;
    }
    else {
      resolved.general_2 = []
    }

    if (msg.general_3 !== undefined) {
      resolved.general_3 = msg.general_3;
    }
    else {
      resolved.general_3 = []
    }

    return resolved;
    }
};

module.exports = ToroboJointState;
