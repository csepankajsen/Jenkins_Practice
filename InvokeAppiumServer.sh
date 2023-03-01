#!/bin/bash
cd ~
echo "Written by Psen to InokeAppiumServer"

result=expr`ps aux | grep appium.*4723`
# echo $result
if [[ $result == *"-a 0.0.0.0"* ]]
then
    echo 'server already running...'
else
    echo 'Starting server...'
    # appium -a 0.0.0.0 -p 4723 & disown----not working
    appium -a 0.0.0.0 -p 4723 >output.log 2>&1 &    
fi



