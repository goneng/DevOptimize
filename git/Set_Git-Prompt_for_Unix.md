# Set git-prompt for Unix <!-- omit in toc -->

Note this may cause delays when working in large repositories

### Table of Contents <!-- omit in toc -->
- [Get a Copy of git-prompt](#get-a-copy-of-git-prompt)
- [Configure your Login Script](#configure-your-login-script)
  - [For Bash](#for-bash)
  - [For Zsh](#for-zsh)

&nbsp;

## Get a Copy of git-prompt

Run this in a terminal-window:

#FIXME: Check if this is the correct URL for ZSH support as well, and rephrase the instructions accordingly

```bash
mkdir ~/.bash
cd ~/.bash
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
chmod 755 git-prompt.sh
```

&nbsp;

## Configure your Login Script

### For Bash

Edit `~/.bashrc` and add the following at the end: \
(at the part that only gets executed in interactive shells)

```bash
...

# Support Git Prompt (assumes Interactive shell)
if [ -f ~/.bash/git-prompt.sh ]; then
    # from https://gist.github.com/eliotsykes/47516b877f5a4f7cd52f (git-aware-bash-prompt.md)
    source ~/.bash/git-prompt.sh # Show git branch name at command prompt
    export GIT_PS1_SHOWCOLORHINTS=true # Option for git-prompt.sh to show branch name in color

    # Set some more options
    export GIT_PS1_SHOWDIRTYSTATE=true
    export GIT_PS1_SHOWUPSTREAM="auto"

    # Append to the existing shell
    PS1+="\$(__git_ps1) "
fi
```

See also: [Bash login script example](../Unix_Admin/bin/HOME_Dir_Sample/.bashrc)

### For Zsh

Edit `~/.zshrc` and add the following at the end: \
(at the part that only gets executed in interactive shells)

```bash
# Load git-prompt script (assumes Interactive shell)
MY_GIT_PROMPT_FILE=~/.zsh/git-prompt.sh
if [ -f ${MY_GIT_PROMPT_FILE} ]
then
  echo "${MY_GIT_PROMPT_FILE} ..."
  source ${MY_GIT_PROMPT_FILE}        # Show git branch name at command prompt
  export GIT_PS1_SHOWCOLORHINTS=true  # Option for git-prompt.sh to show branch name in color

  # Set some more options
  export GIT_PS1_SHOWDIRTYSTATE=true
  export GIT_PS1_SHOWUPSTREAM="auto"

  setopt PROMPT_SUBST # Sets parameter-expansion, command-substitution and arithmetic-expansion to be performed in prompts
  # Append to the existing shell:
  # PS1+='$(__git_ps1 " (%s)") %# '
  # ...or replace the existing shell:
  # PS1='%n@%m %1~ $(__git_ps1 "[%s]") %# '
    PS1='%n@%m %c$(__git_ps1 " (%s)") %# '
else
  echo "(no ${MY_GIT_PROMPT_FILE})"
fi
```

See also: [Zsh login script example](../Unix_Admin/bin/HOME_Dir_Sample/.zshrc)

&nbsp;

---

&nbsp;
