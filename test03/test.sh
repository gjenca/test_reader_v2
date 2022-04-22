#killall python3 2>/dev/null
chmod a-r data/a.txt
python3 "$1"  >/dev/null& 
PIDRIESENIE=$!
sleep 0.2
python3 test.py
EXIT_STATUS=$?
chmod a+r data/a.txt
killall -sTERM $PIDRIESENIE 2>/dev/null
echo '>>>' Killed PID "$PIDRIESENIE"
echo '>>> Test exit status:' "$EXIT_STATUS"
exit $EXIT_STATUS
