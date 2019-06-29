# General Function Definitions
start_emacs_daemon() {
    emacs --daemon >/dev/null 2>&1
}

delws () {
	emacs -nw "$1" --eval '(progn (delete-trailing-whitespace) (save-some-buffers t) (kill-emacs))' && clear
}

fork() {
    $1 >/dev/null 2>&1 &
}

ddoc() {
    nohup evince $1 >/dev/null 2>&1 &
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

# Establish a SOCKS proxy on localhost port 8880 through
# the host provided as the argument.
sshtunnel () {
        ssh -D 8880 $1
}

# Silent find (suppresses permission denied errors)
sfind () {
        find $@ 2>&1 | grep -v "Permission denied"
}
