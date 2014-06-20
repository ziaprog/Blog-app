<%@ Page Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Asp Lessons - " EnableViewState="true"  %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="pager.css" rel="stylesheet" type="text/css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
         Featured- new- most viewed-comments
        <br />
        <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="1" 
             onactivetabchanged="TabContainer1_ActiveTabChanged" AutoPostBack="True">
            <asp:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
            <HeaderTemplate>
            All
            </HeaderTemplate>
            <ContentTemplate>
                <asp:SqlDataSource ID="allSqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                    SelectCommand="asp_get_titles" SelectCommandType="StoredProcedure">
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataSourceID="allSqlDataSource1" GridLines="None" 
                    ShowHeader="False">
                    <Columns>
                        <asp:TemplateField HeaderText="post_title" SortExpression="post_title">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("post_title") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="18px" 
                                    ForeColor="#D74750" NavigateUrl='<%# Eval("ID","post.aspx?id={0}") %>' 
                                    Text='<%# Eval("post_title") %>'></asp:HyperLink>
                                <br />
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle CssClass="pgr" />
                </asp:GridView>
                &nbsp;
            </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
            <HeaderTemplate>Featured</HeaderTemplate>
                <ContentTemplate>
                    <asp:SqlDataSource ID="featSqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                        SelectCommand="asp_featured" SelectCommandType="StoredProcedure">
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="featSqlDataSource2" GridLines="None" 
                        ShowHeader="False">
                        <Columns>
                            <asp:TemplateField HeaderText="post_title" SortExpression="post_title">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("post_title") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="18px" 
                                        ForeColor="#D74750" NavigateUrl='<%# Eval("ID","post.aspx?id={0}") %>' 
                                        Text='<%# Eval("post_title") %>'></asp:HyperLink>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle CssClass="pgr" />
                    </asp:GridView>
                </ContentTemplate>
                
                
                
            </asp:TabPanel>
        </asp:TabContainer>
    </asp:Content>

