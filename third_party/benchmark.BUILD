cc_library(
    name = "google_benchmark",
    srcs = glob([
        "include/**/*.h",
        "src/*.h",
        "src/*.cc",
    ]),
    hdrs = glob(["include/**/*.h"]),
    copts = [
        "-DHAVE_STD_REGEX",
    ],
    includes = ["include"],
    visibility = ["//visibility:public"],
)

[cc_test(
    name = "google_benchmark.test." + f[5:-3],
    srcs = [f] + glob([
        "test/*.h",
        "test/output_test_helper.cc",
    ]),
    copts = [
        "-DHAVE_STD_REGEX",
    ],
    deps = [":google_benchmark"],
) for f in glob(
    [
        "test/*.cc",
    ],
    exclude = [
        "test/cxx03_test.cc",
        "test/output_test_helper.cc",
    ],
)]
