read -p "Please enter the AWS region [ap-southeast-2]? " region
region=${region:-ap-southeast-2}

echo Getting group names for $region...

LOG_GROUPS=$(
	aws logs describe-log-groups --output table --region $region |
		awk '{print $6}' |
		grep -v ^$ |
		grep -v DescribeLogGroups
)

echo These log groups will be deleted:
printf "${LOG_GROUPS}\n"
echo Total $(wc -l <<<"${LOG_GROUPS}") log groups
echo

while true; do
    read -p "Proceed? [yn]" yn
    case $yn in
    [Yy]*) break ;;
    [Nn]*) exit ;;
    *) echo "Please answer yes or no." ;;
    esac
done

for name in ${LOG_GROUPS}; do
	printf "Delete group ${name}... "
	aws logs delete-log-group --log-group-name ${name} --region $region && echo OK || echo Fail
done
