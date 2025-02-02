#!/usr/bin/env bash

echo "hello, World"




#NOTES
#Files by command is not an executable file , if you really wanted to not use the command 'bash' then just make the file: chmod 700 -> turning it executable
#The {Shebang} - Bash is popular but its not the only shell around, if someone tries to execute this on another shell it wouldn't work
#There's a way - Every line should begin with the interpretor line known as 'shebang'
#The line tells the system which command processor should handle this script

#!/usr/bin/env bash - tells only executable with bash and it always has to be the first line of the file or it will be ignored
#other examples: !/usr/bin/env python/java.io/node
