function updatevim -d "Download new vundles, clean up the old ones"
    set SHELL (which sh)
    cd ~/.vim/
    vim +BundleInstall! +BundleClean +qall
    set SHELL (which fish)
end
