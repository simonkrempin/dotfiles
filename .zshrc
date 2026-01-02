# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/skrem/.zsh/completions:"* ]]; then export FPATH="/Users/skrem/.zsh/completions:$FPATH"; fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/skrem/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/skrem/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/skrem/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/skrem/google-cloud-sdk/completion.zsh.inc'; fi
. "/Users/skrem/.deno/env"
# pnpm
export PNPM_HOME="/Users/skrem/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/skrem/.lmstudio/bin"
# End of LM Studio CLI section


# bun completions
[ -s "/Users/skrem/.bun/_bun" ] && source "/Users/skrem/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
