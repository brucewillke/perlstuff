die print "usage $0 [process]\n" unless $ARGV[0];
 
@stat=`ps aux | grep $ARGV[0] | grep -v $0`;
$cnt=scalar(@stat);
 
if ($cnt > 0) {
   print "Message: $ARGV[0] running: $cnt\n";
   print "Statistic: $cnt\n";
   exit 0;
} else {
   print "Message: $ARGV[0] not running\n";
   exit 1;
}