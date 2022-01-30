# etherminer_docker
Really simple implementation of ethereum mining with etherminer and docker.

<br>

## How to start
---
### 1. set .env file
```
WALLET_ADDR={YOUR WALLET ADDRESS}
WORKER={WORKER NAME}
```

### 2. Modify Power & Overclock settings in `start.sh` file
```
sudo nvidia-smi -i 0 -pl 180
nvidia-settings -a [gpu:0]/GPUGraphicsClockOffset[4]=-375
nvidia-settings -a [gpu:0]/GPUMemoryTransferRateOffset[]=2400
nvidia-settings -a [gpu:0]/GpuPowerMizerMode=1
nvidia-settings -a [gpu:0]/GPUFanControlState=1
nvidia-settings -a [fan:0]/GPUTargetFanSpeed=40
```

### 2. Start with shell script
```
./start.sh
```
