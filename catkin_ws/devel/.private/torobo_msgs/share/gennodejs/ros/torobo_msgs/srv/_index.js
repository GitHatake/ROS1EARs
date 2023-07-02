
"use strict";

let SetZeroEffort = require('./SetZeroEffort.js')
let ClearTrajectory = require('./ClearTrajectory.js')
let GetServoState = require('./GetServoState.js')
let CheckCollision = require('./CheckCollision.js')
let GetTeachingTrajectory = require('./GetTeachingTrajectory.js')
let SetPayloadParam = require('./SetPayloadParam.js')
let SendCommonCommand = require('./SendCommonCommand.js')
let GetToroboJointState = require('./GetToroboJointState.js')
let ErrorReset = require('./ErrorReset.js')
let ServoOn = require('./ServoOn.js')
let GetTeachingTrajectoryNames = require('./GetTeachingTrajectoryNames.js')
let DeleteTeachingTrajectory = require('./DeleteTeachingTrajectory.js')
let GetCollisionInfo = require('./GetCollisionInfo.js')
let GetTeachingPointNames = require('./GetTeachingPointNames.js')
let CancelTrajectory = require('./CancelTrajectory.js')
let RecordTeachingTrajectory = require('./RecordTeachingTrajectory.js')
let SetRobotControllerParameter = require('./SetRobotControllerParameter.js')
let SetGeneralOutputRegister = require('./SetGeneralOutputRegister.js')
let GetJointState = require('./GetJointState.js')
let DeleteTeachingPoint = require('./DeleteTeachingPoint.js')
let RecordTeachingPoint = require('./RecordTeachingPoint.js')
let ServoOff = require('./ServoOff.js')
let GetTeachingPoint = require('./GetTeachingPoint.js')
let SetControlMode = require('./SetControlMode.js')
let BrakeOff = require('./BrakeOff.js')
let BrakeOn = require('./BrakeOn.js')

module.exports = {
  SetZeroEffort: SetZeroEffort,
  ClearTrajectory: ClearTrajectory,
  GetServoState: GetServoState,
  CheckCollision: CheckCollision,
  GetTeachingTrajectory: GetTeachingTrajectory,
  SetPayloadParam: SetPayloadParam,
  SendCommonCommand: SendCommonCommand,
  GetToroboJointState: GetToroboJointState,
  ErrorReset: ErrorReset,
  ServoOn: ServoOn,
  GetTeachingTrajectoryNames: GetTeachingTrajectoryNames,
  DeleteTeachingTrajectory: DeleteTeachingTrajectory,
  GetCollisionInfo: GetCollisionInfo,
  GetTeachingPointNames: GetTeachingPointNames,
  CancelTrajectory: CancelTrajectory,
  RecordTeachingTrajectory: RecordTeachingTrajectory,
  SetRobotControllerParameter: SetRobotControllerParameter,
  SetGeneralOutputRegister: SetGeneralOutputRegister,
  GetJointState: GetJointState,
  DeleteTeachingPoint: DeleteTeachingPoint,
  RecordTeachingPoint: RecordTeachingPoint,
  ServoOff: ServoOff,
  GetTeachingPoint: GetTeachingPoint,
  SetControlMode: SetControlMode,
  BrakeOff: BrakeOff,
  BrakeOn: BrakeOn,
};
