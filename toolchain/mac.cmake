# set target architecture, possible values: armv7, armv6 or arm64
set(IOS_TARGET_ARCH arm64)

# set SDK path, should be ok on default installation
execute_process(COMMAND xcrun --sdk iphoneos --show-sdk-path OUTPUT_VARIABLE CMAKE_IOS_SDK_ROOT OUTPUT_STRIP_TRAILING_WHITESPACE)
message(STATUS "CMAKE_IOS_SDK_ROOT: ${CMAKE_IOS_SDK_ROOT}")

# set path of ranlib tool
execute_process(COMMAND xcrun --sdk iphoneos --find ranlib OUTPUT_VARIABLE RANLIB_PATH OUTPUT_STRIP_TRAILING_WHITESPACE)
message(STATUS "RANLIB_PATH: ${RANLIB_PATH}")



set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_FIND_ROOT_PATH ${CMAKE_IOS_SDK_ROOT})
set(__CMAKE_C_COMPILER_ARG1_VAL "-arch ${IOS_TARGET_ARCH} -isysroot ${CMAKE_IOS_SDK_ROOT}")
set(CMAKE_C_COMPILER_ARG1 ${__CMAKE_C_COMPILER_ARG1_VAL})
set(CMAKE_CXX_COMPILER_ARG1 ${__CMAKE_C_COMPILER_ARG1_VAL})
