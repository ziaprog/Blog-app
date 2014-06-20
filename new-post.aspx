<%@ Page Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="new-post.aspx.cs" Inherits="new_post" Title="Asp Lessons - New post" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register TagPrefix="cc"
    Namespace="Winthusiasm.HtmlEditor"
    Assembly="Winthusiasm.HtmlEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2> Add new post</h2>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <br />
    <asp:TextBox ID="txtTitle" runat="server" Width="431px" Font-Size="14pt"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtTitle" ErrorMessage="*title cannot be blank"></asp:RequiredFieldValidator>
    <br />
    <cc:HtmlEditor ID="Editor1"
               runat="server"
               Height="600px"
               Width="700px" />
   
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="Editor1" ErrorMessage="*content cannot be empty"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="True" ShowSummary="False" />
   
    <br />
    <asp:Button ID="btnPublish" runat="server" Text="Publish"  
        onclick="btnPublish_Click" Width="100" Height="30" />
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
        InsertCommand="asp_publish" InsertCommandType="StoredProcedure" 
       >
        <InsertParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="content" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    </asp:Content>

