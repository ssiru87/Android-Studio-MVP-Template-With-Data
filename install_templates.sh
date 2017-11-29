#!/bin/bash

echo "Installing MVP pattern templates..."

find /Applications -path "*.app" -prune \( -name "*Android Studio*" -or -name "*IntelliJ IDEA*" \) -print0 | while read -d $'\0' folder
do
  echo "\nInstalling to $folder"
  cp -frv $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/MVP_* "$folder/Contents/plugins/android/lib/templates/other/"
done


echo "Done."
echo ""
echo "Restart Android Studio or IntelliJ IDEA"
