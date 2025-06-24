# Terraform project for AWS account.
To set up this project from scratch, take the following steps prior to the first deployment of the application.

1. Create new AWS account
2. In IAM Identity providers, create a new identity provider.
    
    a. Select OpenID Connect

    b. For Provider URL, use `https://token.actions.githubusercontent.com`

    c. For audience, select `sts.amazonaws.com`

3. Create a new role

    a. Select `Web Identity` then in the dropdown, select `token.actions.githubusercontent.com`

    b. Populate the rest of the fields with the relevant data

    c. Grant AWS Administrator access to the role (unless you have a better plan)

4. In Github, add the following two entries to the secrets in Settings -> Sercets and Variables -> Actions

    a. `TERRAFORM_ROLE: arn:aws:iam::<YOUR_ACCOUNT_ID>:role/<ROLE_NAME>`

    b. `AWS_REGION: <YOUR AWS REGION>`

5. To create necessary state files, deploy the site once with the backend.tf code commented out to initialize the bootstrap_backend.tf files. change the bucket name to fit

