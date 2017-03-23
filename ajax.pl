#!"C:\xampp\perl\bin\perl.exe"
#!/usr/bin/perl


use DBI;

# Make up a pulldown menu of all known appointments
my $DSN = 'driver={SQL Server};Server=localhost;Database=PerlDemo;UID=app-user;PWD=D4rthV4d3r82$';
my $db_handle = DBI->connect("DBI:ODBC:$DSN") or die "$DBI::errstr\n";

use CGI;

my $cgi = CGI->new;

print $cgi->header('application/json;charset=UTF-8');

my $id = $cgi->param('data_id');    
 my $data = $cgi->param('name'); 
 my $time = $cgi->param('time'); 
  
   
    my $finaldate = $Year . '-' . $Month . '-' . $Date;  
  
my $query = "insert into appointments (date, time, description) values ('$finaldate','$time','$data')";
$db_handle -> do($query);
#$action = "Record saved - $query";
  
 print $id