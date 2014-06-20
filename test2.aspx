<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test2.aspx.cs" Inherits="test2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

*{ margin:0px; padding:0px }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
        
            SelectCommand="SELECT top 5 [ID], [post_title] FROM [asp_posts] where ID<@ID order by ID desc">
        <SelectParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
