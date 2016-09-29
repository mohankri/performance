# performance
``` using Intel PCM tools ```
###
  * Download https://software.intel.com/en-us/articles/intel-performance-counter-monitor 
  * sudo apt-get install msr-tools
  * echo 0 > /proc/sys/kernel/nmi_watchdog 
  * sudo modprobe msr
