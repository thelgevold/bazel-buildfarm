#!/bin/bash
bazel build //src/main/java/build/buildfarm:buildfarm-worker && bazel-bin/src/main/java/build/buildfarm/buildfarm-worker config/worker.config
