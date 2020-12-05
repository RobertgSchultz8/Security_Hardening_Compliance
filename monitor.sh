#creates a directory where this info will be stored
#if directory already exists, this will be skipped
mkdir -p health
#check subsystems
iostat > health/subsystems.log
#check memory
#I suppose you could also check this with "less proc/meminfo"
cat /proc/meminfo > health/memstat.log
#check cpu
mpstat > health/cpu.log
#check processes
pstree > health/processes.log
#check network status
uptime > health/netstatus.log
#informs users where information can be found
echo 'Subsystems info can be found with "less health/subsystems.log".'
echo 'Memory info can be found with "less health/memstat.log".'
echo 'CPU info can be found with "less health/cpu.log".'
echo 'Processes info can be found with "less health/processes.log".'
echo 'Network status info can be found with "less health/netstatus.log".'
echo 'When you are done viewing info, press "q".'
