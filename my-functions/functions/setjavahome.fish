function setjavahome -d "Sets JAVA_HOME for current shell and children"
   if not test -d "$JAVA_HOME"
      if command_exists readlink
         echo "\$JAVA_HOME not set. Will try to guess"
         set JAVAC_EXE (which javac)
         set JAVAC_PLACEMENT (readlink -f "$JAVAC_EXE")
         set JAVA_HOME (dirname "$JAVAC_PLACEMENT")
         set --global --export JAVA_HOME (dirname "$JAVA_HOME")
         echo "Will try to use $JAVA_HOME as \$JAVA_HOME"
      else
         echo $JAVA_HOME is not set!
         exit 1
      end
   end
end
