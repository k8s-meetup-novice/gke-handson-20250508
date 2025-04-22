# (参考)新規プロジェクトの作成
`gke-wakaran-handson`という名前の[プロジェクトを作成](https://cloud.google.com/resource-manager/docs/creating-managing-projects?hl=ja#gcloud)します。  
以下のコマンドを実行すると`PROJECT_ID`が自動的に設定されるため、確認の上`Y`を入力してEnterを押下します。  
※`PROJECT_ID`はプロジェクトを識別するためのグローバルに一意なIDです。([参考](https://cloud.google.com/resource-manager/docs/creating-managing-projects?hl=ja))

```bash
gcloud projects create --name gke-wakaran-handson
```
```bash
No project ID provided.

Use [<PROJECT_ID>] as project ID (Y/n)?  Y  # <--- PROJECT_IDが自動的に設定されるため確認してYを入力してEnter

Create in progress for [https://cloudresourcemanager.googleapis.com/v1/projects/<PROJECT_ID>].
Waiting for [operations/create_project.global.xxxxx] to finish...done.                                                                                                                                                       
Enabling service [cloudapis.googleapis.com] on project [<PROJECT_ID>]...
Operation "operations/xxxxxxxxxx" finished successfully.
```

以下のコマンドを実行し、作成したプロジェクトをgcloud CLIのデフォルトのプロジェクトとして設定します。
```bash
gcloud config set project $GCLOUD_PROJECT_ID
```

gcloud CLIの設定は以下のコマンドにより確認できます。
```bash
gcloud config list
```

```bash
[core]
account = <Googleアカウント名>
disable_usage_reporting = True
project = <PROJECT_ID>

Your active configuration is: [default]
```