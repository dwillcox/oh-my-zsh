# General Function Definitions
start_emacs_daemon() {
    emacs --daemon >/dev/null 2>&1
}

delws () {
    emacs -nw "$1" --eval '(progn (delete-trailing-whitespace) (save-some-buffers t) (kill-emacs))' && clear
}

fork() {
    nohup $@ >/dev/null 2>&1 &
}

ddoc() {
    nohup zathura $1 >/dev/null 2>&1 &
}

dimg() {
    nohup display $1 >/dev/null 2>&1 &
}

pdfcat() {
    gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="$1" "${@:2}"
}

toes () {
    $@ > >(tee -a stdout.log) 2> >(tee -a stderr.log >&2)
}

jnbook () {
    jupyter notebook $@ --ip=127.0.0.1
}

delws () {
    emacs -nw "$1" --eval '(progn (delete-trailing-whitespace) (save-some-buffers t) (kill-emacs))' && clear
}

open() {
    emacs -nw `find . -name $1`
}

# Establish a SOCKS proxy on localhost port 8880 through
# the host provided as the argument.
sshtunnel () {
    ssh -D 8880 $1
}

# Given a jupyter notebook running at 127.0.0.1 on a remote machine,
# connect to it given the remote port where the notebook is running.
# This port gets mapped via ssh to localhost:8888.
# arg 1: remote login@machine
# arg 2: port on remote 127.0.0.1 where notebook is running, e.g. 8888
sshjupyter () {
    ssh -N -f -L localhost:8888:127.0.0.1:$2 $1
}

# Silent find (suppresses permission denied errors)
sfind () {
    find $@ 2>&1 | grep -v "Permission denied"
}
