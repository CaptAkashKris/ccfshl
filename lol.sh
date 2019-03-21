# !/bin/bash
process=$(ps -e -o pmem=,pcpu=,pid=,user=,comm= |sort -r -k 1 )
#// Include code for comparing the mem and cpu consumption and killing the corresponding
#process
echo "$process"

