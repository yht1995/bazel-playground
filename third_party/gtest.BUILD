cc_library(
    name = "gtest",
    srcs = glob(
        ["googletest/src/*.cc"],
        exclude = ["googletest/src/gtest-all.cc"],
    ),
    hdrs = glob([
        "googletest/include/**/*.h",
        "googletest/src/*.h",
    ]),
    includes = [
        "googletest",
        "googletest/include",
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "gtest_main",
    srcs = ["googletest/src/gtest_main.cc"],
    visibility = ["//visibility:public"],
    deps = [":gtest"],
)

cc_library(
    name = "gmock",
    srcs = glob(
        ["googlemock/src/*.cc"],
        exclude = ["googlemock/src/gmock-all.cc"],
    ),
    hdrs = glob([
        "googlemock/include/**/*.h",
        "googlemock/src/*.h",
    ]),
    includes = ["googlemock/include"],
    deps = [":gtest"],
    visibility = ["//visibility:public"],
)
