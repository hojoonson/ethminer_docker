docker-compose down
nvidia-smi -pm 1
sudo nvidia-smi -i 0 -pl 160
nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[4]=-300
nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[]=2400
nvidia-settings -a [gpu:0]/GpuPowerMizerMode=1
nvidia-settings -a [gpu:0]/GPUFanControlState=1
nvidia-settings -a [fan:0]/GPUTargetFanSpeed=40
docker-compose up --build -d