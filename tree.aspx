<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tree.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="myctl" Namespace="mycontrols" %>
<%@ Register assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" namespace="System.Web.UI.WebControls" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id='search'>
    <br />
    高度可达：<asp:TextBox ID="TextBox_max_high" runat="server" Width="64px" 
        EnableViewState="False" MaxLength="5"></asp:TextBox>
    米以上<br />
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ControlToValidate="TextBox_max_high" ErrorMessage="高度范围：0-32700" 
        MaximumValue="32700" MinimumValue="0" Type="Integer" 
        SetFocusOnError="True" Display="Dynamic"></asp:RangeValidator>
    <br />
        冠幅：<asp:DropDownList ID="DDList_width" runat="server" Width="53px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>&lt;6M</asp:ListItem>
        <asp:ListItem>6-10M</asp:ListItem>
        <asp:ListItem>&gt;10M</asp:ListItem>
    </asp:DropDownList>
    <br />
    树形：<asp:DropDownList ID="DDList_tree_form" runat="server" Width="65px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>圆柱形</asp:ListItem>
        <asp:ListItem>展开型</asp:ListItem>
        <asp:ListItem>圆球形</asp:ListItem>
        <asp:ListItem>尖塔型</asp:ListItem>
        <asp:ListItem>垂枝型</asp:ListItem>
        <asp:ListItem>纺锤形</asp:ListItem>
        <asp:ListItem>特殊型</asp:ListItem>
    </asp:DropDownList>
        <br />
    生长类型：<asp:DropDownList ID="DDList_growth_type" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>伟乔（&gt;30M）</asp:ListItem>
        <asp:ListItem>大乔（20~30M）</asp:ListItem>
        <asp:ListItem>中乔（11-20M）</asp:ListItem>
        <asp:ListItem>小乔（6~10M）</asp:ListItem>
        <asp:ListItem>灌木（&lt;6M）</asp:ListItem>
        <asp:ListItem>缠绕类藤蔓</asp:ListItem>
        <asp:ListItem>钩刺类藤蔓</asp:ListItem>
        <asp:ListItem>卷须及叶攀类藤蔓</asp:ListItem>
        <asp:ListItem>吸附类藤蔓</asp:ListItem>
    </asp:DropDownList>
    <br />
    生活习性：<asp:DropDownList ID="DDList_life_habit" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>落叶树种</asp:ListItem>
        <asp:ListItem>常绿树种</asp:ListItem>
        <asp:ListItem>半常绿树种</asp:ListItem>
    </asp:DropDownList>
    <br />
    树龄：可达<asp:TextBox ID="TextBox_age" runat="server" Width="37px" 
        EnableViewState="False" MaxLength="4"></asp:TextBox>年以上<br />
    <asp:RangeValidator ID="RangeValidator2" runat="server" 
        ControlToValidate="TextBox_age" ErrorMessage="树龄范围：0-9999" MaximumValue="9999" 
        MinimumValue="0" SetFocusOnError="True" Type="Integer" Display="Dynamic"></asp:RangeValidator>
    <br />
    生长速度：<asp:DropDownList ID="DDList_growing_race" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>快&gt;1M/年</asp:ListItem>
        <asp:ListItem>中0.3-1M/年</asp:ListItem>
        <asp:ListItem>慢&lt;0.3M/年</asp:ListItem>
    </asp:DropDownList>
    <br />
        <br />
        叶片观赏价值：<asp:DropDownList ID="DDList_leaf_ornamental" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>低</asp:ListItem>
            <asp:ListItem>中</asp:ListItem>
            <asp:ListItem>高</asp:ListItem>
        </asp:DropDownList>
    <br />
    叶色：<asp:DropDownList ID="DDList_leaf_color" runat="server" 
        EnableViewState="False" Height="16px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>叶色常绿</asp:ListItem>
        <asp:ListItem>叶色常黄绿</asp:ListItem>
        <asp:ListItem>叶色常红紫</asp:ListItem>
        <asp:ListItem>叶色常银白</asp:ListItem>
        <asp:ListItem>叶色常斑色</asp:ListItem>
        <asp:ListItem>叶表背二色</asp:ListItem>
        <asp:ListItem>春叶红色</asp:ListItem>
        <asp:ListItem>春叶黄绿色</asp:ListItem>
        <asp:ListItem>秋叶红色</asp:ListItem>
        <asp:ListItem>秋叶黄褐色</asp:ListItem>
    </asp:DropDownList>
    <br />
    开花类型：<asp:DropDownList ID="DDList_fw_type" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>先花后叶</asp:ListItem>
        <asp:ListItem>花叶同放</asp:ListItem>
        <asp:ListItem>叶后开花</asp:ListItem>
    </asp:DropDownList>
        <br />
        花感：<asp:DropDownList ID="DDList_flower_sense" runat="server" EnableViewState="false">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>弱</asp:ListItem>
        <asp:ListItem>中</asp:ListItem>
        <asp:ListItem>强</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
 
    花香：<asp:DropDownList ID="DDList_fragrance" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>有异味</asp:ListItem>
        <asp:ListItem>无味</asp:ListItem>
        <asp:ListItem>有微香</asp:ListItem>
        <asp:ListItem>香味较浓</asp:ListItem>
    </asp:DropDownList>
 
    <br />
    花色：<asp:DropDownList ID="DDList_fw_color" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>红色系</asp:ListItem>
        <asp:ListItem>黄色系</asp:ListItem>
        <asp:ListItem>橙色系</asp:ListItem>
        <asp:ListItem>蓝色系</asp:ListItem>
        <asp:ListItem>紫色系</asp:ListItem>
        <asp:ListItem>白色系</asp:ListItem>
        <asp:ListItem>多色系</asp:ListItem>
        <asp:ListItem>花色可变</asp:ListItem>
    </asp:DropDownList>
    <br />
    花期：<myctl:myCheckboxlist ID="myCBL_florescence" runat="server" 
            RepeatColumns="4" RepeatDirection="Horizontal">
            <asp:ListItem>一月</asp:ListItem>
            <asp:ListItem>二月</asp:ListItem>
            <asp:ListItem>三月</asp:ListItem>
            <asp:ListItem>四月</asp:ListItem>
            <asp:ListItem>五月</asp:ListItem>
            <asp:ListItem>六月</asp:ListItem>
            <asp:ListItem>七月</asp:ListItem>
            <asp:ListItem>八月</asp:ListItem>
            <asp:ListItem>九月</asp:ListItem>
            <asp:ListItem>十月</asp:ListItem>
            <asp:ListItem>十一月</asp:ListItem>
            <asp:ListItem>十二月</asp:ListItem>
         </myctl:myCheckboxlist>
         <asp:CheckBox ID="CB_is_fu_ornamental" Text="可观果" runat="server" 
        EnableViewState="False" />
    &nbsp;&nbsp;
    成熟时果色：<asp:DropDownList ID="DDList_fu_color" runat="server" 
        EnableViewState="False" style="margin-bottom: 0px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>红色</asp:ListItem>
        <asp:ListItem>黄橙色</asp:ListItem>
        <asp:ListItem>蓝紫色</asp:ListItem>
        <asp:ListItem>白色</asp:ListItem>
        <asp:ListItem>黑色</asp:ListItem>
        <asp:ListItem>褐色</asp:ListItem>
        <asp:ListItem>杂色</asp:ListItem>
    </asp:DropDownList>
    <br />
    果期：<myctl:myCheckboxlist ID="myCBL_fu_period" runat="server" 
            RepeatColumns="4" RepeatDirection="Horizontal" EnableViewState="False">
            <asp:ListItem>一月</asp:ListItem>
            <asp:ListItem>二月</asp:ListItem>
            <asp:ListItem>三月</asp:ListItem>
            <asp:ListItem>四月</asp:ListItem>
            <asp:ListItem>五月</asp:ListItem>
            <asp:ListItem>六月</asp:ListItem>
            <asp:ListItem>七月</asp:ListItem>
            <asp:ListItem>八月</asp:ListItem>
            <asp:ListItem>九月</asp:ListItem>
            <asp:ListItem>十月</asp:ListItem>
            <asp:ListItem>十一月</asp:ListItem>
            <asp:ListItem>十二月</asp:ListItem>
         </myctl:myCheckboxlist>
    
        枝干观赏类型：<asp:DropDownList ID="DDList_brh_ornamental" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>可观皮</asp:ListItem>
        <asp:ListItem>可观形</asp:ListItem>
        <asp:ListItem>可观附属物</asp:ListItem>
    </asp:DropDownList>
    <br />
    枝条颜色：<asp:DropDownList ID="DDList_brh_color" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>灰白色</asp:ListItem>
        <asp:ListItem>绿色</asp:ListItem>
        <asp:ListItem>黄色</asp:ListItem>
        <asp:ListItem>红色</asp:ListItem>
        <asp:ListItem>褐色</asp:ListItem>
        <asp:ListItem>斑驳色</asp:ListItem>
    </asp:DropDownList>
        <br />
    <br />
    水分：<myctl:myCheckboxlist ID="myCBL_water" runat="server" RepeatColumns="3" 
        RepeatDirection="Horizontal" EnableViewState="False">
        <asp:ListItem Value="湿生">湿生植物</asp:ListItem>
        <asp:ListItem Value="耐涝">耐涝植物</asp:ListItem>
        <asp:ListItem Value="中生">中生植物</asp:ListItem>
        <asp:ListItem Value="耐旱">耐旱植物</asp:ListItem>
        <asp:ListItem Value="旱生">旱生植物</asp:ListItem>
    </myctl:myCheckboxlist>
    光强：<myctl:myCheckboxlist ID="myCBL_light" runat="server" 
        RepeatDirection="Horizontal" RepeatColumns="2" EnableViewState="False">
        <asp:ListItem>阳性植物</asp:ListItem>
        <asp:ListItem>稍耐荫</asp:ListItem>
        <asp:ListItem>较耐荫</asp:ListItem>
        <asp:ListItem>喜阴植物</asp:ListItem>
        </myctl:myCheckboxlist>
    土壤：<myctl:myCheckboxlist ID="myCBL_soil" runat="server" RepeatColumns="2" 
        RepeatDirection="Horizontal" EnableViewState="False">
        <asp:ListItem>酸性土</asp:ListItem>
        <asp:ListItem>石灰质土</asp:ListItem>
        <asp:ListItem>耐盐碱地</asp:ListItem>
        <asp:ListItem>耐瘠薄土壤</asp:ListItem>
        <asp:ListItem>耐粘重土</asp:ListItem>
    </myctl:myCheckboxlist>

    耐寒性：可耐<asp:DropDownList ID="DDList_cold" runat="server" EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>低于-10</asp:ListItem>
        <asp:ListItem>-10</asp:ListItem>
        <asp:ListItem>-5</asp:ListItem>
        <asp:ListItem>0</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:DropDownList>
    ℃低温<br />
        <br />
        防护功能：<myctl:myCheckboxlist runat="server" ID="myCBL_protective" 
            RepeatDirection="Horizontal">
            <asp:ListItem>防风固沙</asp:ListItem>
            <asp:ListItem>防火</asp:ListItem>
            <asp:ListItem>抗雪压</asp:ListItem>
        </myctl:myCheckboxlist>
        抗污染：<myctl:myCheckboxlist ID="myCBL_res" runat="server" RepeatColumns="3">
        <asp:ListItem>氯气及氯化物</asp:ListItem>
        <asp:ListItem>光化学烟雾</asp:ListItem>
        <asp:ListItem>二氧化硫</asp:ListItem>
        <asp:ListItem>硫化氢</asp:ListItem>
        <asp:ListItem>氟化氢</asp:ListItem>
        <asp:ListItem>臭氧</asp:ListItem>
        <asp:ListItem>氨气</asp:ListItem>
        <asp:ListItem>粉尘</asp:ListItem>
            </myctl:myCheckboxlist>

            园林用途：<myctl:myCheckboxlist ID="myCBL_application" runat="server" 
        RepeatColumns="3" RepeatDirection="Horizontal">
               <asp:ListItem>独赏树</asp:ListItem>
               <asp:ListItem>庭荫树</asp:ListItem>
               <asp:ListItem>行道树</asp:ListItem>
               <asp:ListItem>防护林</asp:ListItem>
               <asp:ListItem>花灌木</asp:ListItem>
               <asp:ListItem>造型、绿篱</asp:ListItem>
               <asp:ListItem>垂直绿化</asp:ListItem>
               <asp:ListItem>地被</asp:ListItem>
               <asp:ListItem>盆景</asp:ListItem>
               <asp:ListItem>室内装饰</asp:ListItem>
              </myctl:myCheckboxlist> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="搜索" 
        EnableViewState="False" />
    <br />
    说明：指定的各个条件间关系为逻辑与，未指定的条件不会参与查询。</div>

<div id='t_resoult'>
    在<asp:Label ID="Label_region" runat="server" Text="所有" CssClass="validate"></asp:Label>&nbsp;<asp:Label ID="Label_city" runat="server" Text="所有县市" CssClass="validate"></asp:Label>的<span 
        class="validate">树木</span>筛选结果：<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        EmptyDataText="本次搜索无结果。请尝试减少搜索条件。"  DataKeyNames="ID" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        
        
        
        style="font-family: 宋体, Arial, Helvetica, sans-serif; font: 16px 宋体; text-align: left; width: 690px; " 
        onpageindexchanging="GridView1_PageIndexChanging" PageSize="30">
        <RowStyle BackColor="#EFF3FB" Height="30px" />
        <Columns>
            <asp:BoundField DataField="学名" HeaderText="学名" >
            <ItemStyle Font-Italic="True" />
            </asp:BoundField>
            <asp:BoundField DataField="科" HeaderText="科" />
            <asp:BoundField DataField="属" HeaderText="属" />
            <asp:BoundField DataField="种名" HeaderText="种名" />
            <asp:BoundField DataField="在该分区记录中" HeaderText="在该分区记录中" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="在该城镇记录中" HeaderText="在该城镇记录中" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="ID" 
                DataNavigateUrlFormatString="tree_detail.aspx?id={0}" HeaderText="详细信息" 
                Text="点击查看" Target="_blank" >
            <ItemStyle HorizontalAlign="Center" />
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
    
    <br />
    
</div>
</asp:Content>

