# create a new directory and enter it

function mcd() {
  mkdir -pv "$1" && cd "$1";
}
