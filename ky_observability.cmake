include_guard(GLOBAL)

include(glog.cmake)
include(ky_timer.cmake)

KyDep(ky_observability
    GIT_REPOSITORY https://github.com/kydeps/ky_observability.git
    GIT_TAG 073a6f82962936a88c4a943152b6a2c0ba123b1e # main as of 2022-02-02

    ${glog_DEPENDENCY}
    ${ky_timer_DEPENDENCY}
)
