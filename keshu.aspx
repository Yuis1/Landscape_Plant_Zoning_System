<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="keshu.aspx.cs" Inherits="keshu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="search">
        学名（拉丁名）：<br />
        <asp:TextBox ID="TextBox_l_species" runat="server" Width="171px"></asp:TextBox>
        <br />
        <br />
        种名：<br />
        <asp:TextBox ID="TextBox_species" runat="server" Width="171px"></asp:TextBox>
        <br />
        <br />
        科名：<br />
        <asp:TextBox ID="TextBox_family" runat="server" Width="171px"></asp:TextBox>
        <br />
        <br />
        属名：<br />
        <asp:TextBox ID="TextBox_genus" runat="server" Width="171px"></asp:TextBox>
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="myCBL" 
            RepeatDirection="Horizontal">
            <asp:ListItem Selected="True">模糊查询</asp:ListItem>
            <asp:ListItem>精确查询</asp:ListItem>
        </asp:RadioButtonList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查询" 
        EnableViewState="False" />
    <br />
        <div style="margin: 0px; padding: 0px; width: 171px">
            <b>说明：</b>指定的各个条件间关系为逻辑与，未指定的条件不会参与查询。</div>
    </div>
    <div id="t_result">
    <asp:Panel runat="server">&nbsp;<a href="tree_detail.aspx?mode=insert">添加树木</a>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
        <a href="flower_detail.aspx?mode=insert">添加草花</a> </asp:Panel>
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        EmptyDataText="本次搜索无结果。请尝试减少搜索条件。"  DataKeyNames="ID" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        
        
        
        
            style="font-family: 宋体, Arial, Helvetica, sans-serif; font: 16px 宋体; text-align: left; width: 680px; " 
            PageSize="20" onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle BackColor="#EFF3FB" Height="30px" HorizontalAlign="Center" />
        <Columns>
            <asp:BoundField DataField="学名" HeaderText="学名" >
            <ItemStyle Font-Italic="True" HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="科" HeaderText="科" />
            <asp:BoundField DataField="属" HeaderText="属" />
            <asp:BoundField DataField="种名" HeaderText="种名" />
            <asp:BoundField DataField="类别" HeaderText="类别" />
            <asp:HyperLinkField DataNavigateUrlFields="ID,Type" 
                DataNavigateUrlFormatString="{1}_detail.aspx?id={0}" HeaderText="详细信息" 
                Text="点击查看" Target="_blank" >
            </asp:HyperLinkField>
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#8A9DA2" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
            BorderStyle="Double" BorderWidth="3px" Height="22px" 
            HorizontalAlign="Center" />
        <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    
    </div>
</asp:Content>

