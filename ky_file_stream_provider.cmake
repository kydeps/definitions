include_guard(GLOBAL)

include(glog.cmake)

KyDep(ky_file_stream_provider
    GIT_REPOSITORY https://github.com/kydeps/ky_file_stream_provider.git
    GIT_TAG 360845b687b67e5f7b1b06c76cb867111c65fdda # main as of 2022-02-06

    ${glog_DEPENDENCY}
)
