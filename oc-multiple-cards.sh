#! /bin/bash

# Update on https://github.com/ethereum-mining/ethminer/pull/18#issuecomment-312506214
# For needed OS setting to make this work, refer to oc.sh in this repo

SET='/usr/bin/nvidia-settings'
    
NUMGPU="$(nvidia-smi -L | wc -l)"

echo "Setting up ${NUMGPU} GPU(s)"

    n=0
    while [  $n -lt $NUMGPU ];
    do

  ${SET} -a [gpu:${n}]/GPUFanControlState=1 \
  -a [fan:${n}]/GPUTargetFanSpeed=60 \
  -a [gpu:${n}]/GPUPowerMizerMode=1 \
  -a [gpu:${n}]/GPUGraphicsClockOffsetAllPerformanceLevels=100 \
  -a [gpu:${n}]/GPUMemoryTransferRateOffsetAllPerformanceLevels=1000

      let n=n+1
    done
    echo "Complete"; 
    exit 0;