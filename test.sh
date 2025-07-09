while getopts ":a:b:" opt
do
	case ${opt} in
		a)
			if [ ${OPTARG} = "-${opt}" ]
			then
				echo "Cannot use an argument like the option."
				exit 1
				break
			else
				echo "The option used is: -a and the value is: ${OPTARG}"
			fi
			;;	
		b) 
			echo "The option used is: -b and the value is: ${OPTARG}"
			;;
		:) 
			echo "Option -${OPTARG} requires an argument."
			exit 1
			;;
		?) 
			echo "You used an invalid argument: -${OPTARG}" 
			exit 1
			;;
	esac
done
