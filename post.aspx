<%@ Page Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="post.aspx.cs" Inherits="post" Title="Untitled Page" EnableViewState="false"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
        <asp:Label ID="lblContent" runat="server" ></asp:Label>
    
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
            SelectCommand="SELECT [post_title], [post_content] FROM [asp_posts] WHERE ([ID] = @ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
        </asp:Content>

