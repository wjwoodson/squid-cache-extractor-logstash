# run-logstash.sh
#
# Quick logstash parsers to process squid-cache-extractor output from stdin
#
# Usage:
#  ./run-logstash.sh
#
cat store.log.csv | /usr/share/logstash/bin/logstash -f logstash-store-log.conf
sleep 30
cat parse-swap-state.json | /usr/share/logstash/bin/logstash -f ~/logstash-swap-state.conf 
sleep 30
cat cache-extractor.json | /usr/share/logstash/bin/logstash -f ~/logstash-cache-extractor.conf 
