function fish_title
   if [ $_ = 'fish' ]
      if set --query SSH_CLIENT
         echo (hostname|cut -d . -f 1) - (prompt_pwd)
      else
         echo (prompt_pwd)
      end
   else
      echo $_
   end
end
