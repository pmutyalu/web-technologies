$len=@ARGV;
for($i=0;$i<$len;$i++)
{
if(-e $ARGV[$i])
{
if(-T $ARGV[$i])
{
print"$ARGV[$i] is a text file\n";
}
else
{
print"$ARGV[$i] is a special file\n";
}
}
else
{
print"$ARGV[$i] does not exists";
}  
}
