// Auto-generated. Do not edit!

// (in-package cv_bridge0.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let tennisball = require('./tennisball.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class tennisballs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.balls = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('balls')) {
        this.balls = initObj.balls
      }
      else {
        this.balls = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type tennisballs
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [balls]
    // Serialize the length for message field [balls]
    bufferOffset = _serializer.uint32(obj.balls.length, buffer, bufferOffset);
    obj.balls.forEach((val) => {
      bufferOffset = tennisball.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type tennisballs
    let len;
    let data = new tennisballs(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [balls]
    // Deserialize array length for message field [balls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.balls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.balls[i] = tennisball.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 12 * object.balls.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cv_bridge0/tennisballs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '059ef9e5c20be95021f1e65fd5fef3c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    cv_bridge0/tennisball[] balls
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: cv_bridge0/tennisball
    float32 x
    float32 y
    float32 yellow
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new tennisballs(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.balls !== undefined) {
      resolved.balls = new Array(msg.balls.length);
      for (let i = 0; i < resolved.balls.length; ++i) {
        resolved.balls[i] = tennisball.Resolve(msg.balls[i]);
      }
    }
    else {
      resolved.balls = []
    }

    return resolved;
    }
};

module.exports = tennisballs;
