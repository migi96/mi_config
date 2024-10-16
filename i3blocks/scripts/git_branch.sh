# ~/.config/i3blocks/scripts/git_branch.sh
#!/bin/bash
git -C $(pwd) rev-parse --abbrev-ref HEAD 2>/dev/null || echo "No Repo"

