# (参考)請求先アカウントのリンクとサービスAPIの有効化
[請求先アカウントをプロジェクトにリンク](https://developers.google.com/workspace/guides/create-project?hl=ja#gcloud-cli_1)します。

以下コマンドを実行し請求先アカウントの`ACCOUNT_ID`を確認の上、プロジェクトにリンクします。
```bash
gcloud billing accounts list  # 請求先アカウントのACCOUNT_IDを確認
gcloud billing projects link <PROJECT_ID> --billing-account=<ACCOUNT_ID>
```

[サービスAPIを有効化](https://cloud.google.com/endpoints/docs/openapi/enable-api?hl=ja)します。  
以下では`Compute Engine API`(`compute.googleapis.com`)を有効化する例を示しますが、必要に応じて他のAPIも有効化してください。  
利用可能なAPIの一覧は`gcloud services list --available`コマンドで確認できます。  

```bash
gcloud services enable compute.googleapis.com
```