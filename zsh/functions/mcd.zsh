# create a new directory and enter it

function mcd() {
  mkdir -p "$1" && cd "$1";
}