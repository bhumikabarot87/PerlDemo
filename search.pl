#!"C:\xampp\perl\bin\perl.exe"
#!/usr/bin/perl


use DBI;

# Make up a pulldown menu of all known appointments
my $DSN = 'driver={SQL Server};Server=localhost;Database=PerlDemo;UID=app-user;PWD=D4rthV4d3r82$';

my $db_handle = DBI->connect("DBI:ODBC:$DSN") or die "$DBI::errstr\n";

use strict;
use warnings;


use CGI;

my $cgi = CGI->new;

print $cgi->header('application/json;charset=UTF-8');
 
 my $data = $cgi->param('name'); 
 
 
  
	   

