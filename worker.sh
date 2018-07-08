bazel build //src/main/java/build/buildfarm:buildfarm-worker && bazel-bin/src/main/java/build/buildfarm/buildfarm-worker config/worker.config --root worker1 &
bazel build //src/main/java/build/buildfarm:buildfarm-worker && bazel-bin/src/main/java/build/buildfarm/buildfarm-worker config/worker.config --root worker2 &
bazel build //src/main/java/build/buildfarm:buildfarm-worker && bazel-bin/src/main/java/build/buildfarm/buildfarm-worker config/worker.config --root worker3 &
bazel build //src/main/java/build/buildfarm:buildfarm-worker && bazel-bin/src/main/java/build/buildfarm/buildfarm-worker config/worker.config --root worker4 &
bazel build //src/main/java/build/buildfarm:buildfarm-worker && bazel-bin/src/main/java/build/buildfarm/buildfarm-worker config/worker.config --root worker5 &
bazel build //src/main/java/build/buildfarm:buildfarm-worker && bazel-bin/src/main/java/build/buildfarm/buildfarm-worker config/worker.config --root worker6 &

wait
echo all processes complete