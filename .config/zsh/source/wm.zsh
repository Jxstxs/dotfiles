export WM=$DOT/configs/dwm
export sxhkdconf=$DOT/configs/sxhkdrc

function sxhd(){
    $DEVEDITOR $sxhkdconf &&
    pkill -USR1 -x sxhkd
}

function conf() {

}

# conf(){
#     if [[ $WM = $WM_dwm ]]
#     then
#         $FILE_EDITOR $WM/config.h &&
#         ans=""
#         echo "Compile[y/N]? "
#         read $ans
#         if [[ $ans = "y" ]]
#         then
#             oPWD=$PWD
#             if [[ ! -d $WM/backup ]]
#             then
#                 mkdir $WM/backup
#             fi
#             rm $WM/backup/config.h &&
#             mv $WM/config.def.h $WM/backup/config.h &&
#             cd $WM
#             sudo make clean install &&
#             cd $oPWD
#             echo "Compiling Done"
#         fi
#         echo "Done with everything\n"
#     fi
# }
