PIDFILE="/workdir/minidlna.pid"
exec 3>&1
rm -rf /workdir/log_dir
mkdir /workdir/log_dir
ln -s /dev/fd/3 /workdir/log_dir/minidlna.log
minidlnad -P $PIDFILE -f /etc/minidlna.conf
sleep 5s
while kill -0 $(cat $PIDFILE)
do
    sleep 1m
done
echo minidlna stopped
