import * as AWS from "aws-sdk";

/**
 * SAMローカル実行時の設定
 */
export default function localConfig(): void {
  if (process.env.AWS_SAM_LOCAL) {
    AWS.config.update(
      {
        endpoint: "http://dynamodb:8000",
        region: "local",
        accessKeyId: "local",
        secretAccessKey: "local"
      },
      true
    );
  }
}
