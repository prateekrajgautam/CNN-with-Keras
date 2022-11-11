#!/bin/bash
scp Dockerfile requirements.txt prateek@10.135.27.6:/home/prateek/sync/
scp -r ./sync/local2server  prateek@10.135.27.6:/home/prateek/sync/
scp -r prateek@10.135.27.6:/home/prateek/sync/server2local ./sync/