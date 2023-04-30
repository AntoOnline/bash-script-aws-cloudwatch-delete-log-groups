# AWS Log Group Deletion Script

This Bash script helps you delete multiple log groups in a specified AWS region using AWS CLI.

## Prerequisites

1. You need to have [AWS CLI](https://aws.amazon.com/cli/) installed and configured on your system.
2. Make sure you have the necessary IAM permissions to delete log groups.

## Usage

```
./delete-cw-log-groups.sh
```

The script will prompt you to enter the AWS region for which you want to delete the log groups. The default region is `ap-southeast-2`. After entering the region, the script will display the log groups that will be deleted, and you will be asked to confirm the deletion.

### Options

- AWS region: You can either enter the region when prompted or change the default region by editing the script.

## Description

The script performs the following actions:

1. Prompts the user to enter the AWS region (default is `ap-southeast-2`).
2. Retrieves the log group names for the specified region.
3. Displays the log groups that will be deleted and the total number of log groups.
4. Asks the user to confirm the deletion.
5. Deletes the log groups one by one, displaying the status for each deletion (OK or Fail).

## Want to connect?

Feel free to contact me on [Twitter](https://twitter.com/OnlineAnto), [DEV Community](https://dev.to/antoonline/) or [LinkedIn](https://www.linkedin.com/in/anto-online) if you have any questions or suggestions.

Or just visit my [website](https://anto.online) to see what I do.
