<%@ Page Language="C#" AutoEventWireup="true" CodeFile="flash.aspx.cs" Inherits="flash" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
{
 $('#button').click(function()
 {
  $('#flashContent').html($('#uname').val());
  $('#flashContent').fadeIn("slow", function ()
  {
   setTimeout(function(){$('#flashContent').fadeOut("slow", function ()
   {
    $('#flashContent').remove();
   });} ,2000);
   
  });
 });
});
</script>


<style>
.body{
background-color:#000000;
text-align:center;
margin:15px;
}
.main{
background-color:#FFFFFF;
font-family:Tahoma;
width:500px;
text-align:left;
padding:10px;
-moz-border-radius:6px;
}

#flashContent{
width:500px;
padding-top:8px;
padding-bottom:8px;
background-color: #fff;
font-weight:bold;
font-size:20px;
-moz-border-radius: 6px;
-webkit-border-radius: 6px;
display:none;
margin-bottom:10px;
}
#uname{
border:#000000 solid 1px;
font-size:16px;
height:25px;
width:300px;
}
#button{
-moz-border-radius-bottomleft:6px;
-moz-border-radius-bottomright:6px;
-moz-border-radius-topleft:6px;
-moz-border-radius-topright:6px;
background-color:#0060A1;
border:#003399 solid 1px;
color:#FFFFFF;
font-size:16px;
font-weight:bold;
padding-left:10px;
padding-right:10px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
