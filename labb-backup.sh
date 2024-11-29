#!/bin/bash
echo "backup Run At $(date)" >> /home/d24/labb/labb-backup/log.txt
restic -r sftp:d24@192.168.141.4:labb-backup/ --password-file="/home/d24/labb/labb-backup/restic-repo.password" backup .
