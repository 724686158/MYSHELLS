sh run.sh -e canal.auto.scan=false \
		  -e canal.destinations=1 \
		  -e canal.instance.master.address=127.0.0.1:3306  \
		  -e canal.instance.dbUsername=root  \
		  -e canal.instance.dbPassword=mi  \
		  -e canal.instance.connectionCharset=UTF-8 \
		  -e canal.instance.tsdb.enable=true \
		  -e canal.instance.gtidon=false  \
