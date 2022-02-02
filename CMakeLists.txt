# ==============================================================================
# ===== [BEGIN] KyDeps CMakeLists.txt preamble ===== !!! DO NOT EDIT !!! =======
#
cmake_minimum_required(VERSION 3.22)
set(KYDEPS_LOG_LEVEL VERBOSE)
project(kydeps_definitions)
include(FetchContent)
FetchContent_Declare(
    kydeps_bootstrap
    GIT_REPOSITORY https://github.com/kydeps/bootstrap.git
    GIT_TAG v3.0)
FetchContent_MakeAvailable(kydeps_bootstrap)
#
# ===== [END] KyDeps CMakeLists.txt preamble ===================================
# ==============================================================================

find_program(GIT "git")

execute_process(
    COMMAND_ERROR_IS_FATAL ANY
    WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
    COMMAND ${GIT} remote get-url origin
    OUTPUT_STRIP_TRAILING_WHITESPACE
    OUTPUT_VARIABLE KYDEPS_DEFINITIONS_GIT_REPOSITORY)

execute_process(
    COMMAND_ERROR_IS_FATAL ANY
    WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
    COMMAND ${GIT} rev-parse HEAD
    OUTPUT_STRIP_TRAILING_WHITESPACE
    OUTPUT_VARIABLE KYDEPS_DEFINITIONS_GIT_TAG)

message(
    STATUS
        "
    KYDEPS_DEFINITIONS_GIT_REPOSITORY   = ${KYDEPS_DEFINITIONS_GIT_REPOSITORY}
    KYDEPS_DEFINITIONS_GIT_TAG          = ${KYDEPS_DEFINITIONS_GIT_TAG}
        ")

IncludeGlob("*.cmake")
