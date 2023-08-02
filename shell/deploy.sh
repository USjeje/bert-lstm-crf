nohup sh shell/start-server.sh > log/server.log 2>&1 & echo $! > log/server-pidfile
echo '[SERVER] NER server start, please see app/server.log for details.'
while true; do sleep 1; done