while true
do
	sysbench   --num-threads=64 --report-interval=10 --max-time=300 --max-requests=0 --rand-type=pareto --oltp-table-size=100000000   --mysql-host=127.0.0.1 --mysql-port=6033 --mysql-user=sbtest --mysql-password=sbtest  --mysql-db=innodb --oltp-reconnect --test=/usr/share/doc/sysbench/tests/db/update_index.lua  run   >> /dev/null
	sleep 3300
done
