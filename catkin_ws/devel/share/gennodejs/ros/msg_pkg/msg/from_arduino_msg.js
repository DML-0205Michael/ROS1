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

class from_arduino_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ax = null;
      this.ay = null;
      this.az = null;
      this.gx = null;
      this.gy = null;
      this.gz = null;
      this.mx = null;
      this.my = null;
      this.mz = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.encoder1 = null;
      this.encoder2 = null;
    }
    else {
      if (initObj.hasOwnProperty('ax')) {
        this.ax = initObj.ax
      }
      else {
        this.ax = 0.0;
      }
      if (initObj.hasOwnProperty('ay')) {
        this.ay = initObj.ay
      }
      else {
        this.ay = 0.0;
      }
      if (initObj.hasOwnProperty('az')) {
        this.az = initObj.az
      }
      else {
        this.az = 0.0;
      }
      if (initObj.hasOwnProperty('gx')) {
        this.gx = initObj.gx
      }
      else {
        this.gx = 0.0;
      }
      if (initObj.hasOwnProperty('gy')) {
        this.gy = initObj.gy
      }
      else {
        this.gy = 0.0;
      }
      if (initObj.hasOwnProperty('gz')) {
        this.gz = initObj.gz
      }
      else {
        this.gz = 0.0;
      }
      if (initObj.hasOwnProperty('mx')) {
        this.mx = initObj.mx
      }
      else {
        this.mx = 0.0;
      }
      if (initObj.hasOwnProperty('my')) {
        this.my = initObj.my
      }
      else {
        this.my = 0.0;
      }
      if (initObj.hasOwnProperty('mz')) {
        this.mz = initObj.mz
      }
      else {
        this.mz = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('encoder1')) {
        this.encoder1 = initObj.encoder1
      }
      else {
        this.encoder1 = 0;
      }
      if (initObj.hasOwnProperty('encoder2')) {
        this.encoder2 = initObj.encoder2
      }
      else {
        this.encoder2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type from_arduino_msg
    // Serialize message field [ax]
    bufferOffset = _serializer.float32(obj.ax, buffer, bufferOffset);
    // Serialize message field [ay]
    bufferOffset = _serializer.float32(obj.ay, buffer, bufferOffset);
    // Serialize message field [az]
    bufferOffset = _serializer.float32(obj.az, buffer, bufferOffset);
    // Serialize message field [gx]
    bufferOffset = _serializer.float32(obj.gx, buffer, bufferOffset);
    // Serialize message field [gy]
    bufferOffset = _serializer.float32(obj.gy, buffer, bufferOffset);
    // Serialize message field [gz]
    bufferOffset = _serializer.float32(obj.gz, buffer, bufferOffset);
    // Serialize message field [mx]
    bufferOffset = _serializer.float32(obj.mx, buffer, bufferOffset);
    // Serialize message field [my]
    bufferOffset = _serializer.float32(obj.my, buffer, bufferOffset);
    // Serialize message field [mz]
    bufferOffset = _serializer.float32(obj.mz, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [encoder1]
    bufferOffset = _serializer.int32(obj.encoder1, buffer, bufferOffset);
    // Serialize message field [encoder2]
    bufferOffset = _serializer.int32(obj.encoder2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type from_arduino_msg
    let len;
    let data = new from_arduino_msg(null);
    // Deserialize message field [ax]
    data.ax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ay]
    data.ay = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [az]
    data.az = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gx]
    data.gx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gy]
    data.gy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gz]
    data.gz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mx]
    data.mx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [my]
    data.my = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mz]
    data.mz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [encoder1]
    data.encoder1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [encoder2]
    data.encoder2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msg_pkg/from_arduino_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db9e644fcaf1f0833ccfae8d80ddb567';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 ax
    float32 ay
    float32 az
    float32 gx
    float32 gy
    float32 gz
    float32 mx
    float32 my
    float32 mz
    float32 roll
    float32 pitch
    float32 yaw
    int32 encoder1
    int32 encoder2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new from_arduino_msg(null);
    if (msg.ax !== undefined) {
      resolved.ax = msg.ax;
    }
    else {
      resolved.ax = 0.0
    }

    if (msg.ay !== undefined) {
      resolved.ay = msg.ay;
    }
    else {
      resolved.ay = 0.0
    }

    if (msg.az !== undefined) {
      resolved.az = msg.az;
    }
    else {
      resolved.az = 0.0
    }

    if (msg.gx !== undefined) {
      resolved.gx = msg.gx;
    }
    else {
      resolved.gx = 0.0
    }

    if (msg.gy !== undefined) {
      resolved.gy = msg.gy;
    }
    else {
      resolved.gy = 0.0
    }

    if (msg.gz !== undefined) {
      resolved.gz = msg.gz;
    }
    else {
      resolved.gz = 0.0
    }

    if (msg.mx !== undefined) {
      resolved.mx = msg.mx;
    }
    else {
      resolved.mx = 0.0
    }

    if (msg.my !== undefined) {
      resolved.my = msg.my;
    }
    else {
      resolved.my = 0.0
    }

    if (msg.mz !== undefined) {
      resolved.mz = msg.mz;
    }
    else {
      resolved.mz = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.encoder1 !== undefined) {
      resolved.encoder1 = msg.encoder1;
    }
    else {
      resolved.encoder1 = 0
    }

    if (msg.encoder2 !== undefined) {
      resolved.encoder2 = msg.encoder2;
    }
    else {
      resolved.encoder2 = 0
    }

    return resolved;
    }
};

module.exports = from_arduino_msg;
