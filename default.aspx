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
            <a href="keshu.aspx">��˰���������</a></div>
            <div id="flow_left" style="width: 600px; float: left; clear: left">

                    ��ѡ��԰���̻�ֲ�������<asp:DropDownList ID="DDList_region" runat="server" 
                        AutoPostBack="True" EnableViewState="False" 
                        onselectedindexchanged="DDList_region_SelectedIndexChanged">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="region1">���˰��뼰С�˰��뱱������</asp:ListItem>
                        <asp:ListItem Value="region2">�����в�ƽԭ��ɽ�ط���</asp:ListItem>
                        <asp:ListItem Value="region3">���ɹű�������</asp:ListItem>
                        <asp:ListItem Value="region4">�½���������������������</asp:ListItem>
                        <asp:ListItem Value="region5">�����ϲ�ƽԭ����������ɽ�ء���ԭ����</asp:ListItem>
                        <asp:ListItem Value="region6">�������������ɡ������ʡ���������</asp:ListItem>
                        <asp:ListItem Value="region7">��������ƽԭ��������ԭ����</asp:ListItem>
                        <asp:ListItem Value="region8">�����ϲ�ƽԭ����������֮�������Ĵ���������</asp:ListItem>
                        <asp:ListItem Value="region9">���б�����ƽԭ�����꼰�ذ͵���������</asp:ListItem>
                        <asp:ListItem Value="region10">�����ϲ����������ꡢ�Ĵ���ء��ƹ��ԭ������</asp:ListItem>
                        <asp:ListItem Value="region11">���Ϸ���</asp:ListItem>
                        <asp:ListItem Value="region12">̨�山������</asp:ListItem>
                        <asp:ListItem Value="region13">̨���ϲ�����</asp:ListItem>
                        <asp:ListItem Value="region14">�㶫�϶˼����ϵ�����</asp:ListItem>
                        <asp:ListItem Value="region15">�����ϲ�����</asp:ListItem>
                        <asp:ListItem Value="region16">�Ϻ������</asp:ListItem>
                        <asp:ListItem Value="region17">����´�����Į����</asp:ListItem>
                        <asp:ListItem Value="region18">��ر�ů�´�����Į����</asp:ListItem>
                        <asp:ListItem Value="region19">�����ů�´�����Į����</asp:ListItem>
                        <asp:ListItem Value="region20">�����ů�´�����Į����</asp:ListItem>
                    </asp:DropDownList>
<div class="style3">
            ��ѡ����У�<asp:DropDownList ID="DDList_city" runat="server" 
                AppendDataBoundItems="True" DataSourceID="SqlDataSource1" 
                DataTextField="c_name" DataValueField="c_name" EnableViewState="False" 
                onselectedindexchanged="DDList_city_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            &nbsp; ��ѡ��������<asp:DropDownList ID="DDList_Type" runat="server" AutoPostBack="True" 
                EnableViewState="False" 
                onselectedindexchanged="DDList_Type_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>��ľ</asp:ListItem>
                <asp:ListItem>�ݻ�</asp:ListItem>
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
        ���Գ����� - �й�԰���̻���������滮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <a href="Map.htm">�鿴��ϸ����</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    </asp:Content>




