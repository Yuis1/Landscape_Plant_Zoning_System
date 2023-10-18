<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="flower.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="myctl" Namespace="mycontrols" %>
<%@ Register assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" namespace="System.Web.UI.WebControls" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        </style>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id='search'>
    <br />
    株高：<asp:TextBox ID="TextBox_max_high" runat="server" Width="64px" 
         MaxLength="5"></asp:TextBox>
    CM 以上<br />
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ControlToValidate="TextBox_max_high" ErrorMessage="高度范围：0-32700" 
        MaximumValue="32700" MinimumValue="0" Type="Integer" 
        SetFocusOnError="True" Display="Dynamic"></asp:RangeValidator>
    <br />
        蓬径：<asp:DropDownList ID="DDList_width" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>&lt;10CM</asp:ListItem>
        <asp:ListItem>10-30CM</asp:ListItem>
        <asp:ListItem>30-60CM</asp:ListItem>
        <asp:ListItem>60-100CM</asp:ListItem>
        <asp:ListItem>&gt;1M</asp:ListItem>
    </asp:DropDownList>
    <br />
    生长类型：<asp:DropDownList ID="DDList_growth_type" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>一年生花卉</asp:ListItem>
        <asp:ListItem>二年生花卉</asp:ListItem>
        <asp:ListItem>宿根花卉</asp:ListItem>
        <asp:ListItem>球根花卉</asp:ListItem>
    </asp:DropDownList>
        <br />
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        观赏类型：<myctl:myCheckboxlist runat="server" ID="myCBL_ornamental_type" 
            RepeatDirection="Horizontal" AutoPostBack="true" 
                    onselectedindexchanged="myCBL_ornamental_type_SelectedIndexChanged">
            <asp:ListItem>观叶</asp:ListItem>
            <asp:ListItem>观花</asp:ListItem>
            <asp:ListItem>观果</asp:ListItem>
            <asp:ListItem>观形</asp:ListItem>
                  </myctl:myCheckboxlist>

                <asp:Panel ID="Panel_leaf" runat="server" Visible="False">
                    叶色：<asp:DropDownList ID="DDList_leaf_color" runat="server" 
                        EnableViewState="False">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>叶色常绿</asp:ListItem>
                        <asp:ListItem>叶色常灰白</asp:ListItem>
                        <asp:ListItem>叶色常黄绿</asp:ListItem>
                        <asp:ListItem>叶色常红紫</asp:ListItem>
                        <asp:ListItem>叶色常斑色</asp:ListItem>
                        <asp:ListItem>叶色多彩或多变</asp:ListItem>
                        <asp:ListItem>叶表背二色</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
  <asp:Panel ID="Panel_flower" runat="server" Visible="False">
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
        花香：<asp:DropDownList ID="DDList_fragrance" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>有异味</asp:ListItem>
        <asp:ListItem>无味</asp:ListItem>
        <asp:ListItem>有微香</asp:ListItem>
        <asp:ListItem>香味较浓</asp:ListItem>
    </asp:DropDownList>
      <br />
    花期：<myctl:myCheckboxlist ID="myCBL_florescence" runat="server" BorderStyle="Solid" 
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
 

                
  </asp:Panel>
<asp:Panel ID="Panel_fruit" runat="server" Visible="False">
    果色：<asp:DropDownList ID="DDList_fu_color" runat="server" 
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
    果期：<myctl:myCheckboxlist ID="myCBL_fu_period" runat="server" BorderStyle="Solid" 
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

</asp:Panel>
                <br />
    水分：
                <myctl:myCheckboxlist ID="myCBL_water" runat="server" RepeatColumns="3" 
        RepeatDirection="Horizontal" EnableViewState="False" AutoPostBack="True" 
                    onselectedindexchanged="myCBL_water_SelectedIndexChanged">
                    <asp:ListItem Value="沉水">沉水植物</asp:ListItem>
                    <asp:ListItem Value="漂浮">漂浮植物</asp:ListItem>
                    <asp:ListItem Value="浮水">浮水植物</asp:ListItem>
                    <asp:ListItem Value="挺水">挺水植物</asp:ListItem>
                    <asp:ListItem Value="湿生">湿生植物</asp:ListItem>
                    <asp:ListItem Value="中生">中生植物</asp:ListItem>
                    <asp:ListItem Value="旱生">旱生植物</asp:ListItem>
                </myctl:myCheckboxlist>
                <asp:Panel ID="Panel_water" runat="server" Visible="False">
                    流速要求：<asp:DropDownList ID="DDList_velocity" runat="server" Height="16px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>需流水</asp:ListItem>
                        <asp:ListItem>需静水或缓流</asp:ListItem>
                        <asp:ListItem>两者皆可</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    水深可达：<asp:TextBox ID="TextBox_water_depth" runat="server" MaxLength="4" 
                        Width="45px"></asp:TextBox>
                    CM 以上<br />
                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                        ControlToValidate="TextBox_water_depth" Display="Dynamic" 
                        ErrorMessage="水深范围:0-3000CM" MaximumValue="3000" MinimumValue="0" 
                        SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                </asp:Panel>

            </ContentTemplate>
        </asp:UpdatePanel>
    光强：<myctl:myCheckboxlist ID="myCBL_light" runat="server" 
        RepeatDirection="Horizontal" RepeatColumns="2" EnableViewState="False">
        <asp:ListItem>阳性植物</asp:ListItem>
        <asp:ListItem>中性植物(耐荫植物)</asp:ListItem>
        <asp:ListItem>阴性植物</asp:ListItem>
        </myctl:myCheckboxlist>
    土壤：<myctl:myCheckboxlist ID="myCBL_soil" runat="server" RepeatColumns="2" 
        RepeatDirection="Horizontal" EnableViewState="False">
        <asp:ListItem>酸性土</asp:ListItem>
        <asp:ListItem>石灰质土</asp:ListItem>
        <asp:ListItem>耐盐碱地</asp:ListItem>
        <asp:ListItem>耐瘠薄土壤</asp:ListItem>
        <asp:ListItem>耐粘重土</asp:ListItem>
    </myctl:myCheckboxlist>
        温度要求：<asp:DropDownList ID="DDList_cold" runat="server" EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>耐寒花卉(耐低于-10度)</asp:ListItem>
        <asp:ListItem>喜凉花卉(耐-5度左右)</asp:ListItem>
        <asp:ListItem>中温花卉(耐短期霜冻)</asp:ListItem>
        <asp:ListItem>喜温花卉(需5度以上)</asp:ListItem>
        <asp:ListItem>耐热花卉(需10度以上)</asp:ListItem>
    </asp:DropDownList>
        <br />
        抗污染能力：<myctl:myCheckboxlist ID="myCBL_res" runat="server" RepeatColumns="3">
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
        RepeatColumns="2" RepeatDirection="Horizontal">
               <asp:ListItem>花坛</asp:ListItem>
               <asp:ListItem>花境</asp:ListItem>
               <asp:ListItem>花丛</asp:ListItem>
               <asp:ListItem>花群</asp:ListItem>
               <asp:ListItem>花台</asp:ListItem>
               <asp:ListItem>岩石园</asp:ListItem>
               <asp:ListItem>篱垣及棚架</asp:ListItem>
               <asp:ListItem>草坪、地被</asp:ListItem>
               <asp:ListItem>水生花卉</asp:ListItem>
              </myctl:myCheckboxlist>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="搜索" 
        EnableViewState="False" />
    <br />
    说明：指定的各个条件间关系为逻辑与，未指定的条件不会参与查询。</div>

<div id='t_resoult'>
    在<asp:Label ID="Label_region" runat="server" Text="" CssClass="validate"></asp:Label>&nbsp;<asp:Label ID="Label_city" runat="server" Text="" CssClass="validate"></asp:Label>的<span 
        class="validate">花卉</span>筛选结果：<br />
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
                DataNavigateUrlFormatString="flower_detail.aspx?id={0}" HeaderText="详细信息" 
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

