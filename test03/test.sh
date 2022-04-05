killall python3 2>/dev/null
chmod a-r data/a.txt
( python3 "$1"  >/dev/null& )
PID=$!
sleep 0.2
python3 test.py
EXIT_STATUS=$?
killall python3 2>/dev/null
chmod a+r data/a.txt
exit $EXIT_STATUS
