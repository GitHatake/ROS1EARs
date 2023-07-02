// Auto-generated. Do not edit!

// (in-package torobo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let moveit_msgs = _finder('moveit_msgs');

//-----------------------------------------------------------

class CollisionInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isColliding = null;
      this.contacts = null;
    }
    else {
      if (initObj.hasOwnProperty('isColliding')) {
        this.isColliding = initObj.isColliding
      }
      else {
        this.isColliding = false;
      }
      if (initObj.hasOwnProperty('contacts')) {
        this.contacts = initObj.contacts
      }
      else {
        this.contacts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisionInfoResponse
    // Serialize message field [isColliding]
    bufferOffset = _serializer.bool(obj.isColliding, buffer, bufferOffset);
    // Serialize message field [contacts]
    // Serialize the length for message field [contacts]
    bufferOffset = _serializer.uint32(obj.contacts.length, buffer, bufferOffset);
    obj.contacts.forEach((val) => {
      bufferOffset = moveit_msgs.msg.ContactInformation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisionInfoResponse
    let len;
    let data = new CollisionInfoResponse(null);
    // Deserialize message field [isColliding]
    data.isColliding = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [contacts]
    // Deserialize array length for message field [contacts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.contacts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.contacts[i] = moveit_msgs.msg.ContactInformation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.contacts.forEach((val) => {
      length += moveit_msgs.msg.ContactInformation.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'torobo_msgs/CollisionInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a47c47e56d53de2ea05d46b23329bd86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CollisionInfoResponse(null);
    if (msg.isColliding !== undefined) {
      resolved.isColliding = msg.isColliding;
    }
    else {
      resolved.isColliding = false
    }

    if (msg.contacts !== undefined) {
      resolved.contacts = new Array(msg.contacts.length);
      for (let i = 0; i < resolved.contacts.length; ++i) {
        resolved.contacts[i] = moveit_msgs.msg.ContactInformation.Resolve(msg.contacts[i]);
      }
    }
    else {
      resolved.contacts = []
    }

    return resolved;
    }
};

module.exports = CollisionInfoResponse;
