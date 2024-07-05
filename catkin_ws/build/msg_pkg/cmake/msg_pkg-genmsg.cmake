# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "msg_pkg: 3 messages, 0 services")

set(MSG_I_FLAGS "-Imsg_pkg:/home/ubuntu/catkin_ws/src/msg_pkg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(msg_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg" NAME_WE)
add_custom_target(_msg_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msg_pkg" "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg" NAME_WE)
add_custom_target(_msg_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msg_pkg" "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg" NAME_WE)
add_custom_target(_msg_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msg_pkg" "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msg_pkg
)
_generate_msg_cpp(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msg_pkg
)
_generate_msg_cpp(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msg_pkg
)

### Generating Services

### Generating Module File
_generate_module_cpp(msg_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msg_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(msg_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(msg_pkg_generate_messages msg_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_cpp _msg_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_cpp _msg_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_cpp _msg_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msg_pkg_gencpp)
add_dependencies(msg_pkg_gencpp msg_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msg_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msg_pkg
)
_generate_msg_eus(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msg_pkg
)
_generate_msg_eus(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msg_pkg
)

### Generating Services

### Generating Module File
_generate_module_eus(msg_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msg_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(msg_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(msg_pkg_generate_messages msg_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_eus _msg_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_eus _msg_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_eus _msg_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msg_pkg_geneus)
add_dependencies(msg_pkg_geneus msg_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msg_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msg_pkg
)
_generate_msg_lisp(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msg_pkg
)
_generate_msg_lisp(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msg_pkg
)

### Generating Services

### Generating Module File
_generate_module_lisp(msg_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msg_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(msg_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(msg_pkg_generate_messages msg_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_lisp _msg_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_lisp _msg_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_lisp _msg_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msg_pkg_genlisp)
add_dependencies(msg_pkg_genlisp msg_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msg_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msg_pkg
)
_generate_msg_nodejs(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msg_pkg
)
_generate_msg_nodejs(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msg_pkg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(msg_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msg_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(msg_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(msg_pkg_generate_messages msg_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_nodejs _msg_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_nodejs _msg_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_nodejs _msg_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msg_pkg_gennodejs)
add_dependencies(msg_pkg_gennodejs msg_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msg_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_pkg
)
_generate_msg_py(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_pkg
)
_generate_msg_py(msg_pkg
  "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_pkg
)

### Generating Services

### Generating Module File
_generate_module_py(msg_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(msg_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(msg_pkg_generate_messages msg_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/carry.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_py _msg_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/from_arduino_msg.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_py _msg_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/msg_pkg/msg/to_arduino_msg.msg" NAME_WE)
add_dependencies(msg_pkg_generate_messages_py _msg_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msg_pkg_genpy)
add_dependencies(msg_pkg_genpy msg_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msg_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msg_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msg_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(msg_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msg_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msg_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(msg_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msg_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msg_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(msg_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msg_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msg_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(msg_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(msg_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
