# Welcome to your CDK TypeScript project!

This is a blank project for TypeScript development with CDK.

The `cdk.json` file tells the CDK Toolkit how to execute your app.

## Useful commands

 * `npm run build`   compile typescript to js
 * `npm run watch`   watch for changes and compile
 * `npm run test`    perform the jest unit tests
 * `cdk deploy`      deploy this stack to your default AWS account/region
 * `cdk diff`        compare deployed stack with current state
 * `cdk synth`       emits the synthesized CloudFormation template


## 起動
```
docker network create sam-cli
docker-compose up -d
bash dynamodb/setupDB.sh

yarn run watch
sam-beta-cdk local start-api --project-type CDK -n .env_dev.json --docker-network sam-cli
```

## 確認
`curl http://localhost:3000`   

[gateway](http://localhost:3000)   
[dynamodb-admin](http://localhost:8001)

## 参考
https://dev.classmethod.jp/articles/cdk-local-develop/
https://github.com/cdk-patterns/serverless/tree/main/the-simple-webservice/typescript
https://github.com/aaronshaf/dynamodb-admin
