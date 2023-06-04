#!/bin/sh
#MaiScripts by Orion90

folderTheme=$(dir $HOME/.themes)
themes=()
index=0
for i in ${folderTheme[@]};
do
  echo "$index- $i"
  themes[$index]=$i
  let index=$index+1
done

echo " "

read -r -p "> Options:" option

if [[ $option -le $index && $option -ge 0 ]];then
  rm -rf $HOME/.config/gtk-4.0/assets
  rm $HOME/.config/gtk-4.0/*.css
  cp -r $HOME/.themes/${themes[$option]}/gtk-4.0/assets/ $HOME/.config/gtk-4.0
  cp $HOME/.themes/${themes[$option]}/gtk-4.0/*.css $HOME/.config/gtk-4.0
  echo "Theme ${themes[$option]} applied."
fi


#case $option in 
#"") echo $themes[0]
#  rm -rf $HOME/.config/gtk-4.0/assets
#  rm $HOME/.config/gtk-4.0/*.css
#  cp -r $HOME/.themes/Orchis-Green-Light-Nord/gtk-4.0/assets $HOME/.config/gtk-4.0
#  cp $HOME/.themes/Orchis-Green-Light-Nord/gtk-4.0/*.css $HOME/.config/gtk-4.0
#  ;;
#"2") echo "Light-Purple"
#  rm -rf $HOME/.config/gtk-4.0/assets
#  rm $HOME/.config/gtk-4.0/*.css
#  cp -r $HOME/.themes/Orchis-Purple-Light-Nord/gtk-4.0/assets $HOME/.config/gtk-4.0
#  cp $HOME/.themes/Orchis-Purple-Light-Nord/gtk-4.0/*.css $HOME/.config/gtk-4.0
#  ;;
#"3") echo "Light-Default"
#  rm -rf $HOME/.config/gtk-4.0/assets
#  rm $HOME/.config/gtk-4.0/*.css
#  cp -r $HOME/.themes/Orchis-Light-Nord/gtk-4.0/assets $HOME/.config/gtk-4.0
#  cp $HOME/.themes/Orchis-Light-Nord/gtk-4.0/*.css $HOME/.config/gtk-4.0
#  ;;
#"4") echo "Dark-Green"
#  rm -rf $HOME/.config/gtk-4.0/assets
#  rm $HOME/.config/gtk-4.0/*.css
#  cp -r $HOME/.themes/Orchis-Green-Dark-Nord/gtk-4.0/assets $HOME/.config/gtk-4.0
#  cp $HOME/.themes/Orchis-Green-Dark-Nord/gtk-4.0/*.css $HOME/.config/gtk-4.0
#  ;; 
#"5") echo "Dark-Purple"
#  rm -rf $HOME/.config/gtk-4.0/assets
#  rm $HOME/.config/gtk-4.0/*.css
#  cp -r $HOME/.themes/Orchis-Purple-Dark-Nord/gtk-4.0/assets $HOME/.config/gtk-4.0
#  cp $HOME/.themes/Orchis-Purple-Dark-Nord/gtk-4.0/*.css $HOME/.config/gtk-4.0
#  ;;
#"6") echo "Dark-Default"
#  rm -rf $HOME/.config/gtk-4.0/assets
#  rm $HOME/.config/gtk-4.0/*.css
#  cp -r $HOME/.themes/Orchis-Dark-Nord/gtk-4.0/assets $HOME/.config/gtk-4.0
#  cp $HOME/.themes/Orchis-Dark-Nord/gtk-4.0/*.css $HOME/.config/gtk-4.0 
#  ;;
#esac
#
