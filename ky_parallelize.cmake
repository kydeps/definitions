include_guard(GLOBAL)

include(glog.cmake)

KyDep(ky_parallelize
    GIT_REPOSITORY https://github.com/kydeps/ky_parallelize.git
    GIT_TAG a76e7f6ffde9d78fa6ddb7750b35828fdc1fb4ce # main as of 2022-02-06

    ${glog_DEPENDENCY}
)
