DOTFILES   := .config/vim .vimrc

init:
	@echo '==> Setup environment settings.'
	@echo ''

deploy: ## Create symlink to home directory
	@echo '==> Start to deploy dotfiles to home directory.'
	@echo ''
	@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

test: ## Test dotfiles and init scripts
	@echo '==> Test dotfiles and init scripts.'
	@echo ''
