dirmerge() {
  if [[ $# == 2 ]]; then
    dir1=$1
    dir2=$2
    echo "Merging $1 into $2"
    cp -R -v $1/* $2
  else
    echo 'usage: dirmerge dir1 dir2'
  fi
}

#
# Set Colors
#

bold=$(tput bold)
underline=$(tput sgr 0 1)
reset=$(tput sgr0)

purple=$(tput setaf 171)
red=$(tput setaf 1)
green=$(tput setaf 76)
tan=$(tput setaf 3)
blue=$(tput setaf 38)

e_success() { printf "${green}✔ %s${reset}\n" "$@"
}

cd ~
dirmerge $HOME/SpaceOS/* $HOME/
e_success "Directories Merged!"
