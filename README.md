# Whisper Diarization

Commands on local computed:

```bash
# Add envs
export CERT_PATH=~/Downloads/trans-205936-slavacher.pem
export GPU_IP=81.94.150.14

# Connecting
$ ssh -i ${CERT_PATH} -p 22 ubuntu@${GPU_IP}

# Copying file
$ scp -i ${CERT_PATH} -P 22 audio.wav ubuntu@${GPU_IP}:~

# Copying file back
$ scp -i ${CERT_PATH} -P 22 ubuntu@81.94.150.14:~/audio.txt .
$ scp -i ${CERT_PATH} -P 22 ubuntu@81.94.150.14:~/audio.csv .
$ scp -i ${CERT_PATH} -P 22 ubuntu@81.94.150.14:~/audio.srt .
```

Commands on remote host:

```bash
$ sudo chmod +x ./run.sh && ./run.sh
```
