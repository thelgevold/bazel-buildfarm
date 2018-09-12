workspace(name = "build_buildfarm")

# Needed for "well-known protos" and @com_google_protobuf//:protoc.
http_archive(
    name = "com_google_protobuf",
    sha256 = "091d4263d9a55eccb6d3c8abde55c26eaaa933dea9ecabb185cdf3795f9b5ca2",
    strip_prefix = "protobuf-3.5.1.1",
    urls = ["https://github.com/google/protobuf/archive/v3.5.1.1.zip"],
)

# Needed for @grpc_java//compiler:grpc_java_plugin.
http_archive(
    name = "grpc_java",
    sha256 = "20a35772b20d8194854f6d149324f971472b7acc1a76a0969a048c4c02a1da0d",
    strip_prefix = "grpc-java-1.8.0",
    urls = ["https://github.com/grpc/grpc-java/archive/v1.8.0.zip"],
)

new_http_archive(
    name = "googleapis",
    sha256 = "7b6ea252f0b8fb5cd722f45feb83e115b689909bbb6a393a873b6cbad4ceae1d",
    url = "https://github.com/googleapis/googleapis/archive/143084a2624b6591ee1f9d23e7f5241856642f4d.zip",
    strip_prefix = "googleapis-143084a2624b6591ee1f9d23e7f5241856642f4d",
    build_file = "BUILD.googleapis",
)

# The API that we implement.
new_http_archive(
    name = "remote_apis",
    sha256 = "865c6950a64b859cf211761330e5d13e6c4b54e22a454ae1195238594299de34",
    url = "https://github.com/bazelbuild/remote-apis/archive/fdeb922b595df28650d12fc2335c4426df2fc726.zip",
    strip_prefix = "remote-apis-fdeb922b595df28650d12fc2335c4426df2fc726",
    build_file = "BUILD.remote_apis",
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