<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style>
*{ margin:0px; padding:0px }
ol.timeline
{ 
list-style:none
}
ol.timeline li
{ 
position:relative;
border-bottom:1px #dedede dashed; 
padding:8px; 
}
.morebox
{
font-weight:bold;
color:#333333;
text-align:center;
border:solid 1px #333333;
padding:8px;
margin-top:8px;
margin-bottom:8px;
-moz-border-radius: 6px;
-webkit-border-radius: 6px;
}
.morebox a{ color:#333333; text-decoration:none}
.morebox a:hover{ color:#333333; text-decoration:none}
#container{margin-left:60px; width:580px }
</style>
    <title>Untitled Page</title>
    <script type='text/javascript' src='http://code.jquery.com/jquery-1.4.4.min.js'></script>
    <script type="text/javascript">
$(function() 
{
$('.more').live("click",function() 
{
var ID = $(this).attr("id");
if(ID)
{
$("#more"+ID).html('<img src="moreajax.gif" />');

$.ajax({
type: "POST",
url: "test2.aspx",
data: "lastmsg="+ ID, 
cache: false,
success: function(html){
$("ol#updates").append(html);
$("#more"+ID).remove(); // removing old more button
}
});
}
else
{
$(".morebox").html('The End');// no results
}

return false;
});
});
</script>
    
    
</head>
<body>
    <form id="form1" runat="server">
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
        SelectCommand="SELECT top 5 [ID], [post_title] FROM [asp_posts] order by ID desc">
    </asp:SqlDataSource>
    <br />
  
    </form>
</body>
</html>
