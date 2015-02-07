#!/bin/sh

asset_js_dirs1=$(find /home/rails_test/ttttt/vendor/bundle/ -type d | grep .*assets.*/app/assets/javascripts$)

asset_js_dirs2=$(find $asset_js_dirs1 -maxdepth 1 -mindepth 1)

for asset_js_dir in $asset_js_dirs2
do
  asset_js_dir_name=$(echo $asset_js_dir | awk -F"/" '{print $NF}')
  ln -s $asset_js_dir vendor/assets/javascripts/$asset_js_dir_name
done
