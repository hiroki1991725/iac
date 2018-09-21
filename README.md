# まとめメモ
> 下のレイヤーから
---
## Terraform
> 外身のcode化、仮想マシンとかFWとか
### 設定ファイルの形式
* .tf
* 独自の形式
### 主たる設定ファイル
* main.tf
  * ベンダー（プロバイダ）情報
  * 各リソース情報
* terraform.tfvars
  * mainの変数を外出し
### 主たるコマンド実行
> main.tfがあるディレクトリで
* `terraform apply`
 * 
