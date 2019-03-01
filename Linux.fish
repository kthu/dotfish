# Functions specific to Linux users
# Please note that this file is version controlled.
# Use one of the local files (hostname or username) for user/host specific settings

function source_profile_file
   if test -f /etc/profile.d/$argv.sh
      bass source /etc/profile.d/$argv.sh
   end
end

#source_profile_file apps-bin-path
#source_profile_file cedilla-portuguese
#ource_profile_file vte-2.91
#ource_profile_file bash_completion
#ource_profile_file input-method-config
#ource_profile_file xdfg_dirs_desktop_session

