function updatevim -d "Download new vundles, clean up the old ones"
    set CURRENTDIR (pwd)
    cd ~/.vim/
    set SHELL (which sh)
    vim +BundleInstall! +BundleClean +qall
    set SHELL (which fish)
    cd $CURRENTDIR
end
