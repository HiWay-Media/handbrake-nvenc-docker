docker run --rm -it --gpus all \
    -e NVIDIA_VISIBLE_DEVICES=all \
    -e NVIDIA_DRIVER_CAPABILITIES=compute,utility,video \
    --volume $PWD:/tmp \
    docker-registry.tngrm.io/handbrake:ffmpeg5 \
      -hwaccel_device 0 \
      -hwaccel cuvid \
      -c:v h264_cuvid \
      -i /tmp/nput.mp4 \
      -c:v h264_nvenc \
      /tmp/out.mkv
