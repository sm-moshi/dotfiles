#-- START ZCACHE GENERATED FILE
#-- GENERATED: So 26 Nov 2023 19:06:20 CET
#-- ANTIGEN v2.2.3
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/opt/homebrew/Cellar/antigen/2.2.3/share/antigen/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/smeya/.antigen/bundles/romkatv/powerlevel10k /Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/smeya/.antigen/bundles/zdharma-continuum/fast-syntax-highlighting /Users/smeya/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/smeya/.antigen/bundles/zsh-users/zsh-completions /Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git) path+=(/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib /Users/smeya/.antigen/bundles/romkatv/powerlevel10k /Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /Users/smeya/.antigen/bundles/zdharma-continuum/fast-syntax-highlighting /Users/smeya/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/smeya/.antigen/bundles/zsh-users/zsh-completions /Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git)
_antigen_compinit () {
  autoload -Uz compinit; compinit -i -d "/Users/smeya/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh';
source '/Users/smeya/.antigen/bundles/romkatv/powerlevel10k/powerlevel10k.zsh-theme.antigen-compat';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/Users/smeya/.antigen/bundles/zdharma-continuum/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh';
source '/Users/smeya/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/Users/smeya/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/romkatv/powerlevel10k.git / theme true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/zdharma-continuum/fast-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh' '/Users/smeya/.antigen/bundles/romkatv/powerlevel10k//' '/Users/smeya/.antigen/bundles/romkatv/powerlevel10k///powerlevel10k.zsh-theme' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/Users/smeya/.antigen/bundles/zdharma-continuum/fast-syntax-highlighting//' '/Users/smeya/.antigen/bundles/zdharma-continuum/fast-syntax-highlighting///fast-syntax-highlighting.plugin.zsh' '/Users/smeya/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/Users/smeya/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/Users/smeya/.antigen/bundles/zsh-users/zsh-completions//' '/Users/smeya/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/smeya/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.3'

#-- END ZCACHE GENERATED FILE
