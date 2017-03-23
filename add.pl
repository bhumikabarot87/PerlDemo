#!"C:\xampp\perl\bin\perl.exe"
#!/usr/bin/perl

$var1 = "This is defined";
use DBI;

# Make up a pulldown menu of all known appointments
my $DSN = 'driver={SQL Server};Server=localhost;Database=PerlDemo;UID=app-user;PWD=D4rthV4d3r82$';
$db_handle = DBI->connect("DBI:ODBC:$DSN") or die "$DBI::errstr\n";
 

# Send out the header and form



print  "Content-type:text/html\n\n";

print  "<html><head><title></title>";
print  "<link href ='https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css' rel = 'stylesheet'>";
         
      print "<script src ='https://code.jquery.com/jquery-1.10.2.js'></script>";
      print "<script src ='https://code.jquery.com/ui/1.10.4/jquery-ui.js'></script>";
	  
	  p
	   
	   print "<script LANGUAGE=\"Javascript\"> ";

	print "function CheckForm_onclick()";
	print "{ alert('test'); }"; 
	#print "function loadNew(){   document.getElementById('divNew').style.display = 'inline';document.getElementById('btnNew').style.display = 'none'; }";
	#print "	function fnCancel(){ document.getElementById('divNew').style.display = 'none';document.getElementById('btnNew').style.display = 'inline';}";
		 
	
	
	 
	 

print "</SCRIPT>\n"; 

 print <<EOF;
<script>


print "</head>\n\n";

print "<form method='POST'>";
print "<div id='divNew' style='display:none'>";
print "<table> <tr><td colspan='2'>";
print "<input type='button' name='ADD' value='ADD' id='ADD' onclick='return fnsubmit()'>";
print "<input type=button value=CANCEL onclick='fnCancel()'>";
print "</td><tr><td>DATE</td><td><input name=date id=date></td></tr>";

# If the form was properly submitted, save the data
if ($input{"ADD"} eq "ADD") {
 
 
$query = "insert into appointments (date, time, description) values (".
                "$input{date},".
                " \"$input{time}\",".
                " $inputdescription})";
$db_handle -> do(query);
$action = "Record saved - query";

# If the form has not been submitted, ask for data
}  else {
#$action = "Please complete form";
}

if ($input{"Submit"} eq "Submit") {
 
	   
$getkey = $db_handle -> prepare("select * 
        from appointments");
$getkey -> execute ;


while (@row = $getkey->fetchrow)  {
my @data = split( "\t", @row );
}

# If the form has not been submitted, ask for data
}  else {
#$action = "Please complete form";
}
 
 use CGI;
 my $cgi = CGI->new;
 my $param = $cgi->param('name'); 
	    
		
		if ($param eq "")
		{
$getkey = $db_handle -> prepare("select * 
        from appointments");
		 
$getkey -> execute ;
}

 
# Get back and output the results

#print "<form method=POST>";
  
  print "<br><br><br>	<input name=des id=des>&nbsp;";
print "<input type=button name=search value=Search id='Search' onclick='return fnSearch()'  ><hr>";
