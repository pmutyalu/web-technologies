use DBT
$con=DBI->connect('DBI:mysql:ss:itserver2','student','stuent')
or die "unable to connect to mysql: $DBI::errstr\n";

$query=$con->prepare("SELECT * FROM first");
$result=$query->execute()
or die "unable to execute sql:$query->errstr";
while (($id,$name)=$query->fetchrow_array())
{
print "Id: $id Name: $name\n";
}
$query->finish();

