<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div id="flow_right" style="width: 150px; float: right; clear: right">
            <a href="keshu.aspx">点此按科属检索</a></div>
            <div id="flow_left" style="width: 600px; float: left; clear: left">

                    请选择园林绿化植物分区：<asp:DropDownList ID="DDList_region" runat="server" 
                        AutoPostBack="True" EnableViewState="False" 
                        onselectedindexchanged="DDList_region_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="region1">大兴安岭及小兴安岭北部分区</asp:ListItem>
                        <asp:ListItem Value="region2">东北中部平原及山地分区</asp:ListItem>
                        <asp:ListItem Value="region3">内蒙古北部分区</asp:ListItem>
                        <asp:ListItem Value="region4">新疆北部分区（北疆分区）</asp:ListItem>
                        <asp:ListItem Value="region5">东北南部平原及华北北部山地、高原分区</asp:ListItem>
                        <asp:ListItem Value="region6">大西北分区（蒙、宁、甘、疆分区）</asp:ListItem>
                        <asp:ListItem Value="region7">华北北部平原及黄土高原分区</asp:ListItem>
                        <asp:ListItem Value="region8">华北南部平原、秦岭南坡之北部及四川北部分区</asp:ListItem>
                        <asp:ListItem Value="region9">华中北部（平原、丘陵及秦巴地区）分区</asp:ListItem>
                        <asp:ListItem Value="region10">华中南部（东南丘陵、四川盆地、云贵高原）分区</asp:ListItem>
                        <asp:ListItem Value="region11">华南分区</asp:ListItem>
                        <asp:ListItem Value="region12">台湾北部分区</asp:ListItem>
                        <asp:ListItem Value="region13">台湾南部分区</asp:ListItem>
                        <asp:ListItem Value="region14">广东南端及海南岛分区</asp:ListItem>
                        <asp:ListItem Value="region15">滇西南部分区</asp:ListItem>
                        <asp:ListItem Value="region16">南海诸岛分区</asp:ListItem>
                        <asp:ListItem Value="region17">青藏温带及寒漠分区</asp:ListItem>
                        <asp:ListItem Value="region18">青藏北暖温带及寒漠分区</asp:ListItem>
                        <asp:ListItem Value="region19">青藏中暖温带及寒漠分区</asp:ListItem>
                        <asp:ListItem Value="region20">青藏南暖温带及寒漠分区</asp:ListItem>
                    </asp:DropDownList>
<div class="style3">
            请选择城市：<asp:DropDownList ID="DDList_city" runat="server" 
                AppendDataBoundItems="True" DataSourceID="SqlDataSource1" 
                DataTextField="c_name" DataValueField="c_name" EnableViewState="False" 
                onselectedindexchanged="DDList_city_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp; 请选择检索类别：<asp:DropDownList ID="DDList_Type" runat="server" AutoPostBack="True" 
                EnableViewState="False" 
                onselectedindexchanged="DDList_Type_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>树木</asp:ListItem>
                <asp:ListItem>草花</asp:ListItem>
            </asp:DropDownList>
          </div>

            </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FloraConnectionString %>" 
            SelectCommand="SELECT [c_name] FROM [cities] WHERE ([region] = @region)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DDList_region" Name="region" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </ContentTemplate>
   
    </asp:UpdatePanel>
    
    <p style="text-align:center">
        <img alt="" src="img/NationalPlant.jpg"  /></p>
    <p style="text-align:right">
        引自陈有民 - 中国园林绿化树种区域规划&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <a href="Map.htm">查看详细分区</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    </asp:Content>




