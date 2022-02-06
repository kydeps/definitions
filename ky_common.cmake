include_guard(GLOBAL)

include(glog.cmake)
include(GTest.cmake)

KyDep(ky_common
    GIT_REPOSITORY https://github.com/kydeps/ky_common.git
    GIT_TAG 899ce788a5bc9abd1f205f5698278558d1243304 # main as of 2022-02-06

    ${glog_DEPENDENCY}
    ${GTest_DEPENDENCY}
)
