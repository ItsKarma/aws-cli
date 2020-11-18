# aws-cli

Docker image for AWS CLI, also source for the AWS CLI GitHub Action.

## Example Usage

```yaml
- name: S3 Sync
  uses: ItsKarma/aws-cli@v1.70.0
  with:
    args: s3 sync --delete --acl public-read localdir/ s3://remote-bucket/
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    AWS_DEFAULT_REGION: "us-east-1"
```

## Output

This GitHub action exposes stdout as an output named `result`. For example, in the following example, this step will
provide an output variable at the path `steps.latest_lambda_version.outputs.result`:

```yaml

- name: Get latest topper compile version
  uses: ItsKarma/aws-cli@v1.70.0
  id: latest_lambda_version
  with:
    args: lambda list-versions-by-function --function-name my_function_name \
      --no-paginate \
      --query "max_by(Versions, &to_number(to_number(Version) || '0')).Version"
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
    AWS_DEFAULT_REGION: "us-east-1"
```
