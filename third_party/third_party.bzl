def load_third_party_libraries():
    native.new_http_archive(
        name = "jsoncpp_archive",
        build_file = "third_party/jsoncpp.BUILD",
        sha256 = "07d34db40593d257324ec5fb9debc4dc33f29f8fb44e33a2eeb35503e61d0fe2",
        strip_prefix = "jsoncpp-11086dd6a7eba04289944367ca82cea71299ed70",
        urls = [
            "http://bazel-mirror.storage.googleapis.com/github.com/open-source-parsers/jsoncpp/archive/11086dd6a7eba04289944367ca82cea71299ed70.tar.gz",
            "http://github.com/open-source-parsers/jsoncpp/archive/11086dd6a7eba04289944367ca82cea71299ed70.tar.gz",
        ],
    )

    native.new_http_archive(
        name = "fmt_archive",
        build_file = "third_party/fmt.BUILD",
        sha256 = "4c9af0dc919a8ae7022b44e1a03c435e42d65c866f44667d8d920d342b098550",
        strip_prefix = "fmt-3.0.1",
        url = "http://github.com/fmtlib/fmt/releases/download/3.0.1/fmt-3.0.1.zip",
    )

    native.new_http_archive(
        name = "benchmark_archive",
        build_file = "third_party/benchmark.BUILD",
        sha256 = "3f5321836cf531e621e0187ccbb1d836cd909994ed00c102a41385cbc1254e4e",
        strip_prefix = "benchmark-1.1.0",
        url = "https://github.com/google/benchmark/archive/v1.1.0.zip",
    )

    native.new_http_archive(
        name = "gtest_archive",
        build_file = "third_party/gtest.BUILD",
        sha256 = "f3ed3b58511efd272eb074a3a6d6fb79d7c2e6a0e374323d1e6bcbcc1ef141bf",
        strip_prefix = "googletest-release-1.8.0",
        url = "https://github.com/google/googletest/archive/release-1.8.0.zip",
    )  

    native.new_http_archive(
        name = "eigen_archive",
        build_file = "third_party/eigen.BUILD",
        sha256 = "47cc7d7f229d7ea3ee6adb2015b23bff81b5bc66e292e44fb7dee34a9230556e",
        strip_prefix = "eigen-eigen-67e894c6cd8f",
        url = "http://bitbucket.org/eigen/eigen/get/3.3.3.zip",
    )  

    native.new_http_archive(
        name = "ceres_archive",
        build_file = "third_party/ceres.BUILD",
        sha256 = "745bfed55111e086954126b748eb9efe20e30be5b825c6dec3c525cf20afc895",
        strip_prefix = "ceres-solver-1.12.0",
        url = "http://ceres-solver.org/ceres-solver-1.12.0.tar.gz",
    )  

    native.http_archive(
        name = "gflags_archive",
        sha256 = "99f9e8b63ea53e4b23f0fd0f68a6f1e397d5512be36716c17cc75966a90f0d57",
        strip_prefix = "gflags-2.2.0",
        url = "https://github.com/gflags/gflags/archive/v2.2.0.zip",
    )  
