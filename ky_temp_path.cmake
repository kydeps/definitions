include_guard(GLOBAL)

include(glog.cmake)
include(GTest.cmake)

KyDep(ky_temp_path
    GIT_REPOSITORY https://github.com/kydeps/ky_temp_path.git
    GIT_TAG d064995bd2552c46fb3760f09f95969950b89b34 # main as of 2022-02-02

    ${glog_DEPENDENCY}
    ${GTest_DEPENDENCY}
)
