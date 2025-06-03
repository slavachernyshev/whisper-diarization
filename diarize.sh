#!/bin/bash

set -e

# Installing updates
sudo apt update && sudo apt --yes install python3.12-dev python3.12-venv ffmpeg cython3

if [ ! -d "whisper-diarization" ]; then
    git clone https://github.com/slavachernyshev/whisper-diarization.git
fi
cd whisper-diarization

if [ ! -d "venv" ]; then
    python3 -m venv venv
fi
# shellcheck disable=SC1091
source venv/bin/activate
pip install -c constraints.txt -r requirements.txt

# Run command
python diarize.py -a ../audio.wav --whisper-model=turbo --language=ru