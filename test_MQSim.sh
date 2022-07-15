echo 'Start executing MQSIM'
echo 'You can find the log of the execution in log.txt'

echo '\n' | ./MQSim -i ssdconfig.xml -w workload.xml > log.txt

echo 'Execution completed. Testing for time values now'

if grep -Fq "330160" log.txt; then
	echo "330160 found"
else
	echo "330160 NOT found"
	exit 1
fi

if grep -Fq '484' log.txt; then
	echo "484 found"
else
	echo "484 NOT found"
	exit 1
fi

if grep -Fq '41272' log.txt; then
	echo "41272 found"
else
	echo "41272 NOT found"
	exit 1
fi

if grep -Fq '906909' log.txt; then
	echo "909609 found"
else
	echo "909609 NOT found"
	exit 1
fi

if grep -Fq '176' log.txt; then
	echo "176 found"
else
	echo "176 NOT found"
	exit 1
fi

if grep -Fq '624553' log.txt; then
	echo "624553 found"
else
	echo "624553 NOT found"
	exit 1
fi

if grep -Fq '257' log.txt; then
	echo "256 found"
else
	echo "256 NOT found"
	exit 1
fi

if grep -Fq '6999' log.txt; then
	echo "6999 found"
else
	echo "6999 NOT found"
	exit 1
fi

if grep -Fq '3458' log.txt; then
	echo "3458 found"
else
	echo "3458 NOT found"
	exit 1
fi

exit 0
