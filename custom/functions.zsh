# General Function Definitions
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
