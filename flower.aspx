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
    ��ߣ�<asp:TextBox ID="TextBox_max_high" runat="server" Width="64px" 
         MaxLength="5"></asp:TextBox>
    CM ����<br />
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ControlToValidate="TextBox_max_high" ErrorMessage="�߶ȷ�Χ��0-32700" 
        MaximumValue="32700" MinimumValue="0" Type="Integer" 
        SetFocusOnError="True" Display="Dynamic"></asp:RangeValidator>
    <br />
        ���<asp:DropDownList ID="DDList_width" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>&lt;10CM</asp:ListItem>
        <asp:ListItem>10-30CM</asp:ListItem>
        <asp:ListItem>30-60CM</asp:ListItem>
        <asp:ListItem>60-100CM</asp:ListItem>
        <asp:ListItem>&gt;1M</asp:ListItem>
    </asp:DropDownList>
    <br />
    �������ͣ�<asp:DropDownList ID="DDList_growth_type" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>һ��������</asp:ListItem>
        <asp:ListItem>����������</asp:ListItem>
        <asp:ListItem>�޸�����</asp:ListItem>
        <asp:ListItem>�������</asp:ListItem>
    </asp:DropDownList>
        <br />
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
        <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        �������ͣ�<myctl:myCheckboxlist runat="server" ID="myCBL_ornamental_type" 
            RepeatDirection="Horizontal" AutoPostBack="true" 
                    onselectedindexchanged="myCBL_ornamental_type_SelectedIndexChanged">
            <asp:ListItem>��Ҷ</asp:ListItem>
            <asp:ListItem>�ۻ�</asp:ListItem>
            <asp:ListItem>�۹�</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
                  </myctl:myCheckboxlist>

                <asp:Panel ID="Panel_leaf" runat="server" Visible="False">
                    Ҷɫ��<asp:DropDownList ID="DDList_leaf_color" runat="server" 
                        EnableViewState="False">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Ҷɫ����</asp:ListItem>
                        <asp:ListItem>Ҷɫ���Ұ�</asp:ListItem>
                        <asp:ListItem>Ҷɫ������</asp:ListItem>
                        <asp:ListItem>Ҷɫ������</asp:ListItem>
                        <asp:ListItem>Ҷɫ����ɫ</asp:ListItem>
                        <asp:ListItem>Ҷɫ��ʻ���</asp:ListItem>
                        <asp:ListItem>Ҷ����ɫ</asp:ListItem>
                    </asp:DropDownList>
                </asp:Panel>
  <asp:Panel ID="Panel_flower" runat="server" Visible="False">
    ��ɫ��<asp:DropDownList ID="DDList_fw_color" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>��ɫϵ</asp:ListItem>
        <asp:ListItem>��ɫϵ</asp:ListItem>
        <asp:ListItem>��ɫϵ</asp:ListItem>
        <asp:ListItem>��ɫϵ</asp:ListItem>
        <asp:ListItem>��ɫϵ</asp:ListItem>
        <asp:ListItem>��ɫϵ</asp:ListItem>
        <asp:ListItem>��ɫϵ</asp:ListItem>
        <asp:ListItem>��ɫ�ɱ�</asp:ListItem>
    </asp:DropDownList>
    <br />
        ���㣺<asp:DropDownList ID="DDList_fragrance" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>����ζ</asp:ListItem>
        <asp:ListItem>��ζ</asp:ListItem>
        <asp:ListItem>��΢��</asp:ListItem>
        <asp:ListItem>��ζ��Ũ</asp:ListItem>
    </asp:DropDownList>
      <br />
    ���ڣ�<myctl:myCheckboxlist ID="myCBL_florescence" runat="server" BorderStyle="Solid" 
            RepeatColumns="4" RepeatDirection="Horizontal">
            <asp:ListItem>һ��</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>ʮ��</asp:ListItem>
            <asp:ListItem>ʮһ��</asp:ListItem>
            <asp:ListItem>ʮ����</asp:ListItem>
         </myctl:myCheckboxlist>
 

                
  </asp:Panel>
<asp:Panel ID="Panel_fruit" runat="server" Visible="False">
    ��ɫ��<asp:DropDownList ID="DDList_fu_color" runat="server" 
        EnableViewState="False" style="margin-bottom: 0px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>��ɫ</asp:ListItem>
        <asp:ListItem>�Ƴ�ɫ</asp:ListItem>
        <asp:ListItem>����ɫ</asp:ListItem>
        <asp:ListItem>��ɫ</asp:ListItem>
        <asp:ListItem>��ɫ</asp:ListItem>
        <asp:ListItem>��ɫ</asp:ListItem>
        <asp:ListItem>��ɫ</asp:ListItem>
    </asp:DropDownList>
    <br />
    ���ڣ�<myctl:myCheckboxlist ID="myCBL_fu_period" runat="server" BorderStyle="Solid" 
            RepeatColumns="4" RepeatDirection="Horizontal" EnableViewState="False">
            <asp:ListItem>һ��</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>ʮ��</asp:ListItem>
            <asp:ListItem>ʮһ��</asp:ListItem>
            <asp:ListItem>ʮ����</asp:ListItem>
         </myctl:myCheckboxlist>

</asp:Panel>
                <br />
    ˮ�֣�
                <myctl:myCheckboxlist ID="myCBL_water" runat="server" RepeatColumns="3" 
        RepeatDirection="Horizontal" EnableViewState="False" AutoPostBack="True" 
                    onselectedindexchanged="myCBL_water_SelectedIndexChanged">
                    <asp:ListItem Value="��ˮ">��ˮֲ��</asp:ListItem>
                    <asp:ListItem Value="Ư��">Ư��ֲ��</asp:ListItem>
                    <asp:ListItem Value="��ˮ">��ˮֲ��</asp:ListItem>
                    <asp:ListItem Value="ͦˮ">ͦˮֲ��</asp:ListItem>
                    <asp:ListItem Value="ʪ��">ʪ��ֲ��</asp:ListItem>
                    <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                    <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                </myctl:myCheckboxlist>
                <asp:Panel ID="Panel_water" runat="server" Visible="False">
                    ����Ҫ��<asp:DropDownList ID="DDList_velocity" runat="server" Height="16px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>����ˮ</asp:ListItem>
                        <asp:ListItem>�農ˮ����</asp:ListItem>
                        <asp:ListItem>���߽Կ�</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    ˮ��ɴ<asp:TextBox ID="TextBox_water_depth" runat="server" MaxLength="4" 
                        Width="45px"></asp:TextBox>
                    CM ����<br />
                    <asp:RangeValidator ID="RangeValidator3" runat="server" 
                        ControlToValidate="TextBox_water_depth" Display="Dynamic" 
                        ErrorMessage="ˮ�Χ:0-3000CM" MaximumValue="3000" MinimumValue="0" 
                        SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                </asp:Panel>

            </ContentTemplate>
        </asp:UpdatePanel>
    ��ǿ��<myctl:myCheckboxlist ID="myCBL_light" runat="server" 
        RepeatDirection="Horizontal" RepeatColumns="2" EnableViewState="False">
        <asp:ListItem>����ֲ��</asp:ListItem>
        <asp:ListItem>����ֲ��(����ֲ��)</asp:ListItem>
        <asp:ListItem>����ֲ��</asp:ListItem>
        </myctl:myCheckboxlist>
    ������<myctl:myCheckboxlist ID="myCBL_soil" runat="server" RepeatColumns="2" 
        RepeatDirection="Horizontal" EnableViewState="False">
        <asp:ListItem>������</asp:ListItem>
        <asp:ListItem>ʯ������</asp:ListItem>
        <asp:ListItem>���μ��</asp:ListItem>
        <asp:ListItem>��񤱡����</asp:ListItem>
        <asp:ListItem>��ճ����</asp:ListItem>
    </myctl:myCheckboxlist>
        �¶�Ҫ��<asp:DropDownList ID="DDList_cold" runat="server" EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>�ͺ�����(�͵���-10��)</asp:ListItem>
        <asp:ListItem>ϲ������(��-5������)</asp:ListItem>
        <asp:ListItem>���»���(�Ͷ���˪��)</asp:ListItem>
        <asp:ListItem>ϲ�»���(��5������)</asp:ListItem>
        <asp:ListItem>���Ȼ���(��10������)</asp:ListItem>
    </asp:DropDownList>
        <br />
        ����Ⱦ������<myctl:myCheckboxlist ID="myCBL_res" runat="server" RepeatColumns="3">
        <asp:ListItem>�������Ȼ���</asp:ListItem>
        <asp:ListItem>�⻯ѧ����</asp:ListItem>
        <asp:ListItem>��������</asp:ListItem>
        <asp:ListItem>����</asp:ListItem>
        <asp:ListItem>������</asp:ListItem>
        <asp:ListItem>����</asp:ListItem>
        <asp:ListItem>����</asp:ListItem>
        <asp:ListItem>�۳�</asp:ListItem>
        </myctl:myCheckboxlist>
    ԰����;��<myctl:myCheckboxlist ID="myCBL_application" runat="server" 
        RepeatColumns="2" RepeatDirection="Horizontal">
               <asp:ListItem>��̳</asp:ListItem>
               <asp:ListItem>����</asp:ListItem>
               <asp:ListItem>����</asp:ListItem>
               <asp:ListItem>��Ⱥ</asp:ListItem>
               <asp:ListItem>��̨</asp:ListItem>
               <asp:ListItem>��ʯ԰</asp:ListItem>
               <asp:ListItem>��ԫ�����</asp:ListItem>
               <asp:ListItem>��ƺ���ر�</asp:ListItem>
               <asp:ListItem>ˮ������</asp:ListItem>
              </myctl:myCheckboxlist>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="����" 
        EnableViewState="False" />
    <br />
    ˵����ָ���ĸ����������ϵΪ�߼��룬δָ����������������ѯ��</div>

<div id='t_resoult'>
    ��<asp:Label ID="Label_region" runat="server" Text="" CssClass="validate"></asp:Label>&nbsp;<asp:Label ID="Label_city" runat="server" Text="" CssClass="validate"></asp:Label>��<span 
        class="validate">����</span>ɸѡ�����<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        EmptyDataText="���������޽�����볢�Լ�������������"  DataKeyNames="ID" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        
        
        
        style="font-family: ����, Arial, Helvetica, sans-serif; font: 16px ����; text-align: left; width: 690px; " 
        onpageindexchanging="GridView1_PageIndexChanging" PageSize="30">
        <RowStyle BackColor="#EFF3FB" Height="30px" />
        <Columns>
            <asp:BoundField DataField="ѧ��" HeaderText="ѧ��" >
            <ItemStyle Font-Italic="True" />
            </asp:BoundField>
            <asp:BoundField DataField="��" HeaderText="��" />
            <asp:BoundField DataField="��" HeaderText="��" />
            <asp:BoundField DataField="����" HeaderText="����" />
            <asp:BoundField DataField="�ڸ÷�����¼��" HeaderText="�ڸ÷�����¼��" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="�ڸó����¼��" HeaderText="�ڸó����¼��" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:HyperLinkField DataNavigateUrlFields="ID" 
                DataNavigateUrlFormatString="flower_detail.aspx?id={0}" HeaderText="��ϸ��Ϣ" 
                Text="����鿴" Target="_blank" >
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

