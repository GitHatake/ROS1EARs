# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "torobo_msgs: 29 messages, 26 services")

set(MSG_I_FLAGS "-Itorobo_msgs:/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg;-Itorobo_msgs:/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/melodic/share/trajectory_msgs/cmake/../msg;-Imoveit_msgs:/opt/ros/melodic/share/moveit_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/melodic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/melodic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/melodic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(torobo_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:trajectory_msgs/JointTrajectoryPoint:torobo_msgs/MoveTeachingTrajectoryFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg" "actionlib_msgs/GoalID:sensor_msgs/JointState:actionlib_msgs/GoalStatus:torobo_msgs/MoveTeachingTrajectoryResult:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv" "trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg" "sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg" "actionlib_msgs/GoalID:torobo_msgs/MoveHomePositionGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg" "actionlib_msgs/GoalID:torobo_msgs/MoveTeachingTrajectoryGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg" "sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg" "torobo_msgs/MoveTeachingPointResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv" "sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:sensor_msgs/JointState:torobo_msgs/MoveHomePositionResult:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg" "geometry_msgs/Vector3:moveit_msgs/ContactInformation:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg" "actionlib_msgs/GoalID:torobo_msgs/MoveTeachingTrajectoryActionFeedback:torobo_msgs/MoveTeachingTrajectoryGoal:actionlib_msgs/GoalStatus:sensor_msgs/JointState:trajectory_msgs/JointTrajectoryPoint:torobo_msgs/MoveTeachingTrajectoryActionGoal:torobo_msgs/MoveTeachingTrajectoryActionResult:std_msgs/Header:torobo_msgs/MoveTeachingTrajectoryFeedback:torobo_msgs/MoveTeachingTrajectoryResult"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg" "trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg" "actionlib_msgs/GoalID:torobo_msgs/MoveTeachingPointGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg" "sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg" "trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg" "actionlib_msgs/GoalID:sensor_msgs/JointState:actionlib_msgs/GoalStatus:torobo_msgs/MoveHomePositionGoal:torobo_msgs/MoveHomePositionResult:torobo_msgs/MoveHomePositionActionGoal:torobo_msgs/MoveHomePositionActionResult:std_msgs/Header:torobo_msgs/MoveHomePositionFeedback:torobo_msgs/MoveHomePositionActionFeedback:trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv" "trajectory_msgs/JointTrajectory:trajectory_msgs/JointTrajectoryPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv" "torobo_msgs/CollisionInfoResponse:moveit_msgs/ContactInformation:sensor_msgs/JointState:geometry_msgs/Vector3:torobo_msgs/CollisionInfoRequest:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv" "sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv" "trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv" "torobo_msgs/ToroboJointState:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg" "trajectory_msgs/JointTrajectoryPoint"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg" "sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg" "actionlib_msgs/GoalID:torobo_msgs/MoveTeachingPointFeedback:torobo_msgs/MoveTeachingPointGoal:torobo_msgs/MoveTeachingPointActionResult:actionlib_msgs/GoalStatus:sensor_msgs/JointState:torobo_msgs/MoveTeachingPointActionGoal:std_msgs/Header:torobo_msgs/MoveTeachingPointActionFeedback:trajectory_msgs/JointTrajectoryPoint:torobo_msgs/MoveTeachingPointResult"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg" "trajectory_msgs/JointTrajectoryPoint:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:torobo_msgs/MoveHomePositionFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:torobo_msgs/MoveTeachingPointFeedback:trajectory_msgs/JointTrajectoryPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv" "trajectory_msgs/JointTrajectory:trajectory_msgs/JointTrajectoryPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv" ""
)

get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg" NAME_WE)
add_custom_target(_torobo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "torobo_msgs" "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/ContactInformation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)

### Generating Services
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/ContactInformation.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_cpp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
)

### Generating Module File
_generate_module_cpp(torobo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(torobo_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(torobo_msgs_generate_messages torobo_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_cpp _torobo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(torobo_msgs_gencpp)
add_dependencies(torobo_msgs_gencpp torobo_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS torobo_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/ContactInformation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_msg_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)

### Generating Services
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/ContactInformation.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)
_generate_srv_eus(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
)

### Generating Module File
_generate_module_eus(torobo_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(torobo_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(torobo_msgs_generate_messages torobo_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_eus _torobo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(torobo_msgs_geneus)
add_dependencies(torobo_msgs_geneus torobo_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS torobo_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/ContactInformation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_msg_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)

### Generating Services
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/ContactInformation.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)
_generate_srv_lisp(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
)

### Generating Module File
_generate_module_lisp(torobo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(torobo_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(torobo_msgs_generate_messages torobo_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_lisp _torobo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(torobo_msgs_genlisp)
add_dependencies(torobo_msgs_genlisp torobo_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS torobo_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/ContactInformation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_msg_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)

### Generating Services
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/ContactInformation.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)
_generate_srv_nodejs(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
)

### Generating Module File
_generate_module_nodejs(torobo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(torobo_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(torobo_msgs_generate_messages torobo_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_nodejs _torobo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(torobo_msgs_gennodejs)
add_dependencies(torobo_msgs_gennodejs torobo_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS torobo_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/ContactInformation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_msg_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)

### Generating Services
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg;/opt/ros/melodic/share/moveit_msgs/cmake/../msg/ContactInformation.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv"
  "${MSG_I_FLAGS}"
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/melodic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)
_generate_srv_py(torobo_msgs
  "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
)

### Generating Module File
_generate_module_py(torobo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(torobo_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(torobo_msgs_generate_messages torobo_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg" NAME_WE)
add_dependencies(torobo_msgs_generate_messages_py _torobo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(torobo_msgs_genpy)
add_dependencies(torobo_msgs_genpy torobo_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS torobo_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/torobo_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(torobo_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(torobo_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(torobo_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET trajectory_msgs_generate_messages_cpp)
  add_dependencies(torobo_msgs_generate_messages_cpp trajectory_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(torobo_msgs_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/torobo_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(torobo_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(torobo_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(torobo_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET trajectory_msgs_generate_messages_eus)
  add_dependencies(torobo_msgs_generate_messages_eus trajectory_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(torobo_msgs_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/torobo_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(torobo_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(torobo_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(torobo_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET trajectory_msgs_generate_messages_lisp)
  add_dependencies(torobo_msgs_generate_messages_lisp trajectory_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(torobo_msgs_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/torobo_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(torobo_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(torobo_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(torobo_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET trajectory_msgs_generate_messages_nodejs)
  add_dependencies(torobo_msgs_generate_messages_nodejs trajectory_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(torobo_msgs_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/torobo_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(torobo_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(torobo_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(torobo_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET trajectory_msgs_generate_messages_py)
  add_dependencies(torobo_msgs_generate_messages_py trajectory_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(torobo_msgs_generate_messages_py moveit_msgs_generate_messages_py)
endif()
