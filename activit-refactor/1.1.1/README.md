Ensure the account was created in the correct OU within the same AWS Organization (e.g., ou-mx-xxxxx)

Note: aws_organizations_account only creates/moves accounts if you are the master account of the Org. For existing accounts, you can use aws_organizations_move_account (custom provider or via external script).

Note2: validate all accounts aws organizations list-accounts | jq aws organizations list-parents --child-id <account_id>
