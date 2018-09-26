---
# Terraform
> 外身のcode化、仮想マシンとかFWとか
### 設定ファイルの形式
* .tf
  * メインの設定ファイル
  * 独自の形式
* .tfvats
  * 変数を記載するファイル
  * 開発->ステージング->本番　で変数を変えるとかいう用途
* .tfstate
  * 管理対象のリソースをjson形式で記載
  * `terraform init`すると.terraformというディレクトリが作成される

### 主たるコマンド実行
> `init` -> `plan` -> `apply` -> `destroy`<br>
> 指定のない場合はコマンド実行したディレクトリにある`.tf`ファイルを勝手に見に行ってくれる
* `terraform init`
  * 設定ファイルの初期化
  * はじめに必ずする
* `terraform plan`
  * 
* `terraform apply`

