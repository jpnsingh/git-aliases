# -------------------------
# Git aliases
# -------------------------

alias ga = "git add"
alias gaa = "git add ."
alias gaa = "git add . -A"
alias gau = "git add . -U"
alias gb = "git branch"
alias gc = "git commit"
alias gcrp = "git cherry-pick"
alias gcnf = "git config --list"
alias gco = "git checkout"
alias gcob = "git checkout -b"
alias gcom = "git checkout master"
alias gd = "git diff"
alias gf = "git fetch"
alias gfpr = "git fetch --tags --progress origin refs/pull-requests/*:refs/remotes/upstream/pull-requests/*"
alias gi = "git init"
alias gl = "git log"
alias glg = "git log --graph --oneline --decorate --all"
alias gld = "git log --pretty=format:"%h %ad %s" --date=short --all"
alias gm = "git merge"
alias gma = "git merge --abort"
alias gmc = "git merge --continue"
alias gmm = "git merge master"
alias gpl = "git pull"
alias gplr = "git pull --rebase"
alias gps = "git push origin -u"
alias gpsd = "git push origin -u --delete"
alias gpsf = "git push origin -u -f"
alias gr = "git rebase"
alias gra = "git rebase --abort"
alias grc = "git rebase --continue"
alias gri = "git rebase --interactive"
alias gri1 = "git rebase --interactive HEAD~1"
alias gri2 = "git rebase --interactive HEAD~2"
alias gri3 = "git rebase --interactive HEAD~3"
alias gri4 = "git rebase --interactive HEAD~4"
alias gri5 = "git rebase --interactive HEAD~5"
alias grm = "git rebase master"
alias grsh = "git reset HEAD"
alias gs = "git status"
alias gss = "git status --short"
alias gst = "git stash"
alias gsta = "git stash apply"
alias gstd = "git stash drop"
alias gstl = "git stash --list"
alias gstp = "git stash pop"
alias gsts = "git stash save"

# -------------------------
# Git functions
# -------------------------

# checkout PR by id
function gcopr() { git checkout upstream/pull-requests/"$1"/merge; }

# delete a branch both local and remote 
function gdb() { 
  git branch -D "$1";
  git push origin --delete "$1";
}

# find log grep by commit message
function glf() { git log --all --grep="$1"; }

# rebase interactive from HEAD to nth commit
function grin() { git rebase --interactive HEAD~"$1"; }
