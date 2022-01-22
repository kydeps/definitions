# ==============================================================================
# ===== [BEGIN] KyDeps CMakeLists.txt preamble ===== !!! DO NOT EDIT !!! =======
#
cmake_minimum_required(VERSION 3.22)
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

IncludeGlob("*.cmake")
