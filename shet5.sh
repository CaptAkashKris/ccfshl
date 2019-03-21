process=ps -e -o pmem=,pcpu=,pid=,user=,comm= |sort -r -k 1 
while read size cpu pid user comm
do
#// Include code for comparing the mem and cpu consumption and killing the corresponding
#process
echo "$process"
if [ $size -gt 0.1 ]; then
kill -9 $pid
fi
done
