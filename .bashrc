# Have history only save original lines, not duplicates
export HISTCONTROL=ignoreboth:erasedups

# User specific aliases and functions 
alias hist='history | grep'

# At the cost of ugly results, make bc handle fp division by default
export BC_ENV_ARGS="${HOME}/.bc"

# countdown and stopwatch timers
function countdown() 
{
    if [ ! -z "$1" ]; then
        date1=$((`date +%s` + $1)); 
        while [ "$date1" -ge `date +%s` ]; do 
            echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\r";
            sleep 0.1
        done            
    else
        echo "Usage: countdown <seconds>"
    fi
}

function stopwatch()
{
    date1=`date +%s`; 
    while true; do 
        echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r"; 
        sleep 0.1
    done
}
