This configuration sets an admin user in an admin group and also creates an admin OU and SCP for root OU.

Variables
Mandadotory:
- "region"
- "iam_user_name"

Please define the above variables by providing the variable name and value within the module block as attributes. EG: iam_user_name = "Christos"

Optionals:
- "iam_group_name"
- "iam_policy_name"
- "org_unit_name"
- ""root-org"

Outputs:
- "scp_region_frankfurt_json"
- "iam_policy_admin_policy"
- "iam_group_admins_users"

You can check the above outputs with the following command: terraform output

GitActions
A basic automation pipeline has been configured to automatically update the release tag on evey git push with a tag. EG: git tag v0.1.1 + git push origin v0.1.1


GitIgnore
Extra file added in the git template of env.tf for not pushing provider data and AWS access keys.