# Install script for directory: /home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/aokilablinuxws/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aokilablinuxws/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aokilablinuxws/catkin_ws/install" TYPE PROGRAM FILES "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aokilablinuxws/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aokilablinuxws/catkin_ws/install" TYPE PROGRAM FILES "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aokilablinuxws/catkin_ws/install/setup.bash;/home/aokilablinuxws/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aokilablinuxws/catkin_ws/install" TYPE FILE FILES
    "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/setup.bash"
    "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aokilablinuxws/catkin_ws/install/setup.sh;/home/aokilablinuxws/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aokilablinuxws/catkin_ws/install" TYPE FILE FILES
    "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/setup.sh"
    "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aokilablinuxws/catkin_ws/install/setup.zsh;/home/aokilablinuxws/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aokilablinuxws/catkin_ws/install" TYPE FILE FILES
    "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/setup.zsh"
    "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/aokilablinuxws/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/aokilablinuxws/catkin_ws/install" TYPE FILE FILES "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/torobo_msgs/msg" TYPE FILE FILES
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoRequest.msg"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CollisionInfoResponse.msg"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboJointState.msg"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboDynamics.msg"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ToroboCommand.msg"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/test_message.msg"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/ControllData.msg"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/msg/CalculateData.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/torobo_msgs/srv" TYPE FILE FILES
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CheckCollision.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingPoint.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/DeleteTeachingTrajectory.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetCollisionInfo.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetJointState.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetServoState.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPoint.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingPointNames.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectory.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetTeachingTrajectoryNames.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/GetToroboJointState.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingPoint.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/RecordTeachingTrajectory.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SendCommonCommand.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ErrorReset.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOff.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/BrakeOn.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOff.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ServoOn.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetControlMode.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetPayloadParam.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetZeroEffort.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/ClearTrajectory.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/CancelTrajectory.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetRobotControllerParameter.srv"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/srv/SetGeneralOutputRegister.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/torobo_msgs/action" TYPE FILE FILES
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/action/MoveHomePosition.action"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/action/MoveTeachingPoint.action"
    "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/action/MoveTeachingTrajectory.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/torobo_msgs/msg" TYPE FILE FILES
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionAction.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionGoal.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionResult.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionActionFeedback.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionGoal.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionResult.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveHomePositionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/torobo_msgs/msg" TYPE FILE FILES
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointAction.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionGoal.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionResult.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointActionFeedback.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointGoal.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointResult.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingPointFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/torobo_msgs/msg" TYPE FILE FILES
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryAction.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionGoal.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionResult.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryActionFeedback.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryGoal.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryResult.msg"
    "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/torobo_msgs/msg/MoveTeachingTrajectoryFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/torobo_msgs/cmake" TYPE FILE FILES "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/torobo_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/include/torobo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/roseus/ros/torobo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/common-lisp/ros/torobo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/share/gennodejs/ros/torobo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/lib/python2.7/dist-packages/torobo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/aokilablinuxws/catkin_ws/devel/.private/torobo_msgs/lib/python2.7/dist-packages/torobo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/torobo_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/torobo_msgs/cmake" TYPE FILE FILES "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/torobo_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/torobo_msgs/cmake" TYPE FILE FILES
    "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/torobo_msgsConfig.cmake"
    "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/catkin_generated/installspace/torobo_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/torobo_msgs" TYPE FILE FILES "/home/aokilablinuxws/catkin_ws/src/torobo_robot/torobo_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/aokilablinuxws/catkin_ws/build/torobo_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/aokilablinuxws/catkin_ws/build/torobo_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
