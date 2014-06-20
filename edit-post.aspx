<%@ Page Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="edit-post.aspx.cs" Inherits="edit_post" Title="Asp Lessons - Edit Post" %>
<%@ Register TagPrefix="cc"
    Namespace="Winthusiasm.HtmlEditor"
    Assembly="Winthusiasm.HtmlEditor" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <h2> Edit post</h2>
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
    <asp:Button ID="btnUpdate" runat="server" Text="Update"  
         Width="100" Height="30" onclick="btnUpdate_Click" />
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
        SelectCommand="SELECT * FROM [asp_posts] WHERE ([ID] = @ID)" 
        UpdateCommand="asp_update_post" UpdateCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="Decimal" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="content" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

