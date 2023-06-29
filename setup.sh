#!/bin/bash

DIR="$(pwd)/config"

CDIR="$HOME/.config"
BDIR="$HOME/.config_backup"



copy_subdirs() {
  local src_dir="$1"
  local dest_dir="$2"
  local subdirs=("${@:3}")  # Rest of the arguments after src_dir and dest_dir
  
    mkdir -p "$dest_dir"

  for subdir_name in "${subdirs[@]}"; do
    source_subdir="$src_dir/$subdir_name"
    destination_subdir="$dest_dir/$subdir_name"
  
    if [ -d "$source_subdir" ]; then
      cp -r "$source_subdir" "$dest_dir"
      echo "Copied $subdir_name from $src_dir to $dest_dir"
    else
      echo "Subdirectory $subdir_name not found in $src_dir"
    fi
  done
}

main() {
    local subdir_list=("$@")  # All arguments passed to copy_twice function
    
    # make backup
    echo "Creating backup..."
    copy_subdirs ${CDIR} ${BDIR} "${subdir_list[@]}"
    echo
    echo "Installing config files..."
    copy_subdirs ${DIR} ${CDIR} "${subdir_list[@]}"
}

# add names of config dirs to include
main "rofi" "i3" "polybar" "wallpapers"