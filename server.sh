#!/bin/bash
bazel build //src/main/java/build/buildfarm:buildfarm-server && bazel-bin/src/main/java/build/buildfarm/buildfarm-server config/server.config
