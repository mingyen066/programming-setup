

# Environment variables (for GUI apps / IDE plugins)
eval "$(/opt/homebrew/bin/brew shellenv)"
export SPARK_HOME="${HOME}/code/spark-3.5.7-bin-hadoop3"
export PATH="${SPARK_HOME}/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export VAULT_ADDR=https://vault.appier.us
# export JIRA_EMAIL='your-email@appier.com'
# export JIRA_API_TOKEN='your-api-token'

# Added by Toolbox App
export PATH="$PATH:/Users/mingyen.chung/Library/Application Support/JetBrains/Toolbox/scripts"


# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
