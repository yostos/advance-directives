.DEFAULT_GOAL := help

clean: ## 生成したHTML/PDFを全て削除する。ファイル生成前にも実行される。
		@rm docs/*.sig
		@rm -rf build/pdf
		@rm -rf build/html
		@echo ">> Cleanup all PDF."

pdf:  ## PDFを生成する。
		@./scripts/build-pdf.sh

html:  ## HTMLを生成する。
		@./scripts/build-html.sh

sign:  ## ソースと生成ファイルに署名を行う。
		@./scripts/sign.sh

verify: ## ソースと生成された文書について、署名を確認する。
		@./scripts/verify.sh

help: ## ヘルプを出力する。
		@grep -E '^[/a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | perl -pe 's%^([/a-zA-Z_-]+):.*?(##)%$$1 $$2%' | awk -F " *?## *?" '{printf "\033[36m%-15s\033[0m %-50s %s\n", $$1, $$2, $$3}'
