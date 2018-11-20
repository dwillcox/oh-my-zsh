# Run Emacs daemon and export environment vars
emacs --daemon >/dev/null 2>&1
export EDITOR="emacs -nw"
export SVN_EDITOR="emacs -nw"

# So CUDA only uses the Pascal card
export CUDA_VISIBLE_DEVICES=0

