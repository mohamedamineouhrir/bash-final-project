while true; do
	echo "1. add student (type "1")"
echo "2. show student (type "2")"
echo "3. search students (type "3")"
echo "4. exit (type "4")"
read reply
	if [ $reply = "1" ]; then
		echo "name"
		read name
		echo "age"
		read age
		if [ $age -lt 18 ]; then
			echo "student is minor (not saved)"
		else 
			echo "$name - $age"
			echo "$name - $age" >> students.txt
		fi
	elif [ $reply = "2" ]; then 
		cat students.txt

	elif [ $reply = "3" ]; then
		echo "type name"
		read look
		if #[ $look -eq 0 ]; then 
			grep -w $look students.txt; then
			echo "match found"
		else 
			echo "not found"
		fi
	fi
	if [ $reply = "4" ]; then
		break
		echo "exiting.."
	fi
done
