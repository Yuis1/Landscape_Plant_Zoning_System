<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tree.aspx.cs" Inherits="Default2" %>
<%@ Register TagPrefix="myctl" Namespace="mycontrols" %>
<%@ Register assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" namespace="System.Web.UI.WebControls" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id='search'>
    <br />
    �߶ȿɴ<asp:TextBox ID="TextBox_max_high" runat="server" Width="64px" 
        EnableViewState="False" MaxLength="5"></asp:TextBox>
    ������<br />
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ControlToValidate="TextBox_max_high" ErrorMessage="�߶ȷ�Χ��0-32700" 
        MaximumValue="32700" MinimumValue="0" Type="Integer" 
        SetFocusOnError="True" Display="Dynamic"></asp:RangeValidator>
    <br />
        �ڷ���<asp:DropDownList ID="DDList_width" runat="server" Width="53px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>&lt;6M</asp:ListItem>
        <asp:ListItem>6-10M</asp:ListItem>
        <asp:ListItem>&gt;10M</asp:ListItem>
    </asp:DropDownList>
    <br />
    ���Σ�<asp:DropDownList ID="DDList_tree_form" runat="server" Width="65px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Բ����</asp:ListItem>
        <asp:ListItem>չ����</asp:ListItem>
        <asp:ListItem>Բ����</asp:ListItem>
        <asp:ListItem>������</asp:ListItem>
        <asp:ListItem>��֦��</asp:ListItem>
        <asp:ListItem>�Ĵ���</asp:ListItem>
        <asp:ListItem>������</asp:ListItem>
    </asp:DropDownList>
        <br />
    �������ͣ�<asp:DropDownList ID="DDList_growth_type" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>ΰ�ǣ�&gt;30M��</asp:ListItem>
        <asp:ListItem>���ǣ�20~30M��</asp:ListItem>
        <asp:ListItem>���ǣ�11-20M��</asp:ListItem>
        <asp:ListItem>С�ǣ�6~10M��</asp:ListItem>
        <asp:ListItem>��ľ��&lt;6M��</asp:ListItem>
        <asp:ListItem>����������</asp:ListItem>
        <asp:ListItem>����������</asp:ListItem>
        <asp:ListItem>���뼰Ҷ��������</asp:ListItem>
        <asp:ListItem>����������</asp:ListItem>
    </asp:DropDownList>
    <br />
    ����ϰ�ԣ�<asp:DropDownList ID="DDList_life_habit" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>��Ҷ����</asp:ListItem>
        <asp:ListItem>��������</asp:ListItem>
        <asp:ListItem>�볣������</asp:ListItem>
    </asp:DropDownList>
    <br />
    ���䣺�ɴ�<asp:TextBox ID="TextBox_age" runat="server" Width="37px" 
        EnableViewState="False" MaxLength="4"></asp:TextBox>������<br />
    <asp:RangeValidator ID="RangeValidator2" runat="server" 
        ControlToValidate="TextBox_age" ErrorMessage="���䷶Χ��0-9999" MaximumValue="9999" 
        MinimumValue="0" SetFocusOnError="True" Type="Integer" Display="Dynamic"></asp:RangeValidator>
    <br />
    �����ٶȣ�<asp:DropDownList ID="DDList_growing_race" runat="server">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>��&gt;1M/��</asp:ListItem>
        <asp:ListItem>��0.3-1M/��</asp:ListItem>
        <asp:ListItem>��&lt;0.3M/��</asp:ListItem>
    </asp:DropDownList>
    <br />
        <br />
        ҶƬ���ͼ�ֵ��<asp:DropDownList ID="DDList_leaf_ornamental" runat="server">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>��</asp:ListItem>
            <asp:ListItem>��</asp:ListItem>
            <asp:ListItem>��</asp:ListItem>
        </asp:DropDownList>
    <br />
    Ҷɫ��<asp:DropDownList ID="DDList_leaf_color" runat="server" 
        EnableViewState="False" Height="16px">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>Ҷɫ����</asp:ListItem>
        <asp:ListItem>Ҷɫ������</asp:ListItem>
        <asp:ListItem>Ҷɫ������</asp:ListItem>
        <asp:ListItem>Ҷɫ������</asp:ListItem>
        <asp:ListItem>Ҷɫ����ɫ</asp:ListItem>
        <asp:ListItem>Ҷ����ɫ</asp:ListItem>
        <asp:ListItem>��Ҷ��ɫ</asp:ListItem>
        <asp:ListItem>��Ҷ����ɫ</asp:ListItem>
        <asp:ListItem>��Ҷ��ɫ</asp:ListItem>
        <asp:ListItem>��Ҷ�ƺ�ɫ</asp:ListItem>
    </asp:DropDownList>
    <br />
    �������ͣ�<asp:DropDownList ID="DDList_fw_type" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>�Ȼ���Ҷ</asp:ListItem>
        <asp:ListItem>��Ҷͬ��</asp:ListItem>
        <asp:ListItem>Ҷ�󿪻�</asp:ListItem>
    </asp:DropDownList>
        <br />
        ���У�<asp:DropDownList ID="DDList_flower_sense" runat="server" EnableViewState="false">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>��</asp:ListItem>
        <asp:ListItem>��</asp:ListItem>
        <asp:ListItem>ǿ</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
 
    ���㣺<asp:DropDownList ID="DDList_fragrance" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>����ζ</asp:ListItem>
        <asp:ListItem>��ζ</asp:ListItem>
        <asp:ListItem>��΢��</asp:ListItem>
        <asp:ListItem>��ζ��Ũ</asp:ListItem>
    </asp:DropDownList>
 
    <br />
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
    ���ڣ�<myctl:myCheckboxlist ID="myCBL_florescence" runat="server" 
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
         <asp:CheckBox ID="CB_is_fu_ornamental" Text="�ɹ۹�" runat="server" 
        EnableViewState="False" />
    &nbsp;&nbsp;
    ����ʱ��ɫ��<asp:DropDownList ID="DDList_fu_color" runat="server" 
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
    ���ڣ�<myctl:myCheckboxlist ID="myCBL_fu_period" runat="server" 
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
    
        ֦�ɹ������ͣ�<asp:DropDownList ID="DDList_brh_ornamental" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>�ɹ�Ƥ</asp:ListItem>
        <asp:ListItem>�ɹ���</asp:ListItem>
        <asp:ListItem>�ɹ۸�����</asp:ListItem>
    </asp:DropDownList>
    <br />
    ֦����ɫ��<asp:DropDownList ID="DDList_brh_color" runat="server" 
        EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>�Ұ�ɫ</asp:ListItem>
        <asp:ListItem>��ɫ</asp:ListItem>
        <asp:ListItem>��ɫ</asp:ListItem>
        <asp:ListItem>��ɫ</asp:ListItem>
        <asp:ListItem>��ɫ</asp:ListItem>
        <asp:ListItem>�߲�ɫ</asp:ListItem>
    </asp:DropDownList>
        <br />
    <br />
    ˮ�֣�<myctl:myCheckboxlist ID="myCBL_water" runat="server" RepeatColumns="3" 
        RepeatDirection="Horizontal" EnableViewState="False">
        <asp:ListItem Value="ʪ��">ʪ��ֲ��</asp:ListItem>
        <asp:ListItem Value="����">����ֲ��</asp:ListItem>
        <asp:ListItem Value="����">����ֲ��</asp:ListItem>
        <asp:ListItem Value="�ͺ�">�ͺ�ֲ��</asp:ListItem>
        <asp:ListItem Value="����">����ֲ��</asp:ListItem>
    </myctl:myCheckboxlist>
    ��ǿ��<myctl:myCheckboxlist ID="myCBL_light" runat="server" 
        RepeatDirection="Horizontal" RepeatColumns="2" EnableViewState="False">
        <asp:ListItem>����ֲ��</asp:ListItem>
        <asp:ListItem>������</asp:ListItem>
        <asp:ListItem>������</asp:ListItem>
        <asp:ListItem>ϲ��ֲ��</asp:ListItem>
        </myctl:myCheckboxlist>
    ������<myctl:myCheckboxlist ID="myCBL_soil" runat="server" RepeatColumns="2" 
        RepeatDirection="Horizontal" EnableViewState="False">
        <asp:ListItem>������</asp:ListItem>
        <asp:ListItem>ʯ������</asp:ListItem>
        <asp:ListItem>���μ��</asp:ListItem>
        <asp:ListItem>��񤱡����</asp:ListItem>
        <asp:ListItem>��ճ����</asp:ListItem>
    </myctl:myCheckboxlist>

    �ͺ��ԣ�����<asp:DropDownList ID="DDList_cold" runat="server" EnableViewState="False">
        <asp:ListItem></asp:ListItem>
        <asp:ListItem>����-10</asp:ListItem>
        <asp:ListItem>-10</asp:ListItem>
        <asp:ListItem>-5</asp:ListItem>
        <asp:ListItem>0</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
    </asp:DropDownList>
    �����<br />
        <br />
        �������ܣ�<myctl:myCheckboxlist runat="server" ID="myCBL_protective" 
            RepeatDirection="Horizontal">
            <asp:ListItem>�����ɳ</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>��ѩѹ</asp:ListItem>
        </myctl:myCheckboxlist>
        ����Ⱦ��<myctl:myCheckboxlist ID="myCBL_res" runat="server" RepeatColumns="3">
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
        RepeatColumns="3" RepeatDirection="Horizontal">
               <asp:ListItem>������</asp:ListItem>
               <asp:ListItem>ͥ����</asp:ListItem>
               <asp:ListItem>�е���</asp:ListItem>
               <asp:ListItem>������</asp:ListItem>
               <asp:ListItem>����ľ</asp:ListItem>
               <asp:ListItem>���͡�����</asp:ListItem>
               <asp:ListItem>��ֱ�̻�</asp:ListItem>
               <asp:ListItem>�ر�</asp:ListItem>
               <asp:ListItem>�辰</asp:ListItem>
               <asp:ListItem>����װ��</asp:ListItem>
              </myctl:myCheckboxlist> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="����" 
        EnableViewState="False" />
    <br />
    ˵����ָ���ĸ����������ϵΪ�߼��룬δָ����������������ѯ��</div>

<div id='t_resoult'>
    ��<asp:Label ID="Label_region" runat="server" Text="����" CssClass="validate"></asp:Label>&nbsp;<asp:Label ID="Label_city" runat="server" Text="��������" CssClass="validate"></asp:Label>��<span 
        class="validate">��ľ</span>ɸѡ�����<br />
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
                DataNavigateUrlFormatString="tree_detail.aspx?id={0}" HeaderText="��ϸ��Ϣ" 
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

