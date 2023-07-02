// Auto-generated. Do not edit!

// (in-package torobo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CollisionInfoRequest = require('../msg/CollisionInfoRequest.js');

//-----------------------------------------------------------

let CollisionInfoResponse = require('../msg/CollisionInfoResponse.js');

//-----------------------------------------------------------

class GetCollisionInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.collision_info_request = null;
    }
    else {
      if (initObj.hasOwnProperty('collision_info_request')) {
        this.collision_info_request = initObj.collision_info_request
      }
      else {
        this.collision_info_request = new CollisionInfoRequest();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCollisionInfoRequest
    // Serialize message field [collision_info_request]
    bufferOffset = CollisionInfoRequest.serialize(obj.collision_info_request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCollisionInfoRequest
    let len;
    let data = new GetCollisionInfoRequest(null);
    // Deserialize message field [collision_info_request]
    data.collision_info_request = CollisionInfoRequest.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CollisionInfoRequest.getMessageSize(object.collision_info_request);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/GetCollisionInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c857681b40404a7551c566ca63b69e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CollisionInfoRequest collision_info_request
    
    ================================================================================
    MSG: torobo_msgs/CollisionInfoRequest
    sensor_msgs/JointState jointState
    uint32 max_contacts
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
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
    const resolved = new GetCollisionInfoRequest(null);
    if (msg.collision_info_request !== undefined) {
      resolved.collision_info_request = CollisionInfoRequest.Resolve(msg.collision_info_request)
    }
    else {
      resolved.collision_info_request = new CollisionInfoRequest()
    }

    return resolved;
    }
};

class GetCollisionInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.collision_info_response = null;
    }
    else {
      if (initObj.hasOwnProperty('collision_info_response')) {
        this.collision_info_response = initObj.collision_info_response
      }
      else {
        this.collision_info_response = new CollisionInfoResponse();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCollisionInfoResponse
    // Serialize message field [collision_info_response]
    bufferOffset = CollisionInfoResponse.serialize(obj.collision_info_response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCollisionInfoResponse
    let len;
    let data = new GetCollisionInfoResponse(null);
    // Deserialize message field [collision_info_response]
    data.collision_info_response = CollisionInfoResponse.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CollisionInfoResponse.getMessageSize(object.collision_info_response);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'torobo_msgs/GetCollisionInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c12beeb1198598970a25063d5afd8be9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CollisionInfoResponse collision_info_response
    
    
    ================================================================================
    MSG: torobo_msgs/CollisionInfoResponse
    bool isColliding
    moveit_msgs/ContactInformation[] contacts
    
    ================================================================================
    MSG: moveit_msgs/ContactInformation
    # Standard ROS header contains information 
    # about the frame in which this 
    # contact is specified
    Header header
    
    # Position of the contact point
    geometry_msgs/Point position
    
    # Normal corresponding to the contact point
    geometry_msgs/Vector3 normal 
    
    # Depth of contact point
    float64 depth
    
    # Name of the first body that is in contact
    # This could be a link or a namespace that represents a body
    string contact_body_1
    uint32 body_type_1
    
    # Name of the second body that is in contact
    # This could be a link or a namespace that represents a body
    string contact_body_2
    uint32 body_type_2
    
    uint32 ROBOT_LINK=0
    uint32 WORLD_OBJECT=1
    uint32 ROBOT_ATTACHED=2
    
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
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCollisionInfoResponse(null);
    if (msg.collision_info_response !== undefined) {
      resolved.collision_info_response = CollisionInfoResponse.Resolve(msg.collision_info_response)
    }
    else {
      resolved.collision_info_response = new CollisionInfoResponse()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCollisionInfoRequest,
  Response: GetCollisionInfoResponse,
  md5sum() { return 'f0626346887ec50a585aed5a146d00dc'; },
  datatype() { return 'torobo_msgs/GetCollisionInfo'; }
};
