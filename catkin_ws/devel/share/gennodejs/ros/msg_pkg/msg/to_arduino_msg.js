// Auto-generated. Do not edit!

// (in-package msg_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class to_arduino_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.M1_speed = null;
      this.M2_speed = null;
      this.M1_encoder_speed = null;
      this.M2_encoder_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('M1_speed')) {
        this.M1_speed = initObj.M1_speed
      }
      else {
        this.M1_speed = 0.0;
      }
      if (initObj.hasOwnProperty('M2_speed')) {
        this.M2_speed = initObj.M2_speed
      }
      else {
        this.M2_speed = 0.0;
      }
      if (initObj.hasOwnProperty('M1_encoder_speed')) {
        this.M1_encoder_speed = initObj.M1_encoder_speed
      }
      else {
        this.M1_encoder_speed = 0;
      }
      if (initObj.hasOwnProperty('M2_encoder_speed')) {
        this.M2_encoder_speed = initObj.M2_encoder_speed
      }
      else {
        this.M2_encoder_speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type to_arduino_msg
    // Serialize message field [M1_speed]
    bufferOffset = _serializer.float32(obj.M1_speed, buffer, bufferOffset);
    // Serialize message field [M2_speed]
    bufferOffset = _serializer.float32(obj.M2_speed, buffer, bufferOffset);
    // Serialize message field [M1_encoder_speed]
    bufferOffset = _serializer.int32(obj.M1_encoder_speed, buffer, bufferOffset);
    // Serialize message field [M2_encoder_speed]
    bufferOffset = _serializer.int32(obj.M2_encoder_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type to_arduino_msg
    let len;
    let data = new to_arduino_msg(null);
    // Deserialize message field [M1_speed]
    data.M1_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [M2_speed]
    data.M2_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [M1_encoder_speed]
    data.M1_encoder_speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [M2_encoder_speed]
    data.M2_encoder_speed = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msg_pkg/to_arduino_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71a226260b511ec21d1286ef6c684eb7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 M1_speed
    float32 M2_speed
    int32 M1_encoder_speed
    int32 M2_encoder_speed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new to_arduino_msg(null);
    if (msg.M1_speed !== undefined) {
      resolved.M1_speed = msg.M1_speed;
    }
    else {
      resolved.M1_speed = 0.0
    }

    if (msg.M2_speed !== undefined) {
      resolved.M2_speed = msg.M2_speed;
    }
    else {
      resolved.M2_speed = 0.0
    }

    if (msg.M1_encoder_speed !== undefined) {
      resolved.M1_encoder_speed = msg.M1_encoder_speed;
    }
    else {
      resolved.M1_encoder_speed = 0
    }

    if (msg.M2_encoder_speed !== undefined) {
      resolved.M2_encoder_speed = msg.M2_encoder_speed;
    }
    else {
      resolved.M2_encoder_speed = 0
    }

    return resolved;
    }
};

module.exports = to_arduino_msg;
