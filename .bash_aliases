alias g.='git'
alias g.s='git status'
alias g.show='git show'
alias g.ch='git checkout'
alias g.chm='git checkout master'
alias g.chd='git checkout develop'
alias g.c='git commit -m'
alias g.ca='git commit --amend'
alias g.cf='git commit --fixup'
alias g.a='git add'
alias g.ap='git add -p'
alias g.an='git add -N'
alias g.an.='git add -N .'
alias g.r='git reset'
alias g.rb='git rebase'
alias g.rbi='git rebase -i'
alias g.rbim='git rebase -i master --autostash'
alias g.rbid='git rebase -i develop --autostash'
alias g.rbc='git rebase --continue'
alias g.rba='git rebase --abort'
alias g.l='git lol'
alias g.p='git pushf'
alias g.pull='git pull'
alias g.pll='git pull'
alias g.br='git branch'

alias c.='cargo'
alias c.b='cargo build'
alias c.t='cargo test'
alias c.bench='rustup run nightly cargo bench'
alias c.r='cargo run'

alias d.r='dotnet run'
alias d.b='dotnet build'
alias d.t='dotnet test'
alias d.rr='dotnet run -c Release'

alias go.t.c='go clean -testcache'
alias go.t='go test ./...'
alias go.t.r='go test ./... --run'
alias go.b.r=gobench
alias go.d='godoc -http=:6060'

gobench() {
    go test ./... -bench=$1 -run=$1
}

alias v='vim'
alias e='vim ~/.bash_aliases'
alias ee='source ~/.bash_aliases'

# Credit to Roy-Orbison for this command on https://github.com/junegunn/fzf/issues/337#issuecomment-977592444
export FZF_DEFAULT_COMMAND='find . \! \( -type d -path ./.git -prune \) \! -type d \! -name '\''*.tags'\'' -printf '\''%P\n'\'
alias f='fzf'
alias f.n=fzf_nemo
alias f.v=fzf_vim
alias f.vs=fzf_code

alias s.pg='sudo -u postgres psql postgres'

alias p='cd ~/Projects'
alias p.pd='cd ~/Projects/Tom/MassFillPadDesign'
alias p.d='cd ~/Projects/Source/defradb'
alias p.d.vs='cd ~/Projects/Source/defradb && code .'
alias p.d.db='cd ~/Projects/Source/defradb/db'
alias p.d.db.vs='cd ~/Projects/Source/defradb/db && code .'

alias d.ml='make lint'
alias cl='clear'

alias python='python3'

fzf_vim() {
    local fname
    fname=$(fzf) || return
    vim "$fname"
}

fzf_nemo() {
    local fname
    fname=$(fzf) || return
    nemo "$fname"
}

fzf_code() {
    local fname
    fname=$(fzf) || return
    code "$fname"
}
