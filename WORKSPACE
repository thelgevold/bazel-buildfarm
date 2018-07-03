workspace(name = "build_buildfarm")

# Needed for "well-known protos" and @com_google_protobuf//:protoc.
http_archive(
    name = "com_google_protobuf",
    strip_prefix = "protobuf-3.6.0",
    urls = ["https://github.com/google/protobuf/archive/v3.6.0.zip"],
)

# Needed for @grpc_java//compiler:grpc_java_plugin.
http_archive(
    name = "grpc_java",
    sha256 = "20a35772b20d8194854f6d149324f971472b7acc1a76a0969a048c4c02a1da0d",
    strip_prefix = "grpc-java-1.8.0",
    urls = ["https://github.com/grpc/grpc-java/archive/v1.8.0.zip"],
)

# The API that we implement.
new_http_archive(
    name = "googleapis",
    sha256 = "27ade61091175f5bad45ec207f4dde524d3c8148903b60fa5641e29e3b9c5fa9",
    url = "https://github.com/googleapis/googleapis/archive/9ea26fdb1869d674fa21c92e5818ba4eadd500c2.zip",
    strip_prefix = "googleapis-9ea26fdb1869d674fa21c92e5818ba4eadd500c2",
    build_file = "BUILD.googleapis",
)

http_archive(
    name = "build_bazel_rules_nodejs",
    url = "https://github.com/bazelbuild/rules_nodejs/archive/0.9.1.zip",
    strip_prefix = "rules_nodejs-0.9.1",
    sha256 = "6139762b62b37c1fd171d7f22aa39566cb7dc2916f0f801d505a9aaf118c117f",
)

# Runs the Sass CSS preprocessor
http_archive(
    name = "io_bazel_rules_sass",
    url = "https://github.com/bazelbuild/rules_sass/archive/0.1.0.zip",
    strip_prefix = "rules_sass-0.1.0",
    sha256 = "b243c4d64f054c174051785862ab079050d90b37a1cef7da93821c6981cb9ad4",
)

load("//3rdparty:workspace.bzl", "maven_dependencies", "declare_maven")

maven_dependencies(declare_maven)

git_repository(
    name = "io_bazel_rules_docker",
    remote = "https://github.com/bazelbuild/rules_docker.git",
    tag = "v0.4.0",
)

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
    container_repositories = "repositories",
)

load(
    "@io_bazel_rules_docker//java:image.bzl",
    _java_image_repos = "repositories",
)

_java_image_repos()

container_pull(
  name = "java_base",
  registry = "gcr.io",
  repository = "distroless/java",
  digest = "sha256:625c3584876171c6d786d8d8a74b2aaceac06fef450e7fd7322247464f118aa9",
)

load("@io_bazel_rules_sass//sass:sass_repositories.bzl", "sass_repositories")

sass_repositories()
