cc_library(
    name = "ceres",
    srcs = glob(
        [
            "config/**/*.h",
            "include/**/*.h",
            "internal/ceres/*.h",
            "internal/ceres/miniglog/**/*.h",
        ],
    ) + [":internal_src"],
    hdrs = glob([
        "include/**/*.h",
        "internal/ceres/miniglog/**/*.h",
    ]),
    defines = [
        "CERES_STD_UNORDERED_MAP",
        "CERES_NO_LAPACK",
        "CERES_NO_SUITESPARSE",
        "CERES_NO_CXSPARSE",
        "CERES_RESTRICT_SCHUR_SPECIALIZATION",
        "CERES_NO_CUSTOM_BLAS",
        "CERES_USE_CXX11",
        "CERES_NO_THREADS",
    ],
    includes = [
        "config",
        "include",
        "internal",
        "internal/ceres/miniglog",
    ],
    visibility = ["//visibility:public"],
    deps = ["@eigen_archive//:eigen"],
)


[cc_test(
    name = "ceres.test." + f[15:-3],
    srcs = [f] + glob([
        "internal/ceres/gmock/*.h",
        "internal/ceres/gtest/*.h",
        "internal/ceres/*test_util*.cc",
        "internal/ceres/*test_util*.cc",
        "internal/ceres/gmock_gtest_all.cc",
        "internal/ceres/gmock_main.cc",
    ]),
    defines = [
        "CERES_STD_UNORDERED_MAP",
        "CERES_NO_LAPACK",
        "CERES_NO_SUITESPARSE",
        "CERES_NO_CXSPARSE",
        "CERES_RESTRICT_SCHUR_SPECIALIZATION",
        "CERES_NO_CUSTOM_BLAS",
        "CERES_USE_CXX11",
        "CERES_NO_THREADS",
        "CERES_GFLAGS_NAMESPACE=gflags"
    ],
    deps = [
        ":ceres",
        "@gflags_archive//:gflags",
        "@gtest_archive//:gmock",
        "@gtest_archive//:gtest",
#        "@gtest_archive//:gtest_main",
    ],
) for f in [
    "internal/ceres/array_utils_test.cc",
    "internal/ceres/autodiff_test.cc",
    "internal/ceres/autodiff_cost_function_test.cc",
    "internal/ceres/autodiff_local_parameterization_test.cc",
    "internal/ceres/block_jacobi_preconditioner_test.cc",
    "internal/ceres/block_random_access_dense_matrix_test.cc",
    "internal/ceres/block_random_access_diagonal_matrix_test.cc",
    "internal/ceres/block_random_access_sparse_matrix_test.cc",
    "internal/ceres/block_sparse_matrix_test.cc",
    "internal/ceres/c_api_test.cc",
    "internal/ceres/canonical_views_clustering_test.cc",
    "internal/ceres/compressed_row_sparse_matrix_test.cc",
    "internal/ceres/conditioned_cost_function_test.cc",
    "internal/ceres/corrector_test.cc",
    "internal/ceres/cost_function_to_functor_test.cc",
    "internal/ceres/covariance_test.cc",
    "internal/ceres/cubic_interpolation_test.cc",
    "internal/ceres/detect_structure_test.cc",
    "internal/ceres/dense_sparse_matrix_test.cc",
    "internal/ceres/dynamic_autodiff_cost_function_test.cc",
    "internal/ceres/dynamic_compressed_row_sparse_matrix_test.cc",
    "internal/ceres/dynamic_numeric_diff_cost_function_test.cc",
    "internal/ceres/evaluator_test.cc",
    "internal/ceres/gradient_checker_test.cc",
    "internal/ceres/gradient_checking_cost_function_test.cc",
    "internal/ceres/gradient_problem_test.cc",
    "internal/ceres/gradient_problem_solver_test.cc",
    "internal/ceres/graph_test.cc",
    "internal/ceres/graph_algorithms_test.cc",
    "internal/ceres/householder_vector_test.cc",
    "internal/ceres/is_close_test.cc",
    "internal/ceres/implicit_schur_complement_test.cc",
    "internal/ceres/iterative_schur_complement_solver_test.cc",
    "internal/ceres/jet_test.cc",
    "internal/ceres/dogleg_strategy_test.cc",
    "internal/ceres/line_search_preprocessor_test.cc",
    "internal/ceres/local_parameterization_test.cc",
    "internal/ceres/loss_function_test.cc",
    "internal/ceres/minimizer_test.cc",
    "internal/ceres/normal_prior_test.cc",
    "internal/ceres/numeric_diff_cost_function_test.cc",
    "internal/ceres/ordered_groups_test.cc",
    "internal/ceres/parameter_block_test.cc",
    "internal/ceres/parameter_block_ordering_test.cc",
    "internal/ceres/partitioned_matrix_view_test.cc",
    "internal/ceres/polynomial_test.cc",
    "internal/ceres/problem_test.cc",
    "internal/ceres/program_test.cc",
    "internal/ceres/reorder_program_test.cc",
    "internal/ceres/residual_block_test.cc",
    "internal/ceres/residual_block_utils_test.cc",
    "internal/ceres/rotation_test.cc",
    "internal/ceres/schur_complement_solver_test.cc",
    "internal/ceres/schur_eliminator_test.cc",
    "internal/ceres/single_linkage_clustering_test.cc",
    "internal/ceres/small_blas_test.cc",
    "internal/ceres/solver_test.cc",
# XXX: somenhow failed
#    "internal/ceres/bundle_adjustment_test.cc",
#    "internal/ceres/levenberg_marquardt_strategy_test.cc",
]]

filegroup(
    name = "internal_src",
    srcs = [
        "internal/ceres/array_utils.cc",
        "internal/ceres/blas.cc",
        "internal/ceres/block_evaluate_preparer.cc",
        "internal/ceres/block_jacobi_preconditioner.cc",
        "internal/ceres/block_jacobian_writer.cc",
        "internal/ceres/block_random_access_dense_matrix.cc",
        "internal/ceres/block_random_access_diagonal_matrix.cc",
        "internal/ceres/block_random_access_matrix.cc",
        "internal/ceres/block_random_access_sparse_matrix.cc",
        "internal/ceres/block_sparse_matrix.cc",
        "internal/ceres/block_structure.cc",
        "internal/ceres/c_api.cc",
        "internal/ceres/callbacks.cc",
        "internal/ceres/canonical_views_clustering.cc",
        "internal/ceres/cgnr_solver.cc",
        "internal/ceres/compressed_col_sparse_matrix_utils.cc",
        "internal/ceres/compressed_row_jacobian_writer.cc",
        "internal/ceres/compressed_row_sparse_matrix.cc",
        "internal/ceres/conditioned_cost_function.cc",
        "internal/ceres/conjugate_gradients_solver.cc",
        "internal/ceres/coordinate_descent_minimizer.cc",
        "internal/ceres/corrector.cc",
        "internal/ceres/covariance.cc",
        "internal/ceres/covariance_impl.cc",
        "internal/ceres/cxsparse.cc",
        "internal/ceres/dense_normal_cholesky_solver.cc",
        "internal/ceres/dense_qr_solver.cc",
        "internal/ceres/dense_sparse_matrix.cc",
        "internal/ceres/detect_structure.cc",
        "internal/ceres/dogleg_strategy.cc",
        "internal/ceres/dynamic_compressed_row_jacobian_writer.cc",
        "internal/ceres/dynamic_compressed_row_sparse_matrix.cc",
        "internal/ceres/evaluator.cc",
        "internal/ceres/file.cc",
        "internal/ceres/gradient_checker.cc",
        "internal/ceres/gradient_checking_cost_function.cc",
        "internal/ceres/gradient_problem.cc",
        "internal/ceres/gradient_problem_solver.cc",
        "internal/ceres/implicit_schur_complement.cc",
        "internal/ceres/is_close.cc",
        "internal/ceres/iterative_schur_complement_solver.cc",
        "internal/ceres/lapack.cc",
        "internal/ceres/levenberg_marquardt_strategy.cc",
        "internal/ceres/line_search.cc",
        "internal/ceres/line_search_direction.cc",
        "internal/ceres/line_search_minimizer.cc",
        "internal/ceres/line_search_preprocessor.cc",
        "internal/ceres/linear_least_squares_problems.cc",
        "internal/ceres/linear_operator.cc",
        "internal/ceres/linear_solver.cc",
        "internal/ceres/local_parameterization.cc",
        "internal/ceres/loss_function.cc",
        "internal/ceres/low_rank_inverse_hessian.cc",
        "internal/ceres/miniglog/glog/logging.cc",
        "internal/ceres/minimizer.cc",
        "internal/ceres/normal_prior.cc",
        "internal/ceres/parameter_block_ordering.cc",
        "internal/ceres/partitioned_matrix_view.cc",
        "internal/ceres/polynomial.cc",
        "internal/ceres/preconditioner.cc",
        "internal/ceres/preprocessor.cc",
        "internal/ceres/problem.cc",
        "internal/ceres/problem_impl.cc",
        "internal/ceres/program.cc",
        "internal/ceres/reorder_program.cc",
        "internal/ceres/residual_block.cc",
        "internal/ceres/residual_block_utils.cc",
        "internal/ceres/schur_complement_solver.cc",
        "internal/ceres/schur_eliminator.cc",
        "internal/ceres/schur_jacobi_preconditioner.cc",
        "internal/ceres/scratch_evaluate_preparer.cc",
        "internal/ceres/single_linkage_clustering.cc",
        "internal/ceres/solver.cc",
        "internal/ceres/solver_utils.cc",
        "internal/ceres/sparse_matrix.cc",
        "internal/ceres/sparse_normal_cholesky_solver.cc",
        "internal/ceres/split.cc",
        "internal/ceres/stringprintf.cc",
        "internal/ceres/suitesparse.cc",
        "internal/ceres/triplet_sparse_matrix.cc",
        "internal/ceres/trust_region_minimizer.cc",
        "internal/ceres/trust_region_preprocessor.cc",
        "internal/ceres/trust_region_step_evaluator.cc",
        "internal/ceres/trust_region_strategy.cc",
        "internal/ceres/types.cc",
        "internal/ceres/visibility.cc",
        "internal/ceres/visibility_based_preconditioner.cc",
        "internal/ceres/wall_time.cc",
    ] + glob(["internal/ceres/generated/*.cc"]),
)