<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="flower_detail.aspx.cs" Inherits="flower_detail" %>
<%@ Register TagPrefix="myctl" Namespace="mycontrols" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" CssClass="formview" 
        DataKeyNames="p_id" DataSourceID="LinqDataSource1" HorizontalAlign="Center" 
        oniteminserted="FormView1_ItemInserted" 
        oniteminserting="FormView1_ItemInserting" 
        onitemupdating="FormView1_ItemUpdating">
        <EditItemTemplate>
            <table class="table_content" rules="all">
                <tr>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 267px">
                        &nbsp;<asp:TextBox ID="familyTextBox" runat="server" Text='<%# Bind("family") %>' 
                            Width="110px" />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="familyTextBox" 
                            Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">����д����</asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 286px">
                        <asp:TextBox ID="genusTextBox" runat="server" Text='<%# Bind("genus") %>' />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="genusTextBox" 
                            Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">����д����</asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        ѧ��</td>
                    <td>
                        <asp:TextBox ID="l_speciesTextBox" runat="server" AutoPostBack="True" 
                            ontextchanged="l_speciesTextBox_TextChanged" Text='<%# Bind("l_species") %>' 
                            Width="181px" />
                        <span class="validate">* </span>(������)
                        <br />
                        <asp:Label ID="Label_latinNameCheck" runat="server" CssClass="validate" 
                            Text=" "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="l_speciesTextBox" Display="Dynamic" ErrorMessage="����дѧ��" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 267px">
                        &nbsp;<asp:TextBox ID="speciesTextBox" runat="server" 
                            Text='<%# Bind("species") %>' />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="speciesTextBox" 
                            Display="Dynamic" ErrorMessage="����д����" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        ���</td>
                    <td style="width: 286px">
                        <asp:DropDownList ID="DDList_Type" runat="server" Enabled="False" 
                            EnableViewState="False" SelectedValue='<%# Bind("type") %>'>
                            <asp:ListItem Selected="True">�ݻ�</asp:ListItem>
                        </asp:DropDownList>
                        <span class="validate">* </span>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="DDList_Type" Display="Dynamic" ErrorMessage="����д���" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        �ֲ����� 
                    </td>
                    <td colspan="5">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                ��ѡ�������<asp:DropDownList ID="DDList_region" runat="server" AutoPostBack="True" 
                                    EnableViewState="False" 
                                    onselectedindexchanged="DDList_region_SelectedIndexChanged">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem Value="region1">001 ���˰��뼰С�˰��뱱������</asp:ListItem>
                                    <asp:ListItem Value="region2">002 �����в�ƽԭ��ɽ�ط���</asp:ListItem>
                                    <asp:ListItem Value="region3">003 ���ɹű�������</asp:ListItem>
                                    <asp:ListItem Value="region4">004 �½���������������������</asp:ListItem>
                                    <asp:ListItem Value="region5">005 �����ϲ�ƽԭ����������ɽ�ء���ԭ����</asp:ListItem>
                                    <asp:ListItem Value="region6">006 �������������ɡ������ʡ���������</asp:ListItem>
                                    <asp:ListItem Value="region7">007 ��������ƽԭ��������ԭ����</asp:ListItem>
                                    <asp:ListItem Value="region8">008 �����ϲ�ƽԭ����������֮�������Ĵ���������</asp:ListItem>
                                    <asp:ListItem Value="region9">009 ���б�����ƽԭ�����꼰�ذ͵���������</asp:ListItem>
                                    <asp:ListItem Value="region10">010 �����ϲ����������ꡢ�Ĵ���ء��ƹ��ԭ������</asp:ListItem>
                                    <asp:ListItem Value="region11">011 ���Ϸ���</asp:ListItem>
                                    <asp:ListItem Value="region12">012 ̨�山������</asp:ListItem>
                                    <asp:ListItem Value="region13">013 ̨���ϲ�����</asp:ListItem>
                                    <asp:ListItem Value="region14">014 �㶫�϶˼����ϵ�����</asp:ListItem>
                                    <asp:ListItem Value="region15">015 �����ϲ�����</asp:ListItem>
                                    <asp:ListItem Value="region16">016 �Ϻ������</asp:ListItem>
                                    <asp:ListItem Value="region17">017 ����´�����Į����</asp:ListItem>
                                    <asp:ListItem Value="region18">018 ��ر�ů�´�����Į����</asp:ListItem>
                                    <asp:ListItem Value="region19">019 �����ů�´�����Į����</asp:ListItem>
                                    <asp:ListItem Value="region20">020 �����ů�´�����Į����</asp:ListItem>
                                </asp:DropDownList>
                                <span class="validate">�Ӵ�������ѡ������б�<input id="Button_SelectAll" type="button"
                                    value="ȫѡ" /></span><br />
                                <myctl:myCheckboxlist ID="myCBL_city_selecting" runat="server" 
                                    EnableViewState="False" RepeatColumns="12" RepeatDirection="Horizontal" 
                                    RepeatLayout="Flow">
                                </myctl:myCheckboxlist>

  <script type="text/javascript">
    var chkList;  //�ȶ���ȫ�ֱ���,��ʾ��ѡ��ĳ����label����
    var chkIndex; //��ѡ��ĳ����checkbox����
    var Label_cities_values; //�����б��ı����Ӧ������
    Sys.WebForms.PageRequestManager.getInstance().add_pageLoaded(cities_onload);

    //checkbox��onclick�¼������ڸ��¡���ѡ����
    function chkClick() {
        var tempSelected = new Array();   //��ǰѡ�е�label����
        var tempNotSelected = new Array();//��ǰδѡ�е�label����
        //���յ�cities���飬��ʼֵΪ�ı�����cities����,ÿ��click���������»�ȡ
        var labelNowList = document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value.split(","); 
        for (var i = 0; i < chkList.length; i++) {   
            if (chkIndex[i].checked)  //������ѡ��
            {
                tempSelected = tempSelected.concat(chkList[i].innerText); //��ȡ���б�ѡ�е���
            }
            else tempNotSelected = tempNotSelected.concat(chkList[i].innerText); //��ȡ����δѡ�е���
        }
        var finalList = noRepeatJoin(labelNowList, tempSelected);  //��ӹ�ѡ����Ŀ
        finalList = removeRepeat(finalList, tempNotSelected); //ȥ����ȡ����ѡ����Ŀ
        finalList = finalList.join(",");  //����������,�ָ����ַ���
        if (finalList.indexOf(",") == 0) { finalList = finalList.substring(1, finalList.length); } //ȥ��ǰ��һ�����ţ�����еĻ�
        if (finalList.lastIndexOf(",") == 0) { finalList = finalList.substring(0, finalList.length - 1); }
  
        //��ѡ������б���ʾ�������б��ı�����
        document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value = finalList;
    }

    function noRepeatJoin(arrayOriginal, arrayToAdd) {   //�����������飬ȥ���ظ�Ԫ��
        var tempArray = arrayOriginal;  //������ʱ���飬��ʼֵΪԭ������
        for (var x in arrayToAdd) { //������Ҫ��ӵ�����
            var isIN = false;  //��Ҫ��ӵ��Ƿ�����ԭʼ������
            for (var y in arrayOriginal) {  //����ԭ������
                if (arrayOriginal[y] == arrayToAdd[x])
                { isIN = true; break; }  //��������ظ�����ֹarrayOriginalѭ��,�������Ҫ����������һ��Ԫ��
            }
            if (isIN == false) { tempArray = tempArray.concat(arrayToAdd[x]); }
        }
        return tempArray;
    }
    function removeRepeat(arrayOriginal, arrayToRemove) {  //����arrayOriginal,�Ƴ�������arrayToRemove�ظ�����
        var tempArray = arrayOriginal;
        var count = 0;  //��ɾ���������
        for (var x in arrayOriginal) {
            for (var y in arrayToRemove) {
                if (arrayOriginal[x] == arrayToRemove[y]) {
                    tempArray.splice(x-count, 1); //����ظ���ɾ������
                    count = count + 1; //��Ϊɾ���ᵼ��tempArray�����
                    break;
                 } 
            }
        }
        return tempArray;

    }
    
    function cities_onload() {                //����myCBL_city_selecting����ʱ���Զ���ѡ����Label_cities���ڵ����Ϊ����checkbox���onclick�¼��������Զ����¡���ѡ����
        if (document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting").ClientID %>') !== null) {
            //�Ȼ�ȡ�����е�checkbox��˵
            var tempchkList = document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting").ClientID %>');
            chkList = tempchkList.getElementsByTagName('LABEL');  //�ؼ�������,��checkbox��label�ֿ���ȡ
            chkIndex = tempchkList.getElementsByTagName('INPUT');
            var Label_cities =document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value;
            Label_cities_values = Label_cities.split(",");
            //����ѡ��״̬��ע������ѭ����˳�������chkList�ŵ��ڲ㣬�����ܱ�֤����ȡ����ȷ���
            //��Ϊ��������˶����ֵͬ�������ֵ���ǰ�����ȷ��������
            for (var j = 0; j < chkList.length; j++) {  //�Զ���ѡ����Label_cities���ڵ���
                for (var i = 0; i < Label_cities_values.length; i++) {
                    if (Label_cities_values[i] == chkList[j].innerText) {
                        chkIndex[j].checked = true;
                        break;
                    }
                    else {
                        chkIndex[j].checked = false;
                    }
                }

            }
            for (var k = 0; k < chkIndex.length; k++) {  //Ϊ����checkbox���onclick�¼�����
                    chkIndex[k].onclick = chkClick;
                }
                document.getElementById("Button_SelectAll").onclick = SelectAll_onclick;

        }

        function SelectAll_onclick() {  //���ȫѡ��ťʱ����
            if (document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting").ClientID %>') !== null) {
                //ѡ�е��������飬��ʱ�б�
                var tempSelected=new Array();
                for (var x = 0; x < chkIndex.length; x++) {  //��Ϊ�Ѽ������б���ڣ���Ȼ������cities_onload()�¼����ʿɷ���ʹ��chkIndex��chkList
                    if (chkIndex[x].checked == false) {
                        chkIndex[x].checked = true;
                        tempSelected = tempSelected.concat(chkList[x].innerText);
                    }
                    //Ϊ�˱���chkClick�¼���ֱ�ӱ༭�����ı�����ɵ�Ӱ�죬�������»�ȡһ������ı����
                    var Label_cities = document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value;
                    Label_cities_values = Label_cities.split(",");
                    var finalList = noRepeatJoin(tempSelected, Label_cities_values);  //��ӹ�ѡ����Ŀ
                    finalList = finalList.join(",");  //����������,�ָ����ַ���
                    if (finalList.indexOf(",") == 0) { finalList = finalList.substring(1, finalList.length); } //ȥ��ǰ��һ�����ţ�����еĻ�
                    if (finalList.lastIndexOf(",") == 0) { finalList = finalList.substring(0, finalList.length - 1); }
                    //��ѡ������б���ʾ�������б��ı�����
                    document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value = finalList;
                }
            }
        }
    }

       </script>

                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        ��֪�ֲ�����<span class="validate">��ֱ���޸��������׳�����Ǳ�Ҫ������ֱ�ӸĶ�������ı���</span><br />
                        <asp:TextBox ID="Label_cities" runat="server" Height="120px" 
                            Text='<%# Bind("cities") %>' TextMode="MultiLine" Width="860px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ���<br />
                        <br />
                        �</td>
                    <td style="width: 267px">
                        �ɴ�<asp:TextBox ID="TextBox_max_high" runat="server" EnableViewState="False" 
                            MaxLength="5" Text='<%#Bind("max_high") %>' Width="64px" Wrap="False"></asp:TextBox>
                        <span class="validate">CM<br />
                        </span>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox_max_high" Display="Dynamic" 
                            ErrorMessage="�߶ȷ�Χ��0-32700" MaximumValue="32700" MinimumValue="0" 
                            SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                        <br />
                        <br />
                        <asp:DropDownList ID="DDList_width" runat="server" 
                            SelectedValue='<%# Bind("width") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>&lt;10CM</asp:ListItem>
                            <asp:ListItem>10-30CM</asp:ListItem>
                            <asp:ListItem>30-60CM</asp:ListItem>
                            <asp:ListItem>60-100CM</asp:ListItem>
                            <asp:ListItem>&gt;1M</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ��������</td>
                    <td style="width: 286px">
                        <asp:DropDownList ID="DDList_growth_type" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("growth_type") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>һ��������</asp:ListItem>
                            <asp:ListItem>����������</asp:ListItem>
                            <asp:ListItem>�޸�����</asp:ListItem>
                            <asp:ListItem>�������</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ��������</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_ornamental_type" runat="server" 
                            CssClass="myCBL" EnableViewState="False" 
                            RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("ornamental_type") %>'>
                            <asp:ListItem>��Ҷ</asp:ListItem>
                            <asp:ListItem>�ۻ�</asp:ListItem>
                            <asp:ListItem>�۹�</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        Ҷɫ</td>
                    <td style="width: 267px">
                        <asp:DropDownList ID="DDList_leaf_color" runat="server" EnableViewState="False" 
                            Height="16px" SelectedValue='<%# Bind("leaf_color") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Ҷɫ����</asp:ListItem>
                            <asp:ListItem>Ҷɫ���Ұ�</asp:ListItem>
                            <asp:ListItem>Ҷɫ������</asp:ListItem>
                            <asp:ListItem>Ҷɫ������</asp:ListItem>
                            <asp:ListItem>Ҷɫ����ɫ</asp:ListItem>
                            <asp:ListItem>Ҷɫ��ʻ���</asp:ListItem>
                            <asp:ListItem>Ҷ����ɫ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ��ɫ</td>
                    <td style="width: 286px">
                        <myctl:myCheckboxlist ID="myCBL_fw_color" runat="server" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            RepeatLayout="Flow" SelectedValue='<%# Bind("fw_color") %>'>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫ�ɱ�</asp:ListItem>
                        </myctl:myCheckboxlist>
                        <br />
                        ��ѡ�������и�ɫƷ�֡�<br />
                        ��ɫϵ��һ�����ж�����ɫ��</td>
                    <td style="width: 36px">
                        ����<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        ����</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_florescence" runat="server" CssClass="myCBL" 
                            RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("florescence") %>'>
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
                        &nbsp;<asp:DropDownList ID="DDList_fragrance" runat="server" EnableViewState="False" 
                            SelectedValue='<%# Bind("fragrance") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>����ζ</asp:ListItem>
                            <asp:ListItem>��ζ</asp:ListItem>
                            <asp:ListItem>��΢��</asp:ListItem>
                            <asp:ListItem>��ζ��Ũ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ��ɫ</td>
                    <td style="width: 267px">
                        <asp:DropDownList ID="DDList_fu_color" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("fu_color") %>' 
                            style="margin-bottom: 0px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>�Ƴ�ɫ</asp:ListItem>
                            <asp:ListItem>����ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 286px">
                        <myctl:myCheckboxlist ID="myCBL_fu_period" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("fu_period") %>'>
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
                    </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ˮ��</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_water" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("water") %>'>
                            <asp:ListItem Value="��ˮ">��ˮֲ��</asp:ListItem>
                            <asp:ListItem Value="Ư��">Ư��ֲ��</asp:ListItem>
                            <asp:ListItem Value="��ˮ">��ˮֲ��</asp:ListItem>
                            <asp:ListItem Value="ͦˮ">ͦˮֲ��</asp:ListItem>
                            <asp:ListItem Value="ʪ��">ʪ��ֲ��</asp:ListItem>
                            <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                            <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        ˮ��ѡ��</td>
                    <td style="width: 286px">
                        ����Ҫ��<asp:DropDownList ID="DDList_velocity" runat="server" Height="16px" 
                            SelectedValue='<%# Bind("velocity") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>����ˮ</asp:ListItem>
                            <asp:ListItem>�農ˮ����</asp:ListItem>
                            <asp:ListItem>���߽Կ�</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        ˮ��ɴ<asp:TextBox ID="TextBox_water_depth" runat="server" MaxLength="4" 
                            Width="45px" Text='<%# Bind("water_depth") %>'></asp:TextBox>
                        CM ����<br />
                        <asp:RangeValidator ID="RangeValidator3" runat="server" 
                            ControlToValidate="TextBox_water_depth" Display="Dynamic" 
                            ErrorMessage="ˮ�Χ:0-3000CM" MaximumValue="3000" MinimumValue="0" 
                            SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </td>
                    <td style="width: 36px">
                        ��ǿ</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_light" runat="server" 
                            EnableViewState="False" RepeatColumns="2" 
                            SelectedValue='<%# Bind("light") %>' RepeatLayout="Flow">
                        <asp:ListItem>����ֲ��</asp:ListItem>
                        <asp:ListItem>����ֲ��(����ֲ��)</asp:ListItem>
                        <asp:ListItem>����ֲ��</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_soil" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" SelectedValue='<%# Bind("soil") %>'>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>ʯ������</asp:ListItem>
                            <asp:ListItem>���μ��</asp:ListItem>
                            <asp:ListItem>��񤱡����</asp:ListItem>
                            <asp:ListItem>��ճ����</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        �¶�Ҫ��</td>
                    <td style="width: 286px">
                        <br />
                        <asp:DropDownList ID="DDList_cold" runat="server" EnableViewState="False" 
                            SelectedValue='<%# Bind("cold") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>�ͺ�����(�͵���-10��)</asp:ListItem>
                            <asp:ListItem>ϲ������(��-5������)</asp:ListItem>
                            <asp:ListItem>���»���(�Ͷ���˪��)</asp:ListItem>
                            <asp:ListItem>ϲ�»���(��5������)</asp:ListItem>
                            <asp:ListItem>���Ȼ���(��10������)</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ����Ⱦ����</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_res" runat="server" CssClass="myCBL" 
                            RepeatColumns="3" SelectedValue='<%# Bind("res") %>' 
                            EnableViewState="False">
                            <asp:ListItem>�������Ȼ���</asp:ListItem>
                            <asp:ListItem>�⻯ѧ����</asp:ListItem>
                            <asp:ListItem>��������</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                            <asp:ListItem>�۳�</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        ԰����;</td>
                    <td colspan="3">
                        <myctl:myCheckboxlist ID="myCBL_application" runat="server" RepeatColumns="3" 
                            RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("application") %>' CssClass="myCBL" 
                            EnableViewState="False">
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
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ��ע</td>
                    <td colspan="5">
                        <asp:TextBox ID="remarkTextBox" runat="server" Height="40px" 
                            Text='<%# Bind("remark") %>' Width="860px" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬһ</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload1" runat="server" 
                            filename='<%# Bind("pic1") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬ��</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload2" runat="server" 
                            filename='<%# Bind("pic2") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬ��</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload3" runat="server" 
                            filename='<%# Bind("pic3") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬ��</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload4" runat="server" 
                            filename='<%# Bind("pic4") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬ��</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload5" runat="server" 
                            filename='<%# Bind("pic5") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬ��</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload6" runat="server" 
                            filename='<%# Bind("pic6") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="����" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="ȡ��" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="table_content" rules="all">
                <tr>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 267px">
                        &nbsp;<asp:TextBox ID="familyTextBox" runat="server" Text='<%# Bind("family") %>' 
                            Width="110px" />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="familyTextBox" 
                            Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">����д����</asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 286px">
                        <asp:TextBox ID="genusTextBox" runat="server" Text='<%# Bind("genus") %>' />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="genusTextBox" 
                            Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">����д����</asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        ѧ��</td>
                    <td>
                        <asp:TextBox ID="l_speciesTextBox" runat="server" AutoPostBack="True" 
                            ontextchanged="l_speciesTextBox_TextChanged" Text='<%# Bind("l_species") %>' 
                            Width="181px" />
                        <span class="validate">* </span>(������)
                        <br />
                        <asp:Label ID="Label_latinNameCheck" runat="server" CssClass="validate" 
                            Text=" "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="l_speciesTextBox" Display="Dynamic" ErrorMessage="����дѧ��" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 267px">
                        &nbsp;<asp:TextBox ID="speciesTextBox" runat="server" 
                            Text='<%# Bind("species") %>' />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="speciesTextBox" 
                            Display="Dynamic" ErrorMessage="����д����" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        ���</td>
                    <td style="width: 286px">
                        <asp:DropDownList ID="DDList_Type" runat="server" Enabled="False" 
                            EnableViewState="False" SelectedValue='<%# Bind("type") %>'>
                            <asp:ListItem Selected="True">�ݻ�</asp:ListItem>
                        </asp:DropDownList>
                        <span class="validate">* </span>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="DDList_Type" Display="Dynamic" ErrorMessage="����д���" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        �ֲ����� 
                    </td>
                    <td colspan="5">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                ��ѡ�������<asp:DropDownList ID="DDList_region1" runat="server" AutoPostBack="True" 
                                    EnableViewState="False" 
                                    onselectedindexchanged="DDList_region1_SelectedIndexChanged">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem Value="region1">001 ���˰��뼰С�˰��뱱������</asp:ListItem>
                                    <asp:ListItem Value="region2">002 �����в�ƽԭ��ɽ�ط���</asp:ListItem>
                                    <asp:ListItem Value="region3">003 ���ɹű�������</asp:ListItem>
                                    <asp:ListItem Value="region4">004 �½���������������������</asp:ListItem>
                                    <asp:ListItem Value="region5">005 �����ϲ�ƽԭ����������ɽ�ء���ԭ����</asp:ListItem>
                                    <asp:ListItem Value="region6">006 �������������ɡ������ʡ���������</asp:ListItem>
                                    <asp:ListItem Value="region7">007 ��������ƽԭ��������ԭ����</asp:ListItem>
                                    <asp:ListItem Value="region8">008 �����ϲ�ƽԭ����������֮�������Ĵ���������</asp:ListItem>
                                    <asp:ListItem Value="region9">009 ���б�����ƽԭ�����꼰�ذ͵���������</asp:ListItem>
                                    <asp:ListItem Value="region10">010 �����ϲ����������ꡢ�Ĵ���ء��ƹ��ԭ������</asp:ListItem>
                                    <asp:ListItem Value="region11">011 ���Ϸ���</asp:ListItem>
                                    <asp:ListItem Value="region12">012 ̨�山������</asp:ListItem>
                                    <asp:ListItem Value="region13">013 ̨���ϲ�����</asp:ListItem>
                                    <asp:ListItem Value="region14">014 �㶫�϶˼����ϵ�����</asp:ListItem>
                                    <asp:ListItem Value="region15">015 �����ϲ�����</asp:ListItem>
                                    <asp:ListItem Value="region16">016 �Ϻ������</asp:ListItem>
                                    <asp:ListItem Value="region17">017 ����´�����Į����</asp:ListItem>
                                    <asp:ListItem Value="region18">018 ��ر�ů�´�����Į����</asp:ListItem>
                                    <asp:ListItem Value="region19">019 �����ů�´�����Į����</asp:ListItem>
                                    <asp:ListItem Value="region20">020 �����ů�´�����Į����</asp:ListItem>
                                </asp:DropDownList>
                                <span class="validate">�Ӵ�������ѡ������б�<input id="Button_SelectAll1" type="button"
                                    value="ȫѡ" /></span><br />
                                <myctl:myCheckboxlist ID="myCBL_city_selecting1" runat="server" 
                                    EnableViewState="False" RepeatColumns="12" RepeatDirection="Horizontal" 
                                    RepeatLayout="Flow">
                                </myctl:myCheckboxlist>

  <script type="text/javascript">
      var chkList;  //�ȶ���ȫ�ֱ���,��ʾ��ѡ��ĳ����label����
      var chkIndex; //��ѡ��ĳ����checkbox����
      var Label_cities_values; //�����б��ı����Ӧ������
      Sys.WebForms.PageRequestManager.getInstance().add_pageLoaded(cities_onload);

      //checkbox��onclick�¼������ڸ��¡���ѡ����
      function chkClick() {
          var tempSelected = new Array();   //��ǰѡ�е�label����
          var tempNotSelected = new Array(); //��ǰδѡ�е�label����
          //���յ�cities���飬��ʼֵΪ�ı�����cities����,ÿ��click���������»�ȡ
          var labelNowList = document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value.split(",");
          for (var i = 0; i < chkList.length; i++) {
              if (chkIndex[i].checked)  //������ѡ��
              {
                  tempSelected = tempSelected.concat(chkList[i].innerText); //��ȡ���б�ѡ�е���
              }
              else tempNotSelected = tempNotSelected.concat(chkList[i].innerText); //��ȡ����δѡ�е���
          }
          var finalList = noRepeatJoin(labelNowList, tempSelected);  //��ӹ�ѡ����Ŀ
          finalList = removeRepeat(finalList, tempNotSelected); //ȥ����ȡ����ѡ����Ŀ
          finalList = finalList.join(",");  //����������,�ָ����ַ���
          if (finalList.indexOf(",") == 0) { finalList = finalList.substring(1, finalList.length); } //ȥ��ǰ��һ�����ţ�����еĻ�
          if (finalList.lastIndexOf(",") == 0) { finalList = finalList.substring(0, finalList.length - 1); }

          //��ѡ������б���ʾ�������б��ı�����
          document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value = finalList;
      }

      function noRepeatJoin(arrayOriginal, arrayToAdd) {   //�����������飬ȥ���ظ�Ԫ��
          var tempArray = arrayOriginal;  //������ʱ���飬��ʼֵΪԭ������
          for (var x in arrayToAdd) { //������Ҫ��ӵ�����
              var isIN = false;  //��Ҫ��ӵ��Ƿ�����ԭʼ������
              for (var y in arrayOriginal) {  //����ԭ������
                  if (arrayOriginal[y] == arrayToAdd[x])
                  { isIN = true; break; }  //��������ظ�����ֹarrayOriginalѭ��,�������Ҫ����������һ��Ԫ��
              }
              if (isIN == false) { tempArray = tempArray.concat(arrayToAdd[x]); }
          }
          return tempArray;
      }
      function removeRepeat(arrayOriginal, arrayToRemove) {  //����arrayOriginal,�Ƴ�������arrayToRemove�ظ�����
          var tempArray = arrayOriginal;
          var count = 0;  //��ɾ���������
          for (var x in arrayOriginal) {
              for (var y in arrayToRemove) {
                  if (arrayOriginal[x] == arrayToRemove[y]) {
                      tempArray.splice(x - count, 1); //����ظ���ɾ������
                      count = count + 1; //��Ϊɾ���ᵼ��tempArray�����
                      break;
                  }
              }
          }
          return tempArray;

      }

      function cities_onload() {                //����myCBL_city_selecting1����ʱ���Զ���ѡ����Label_cities���ڵ����Ϊ����checkbox���onclick�¼��������Զ����¡���ѡ����
          if (document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting1").ClientID %>') !== null) {
              //�Ȼ�ȡ�����е�checkbox��˵
              var tempchkList = document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting1").ClientID %>');
              chkList = tempchkList.getElementsByTagName('LABEL');  //�ؼ�������,��checkbox��label�ֿ���ȡ
              chkIndex = tempchkList.getElementsByTagName('INPUT');
              var Label_cities = document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value;
              Label_cities_values = Label_cities.split(",");
              //����ѡ��״̬��ע������ѭ����˳�������chkList�ŵ��ڲ㣬�����ܱ�֤����ȡ����ȷ���
              //��Ϊ��������˶����ֵͬ�������ֵ���ǰ�����ȷ��������
              for (var j = 0; j < chkList.length; j++) {  //�Զ���ѡ����Label_cities���ڵ���
                  for (var i = 0; i < Label_cities_values.length; i++) {
                      if (Label_cities_values[i] == chkList[j].innerText) {
                          chkIndex[j].checked = true;
                          break;
                      }
                      else {
                          chkIndex[j].checked = false;
                      }
                  }

              }
              for (var k = 0; k < chkIndex.length; k++) {  //Ϊ����checkbox���onclick�¼�����
                  chkIndex[k].onclick = chkClick;
              }
              document.getElementById("Button_SelectAll1").onclick = SelectAll_onclick;

          }

          function SelectAll_onclick() {  //���ȫѡ��ťʱ����
              if (document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting1").ClientID %>') !== null) {
                  //ѡ�е��������飬��ʱ�б�
                  var tempSelected = new Array();
                  for (var x = 0; x < chkIndex.length; x++) {  //��Ϊ�Ѽ������б���ڣ���Ȼ������cities_onload()�¼����ʿɷ���ʹ��chkIndex��chkList
                      if (chkIndex[x].checked == false) {
                          chkIndex[x].checked = true;
                          tempSelected = tempSelected.concat(chkList[x].innerText);
                      }
                      //Ϊ�˱���chkClick�¼���ֱ�ӱ༭�����ı�����ɵ�Ӱ�죬�������»�ȡһ������ı����
                      var Label_cities = document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value;
                      Label_cities_values = Label_cities.split(",");
                      var finalList = noRepeatJoin(tempSelected, Label_cities_values);  //��ӹ�ѡ����Ŀ
                      finalList = finalList.join(",");  //����������,�ָ����ַ���
                      if (finalList.indexOf(",") == 0) { finalList = finalList.substring(1, finalList.length); } //ȥ��ǰ��һ�����ţ�����еĻ�
                      if (finalList.lastIndexOf(",") == 0) { finalList = finalList.substring(0, finalList.length - 1); }
                      //��ѡ������б���ʾ�������б��ı�����
                      document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value = finalList;
                  }
              }
          }
      }

       </script>

                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        ��֪�ֲ�����<span class="validate">��ֱ���޸��������׳�����Ǳ�Ҫ������ֱ�ӸĶ�������ı���</span><br />
                        <asp:TextBox ID="Label_cities" runat="server" Height="120px" 
                            Text='<%# Bind("cities") %>' TextMode="MultiLine" Width="860px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ���<br />
                        <br />
                        �</td>
                    <td style="width: 267px">
                        �ɴ�<asp:TextBox ID="TextBox_max_high" runat="server" EnableViewState="False" 
                            MaxLength="5" Text='<%#Bind("max_high") %>' Width="64px" Wrap="False"></asp:TextBox>
                        <span class="validate">CM<br />
                        </span>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox_max_high" Display="Dynamic" 
                            ErrorMessage="�߶ȷ�Χ��0-32700" MaximumValue="32700" MinimumValue="0" 
                            SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                        <br />
                        <br />
                        <asp:DropDownList ID="DDList_width" runat="server" 
                            SelectedValue='<%# Bind("width") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>&lt;10CM</asp:ListItem>
                            <asp:ListItem>10-30CM</asp:ListItem>
                            <asp:ListItem>30-60CM</asp:ListItem>
                            <asp:ListItem>60-100CM</asp:ListItem>
                            <asp:ListItem>&gt;1M</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ��������</td>
                    <td style="width: 286px">
                        <asp:DropDownList ID="DDList_growth_type" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("growth_type") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>һ��������</asp:ListItem>
                            <asp:ListItem>����������</asp:ListItem>
                            <asp:ListItem>�޸�����</asp:ListItem>
                            <asp:ListItem>�������</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ��������</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_ornamental_type" runat="server" 
                            CssClass="myCBL" EnableViewState="False" 
                            RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("ornamental_type") %>'>
                            <asp:ListItem>��Ҷ</asp:ListItem>
                            <asp:ListItem>�ۻ�</asp:ListItem>
                            <asp:ListItem>�۹�</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        Ҷɫ</td>
                    <td style="width: 267px">
                        <asp:DropDownList ID="DDList_leaf_color" runat="server" EnableViewState="False" 
                            Height="16px" SelectedValue='<%# Bind("leaf_color") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Ҷɫ����</asp:ListItem>
                            <asp:ListItem>Ҷɫ���Ұ�</asp:ListItem>
                            <asp:ListItem>Ҷɫ������</asp:ListItem>
                            <asp:ListItem>Ҷɫ������</asp:ListItem>
                            <asp:ListItem>Ҷɫ����ɫ</asp:ListItem>
                            <asp:ListItem>Ҷɫ��ʻ���</asp:ListItem>
                            <asp:ListItem>Ҷ����ɫ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ��ɫ</td>
                    <td style="width: 286px">
                        <myctl:myCheckboxlist ID="myCBL_fw_color" runat="server" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            RepeatLayout="Flow" SelectedValue='<%# Bind("fw_color") %>'>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫ�ɱ�</asp:ListItem>
                        </myctl:myCheckboxlist>
                        <br />
                        ��ѡ�������и�ɫƷ�֡�<br />
                        ��ɫϵ��һ�����ж�����ɫ��</td>
                    <td style="width: 36px">
                        ����<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        ����</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_florescence" runat="server" CssClass="myCBL" 
                            RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("florescence") %>'>
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
                        &nbsp;<asp:DropDownList ID="DDList_fragrance" runat="server" EnableViewState="False" 
                            SelectedValue='<%# Bind("fragrance") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>����ζ</asp:ListItem>
                            <asp:ListItem>��ζ</asp:ListItem>
                            <asp:ListItem>��΢��</asp:ListItem>
                            <asp:ListItem>��ζ��Ũ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ��ɫ</td>
                    <td style="width: 267px">
                        <asp:DropDownList ID="DDList_fu_color" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("fu_color") %>' 
                            style="margin-bottom: 0px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>�Ƴ�ɫ</asp:ListItem>
                            <asp:ListItem>����ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 286px">
                        <myctl:myCheckboxlist ID="myCBL_fu_period" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("fu_period") %>'>
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
                    </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ˮ��</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_water" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("water") %>'>
                            <asp:ListItem Value="��ˮ">��ˮֲ��</asp:ListItem>
                            <asp:ListItem Value="Ư��">Ư��ֲ��</asp:ListItem>
                            <asp:ListItem Value="��ˮ">��ˮֲ��</asp:ListItem>
                            <asp:ListItem Value="ͦˮ">ͦˮֲ��</asp:ListItem>
                            <asp:ListItem Value="ʪ��">ʪ��ֲ��</asp:ListItem>
                            <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                            <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        ˮ��ѡ��</td>
                    <td style="width: 286px">
                        ����Ҫ��<asp:DropDownList ID="DDList_velocity" runat="server" Height="16px" 
                            SelectedValue='<%# Bind("velocity") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>����ˮ</asp:ListItem>
                            <asp:ListItem>�農ˮ����</asp:ListItem>
                            <asp:ListItem>���߽Կ�</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        ˮ��ɴ<asp:TextBox ID="TextBox_water_depth" runat="server" MaxLength="4" 
                            Width="45px" Text='<%# Bind("water_depth") %>'></asp:TextBox>
                        CM ����<br />
                        <asp:RangeValidator ID="RangeValidator3" runat="server" 
                            ControlToValidate="TextBox_water_depth" Display="Dynamic" 
                            ErrorMessage="ˮ�Χ:0-3000CM" MaximumValue="3000" MinimumValue="0" 
                            SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </td>
                    <td style="width: 36px">
                        ��ǿ</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_light" runat="server" 
                            EnableViewState="False" RepeatColumns="2" 
                            SelectedValue='<%# Bind("light") %>' RepeatLayout="Flow">
                        <asp:ListItem>����ֲ��</asp:ListItem>
                        <asp:ListItem>����ֲ��(����ֲ��)</asp:ListItem>
                        <asp:ListItem>����ֲ��</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_soil" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" SelectedValue='<%# Bind("soil") %>'>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>ʯ������</asp:ListItem>
                            <asp:ListItem>���μ��</asp:ListItem>
                            <asp:ListItem>��񤱡����</asp:ListItem>
                            <asp:ListItem>��ճ����</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        �¶�Ҫ��</td>
                    <td style="width: 286px">
                        <br />
                        <asp:DropDownList ID="DDList_cold" runat="server" EnableViewState="False" 
                            SelectedValue='<%# Bind("cold") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>�ͺ�����(�͵���-10��)</asp:ListItem>
                            <asp:ListItem>ϲ������(��-5������)</asp:ListItem>
                            <asp:ListItem>���»���(�Ͷ���˪��)</asp:ListItem>
                            <asp:ListItem>ϲ�»���(��5������)</asp:ListItem>
                            <asp:ListItem>���Ȼ���(��10������)</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ����Ⱦ����</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_res" runat="server" CssClass="myCBL" 
                            RepeatColumns="3" SelectedValue='<%# Bind("res") %>' 
                            EnableViewState="False">
                            <asp:ListItem>�������Ȼ���</asp:ListItem>
                            <asp:ListItem>�⻯ѧ����</asp:ListItem>
                            <asp:ListItem>��������</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                            <asp:ListItem>�۳�</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        ԰����;</td>
                    <td colspan="3">
                        <myctl:myCheckboxlist ID="myCBL_application" runat="server" RepeatColumns="3" 
                            RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("application") %>' CssClass="myCBL" 
                            EnableViewState="False">
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
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ��ע</td>
                    <td colspan="5">
                        <asp:TextBox ID="remarkTextBox" runat="server" Height="40px" 
                            Text='<%# Bind("remark") %>' Width="860px" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬһ</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload1" runat="server" 
                            filename='<%# Bind("pic1") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬ��</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload2" runat="server" 
                            filename='<%# Bind("pic2") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬ��</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload3" runat="server" 
                            filename='<%# Bind("pic3") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬ��</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload4" runat="server" 
                            filename='<%# Bind("pic4") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬ��</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload5" runat="server" 
                            filename='<%# Bind("pic5") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ͼƬ��</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload6" runat="server" 
                            filename='<%# Bind("pic6") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="����" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="ȡ��" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="table_content" rules="all" style="width: 950px">
                <tr>
                    <td style="width: 737px">
                        <asp:Label ID="speciesLabel" runat="server" CssClass="bold" 
                            Text='<%# Eval("species") %>' />
                        <asp:Label ID="l_speciesLabel" runat="server" CssClass="italic" 
                            Text='<%# Eval("l_species") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td rowspan="5" style="width: 737px">
                        <div class="center_div">
                            <a ID="pic_link" runat="server" enableviewstate="False" 
                                href='<%# Eval("pic1") %>' target="_blank">
                            <asp:Image ID="Image1" runat="server" AlternateText="����ͼƬ" CssClass="picShow" 
                                EnableViewState="False" ImageAlign="Middle" ImageUrl='<%# Eval("pic1") %>' 
                                ToolTip="�´��������" />
                            </a>
                            <br />
                            <input id="prv_Img" onclick="imgChange();" type="button" value="��һ��" /> ��<span 
                                id="count" class="validate"></span>��ͼƬ����ǰ��ʾ��<span ID="current" 
                                class="validate">1</span>�� 
                            <input id="next_Img" onclick="imgChange();" type="button" value="��һ��" />
                            <asp:HiddenField ID="HiddenField1" runat="server" EnableViewState="False" 
                                Value='<%# Eval("pic1") %>' />
                            <asp:HiddenField ID="HiddenField2" runat="server" EnableViewState="False" 
                                Value='<%# Eval("pic2") %>' />
                            <asp:HiddenField ID="HiddenField3" runat="server" EnableViewState="False" 
                                Value='<%# Eval("pic3") %>' />
                            <asp:HiddenField ID="HiddenField4" runat="server" EnableViewState="False" 
                                Value='<%# Eval("pic4") %>' />
                            <asp:HiddenField ID="HiddenField5" runat="server" EnableViewState="False" 
                                Value='<%# Eval("pic5") %>' />
                            <asp:HiddenField ID="HiddenField6" runat="server" EnableViewState="False" 
                                Value='<%# Eval("pic6") %>' />
                        </div>

  <script type="text/javascript">
    var pic1 = document.getElementById('<%= FormView1.FindControl("HiddenField1").ClientID %>').value;
    var pic2 = document.getElementById('<%= FormView1.FindControl("HiddenField2").ClientID %>').value;
    var pic3 = document.getElementById('<%= FormView1.FindControl("HiddenField3").ClientID %>').value;
    var pic4 = document.getElementById('<%= FormView1.FindControl("HiddenField4").ClientID %>').value;
    var pic5 = document.getElementById('<%= FormView1.FindControl("HiddenField5").ClientID %>').value;
    var pic6 = document.getElementById('<%= FormView1.FindControl("HiddenField6").ClientID %>').value;
    var img = document.getElementById('<%= FormView1.FindControl("Image1").ClientID %>'); //����ĵ�ͼƬ
    var link = document.getElementById('<%= FormView1.FindControl("pic_link").ClientID %>'); //�´������ͼƬ������
    var count = 0;  // ����ͼƬ��Ŀ
    var imgArr = new Array; //ͼƬ·������
    var current = 1; //��ǰͼƬ��ţ���ʼΪ��1��
    var tmpArr = new Array(pic1, pic2, pic3, pic4, pic5, pic6);
    for (var x in tmpArr) {
        if (tmpArr[x] !== "") { imgArr = imgArr.concat(tmpArr[x]); count += 1; }
    }
    document.getElementById('count').textContent = count; //��ʾ���м���ͼƬ for Firefox
    document.getElementById('count').innerText = count;  //for IE
    function imgChange() {
        if (imgArr.length == 0) { return; }
        current = current + 1;  //��ǰͼƬ���+1
        if (current > imgArr.length) { current = 1; } // ���������һ��,���Ӱ��һ��
        img.src = imgArr[current - 1].slice(2);
        link.href = imgArr[current - 1].slice(2);
        document.getElementById('current').textContent = current;  //for Firefox
        document.getElementById('current').innerText = current;  //for IE
    }

 </script>

                    </td>
                    <td style="width: 474px">
                        <b>�ƣ�</b><asp:Label ID="familyLabel" runat="server" 
                            Text='<%# Bind("family") %>' />
                        <br />
                        <b>����</b><asp:Label ID="genusLabel" runat="server" 
                            Text='<%# Bind("genus") %>' />
                        <br />
                        <b>���</b><asp:Label ID="typeLabel" runat="server" 
                            Text='<%# Eval("type")%>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>��ߣ�</b><asp:Label ID="max_highLabel" runat="server" 
                            Text='<%# Eval("max_high","{0}����") %>' />
                        <br />
                        <b>�ڷ���</b><asp:Label ID="widthLabel" runat="server" 
                            Text='<%# Bind("width") %>' />
                        <br />
                        <b>�������ͣ�</b><asp:Label ID="growth_typeLabel" runat="server" 
                            Text='<%# Eval("growth_type") %>' />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>�������ͣ�</b><asp:Label ID="ornamental_typeLabel" runat="server" 
                            Text='<%# Eval("growth_type") %>' />
                        <br />
                        <b>Ҷɫ��</b><asp:Label ID="leaf_colorLabel" runat="server" 
                            Text='<%# Eval("leaf_color") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>��ɫ��</b><asp:Label ID="fw_colorLabel" runat="server" 
                            Text='<%# Eval("fw_color") %>' />
                        <br />
                        <b>���㣺</b><asp:Label ID="fragranceLabel" runat="server" 
                            Text='<%# Eval("fragrance") %>' />
                        <br />
                        <b>���ڣ�</b><asp:Label ID="florescenceLabel" runat="server" 
                            Text='<%# Eval("florescence") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>��ɫ��</b><asp:Label ID="fu_colorLabel" runat="server" 
                            Text='<%# Eval("fu_color") %>' />
                        <br />
                        <b>���ڣ�</b><asp:Label ID="fu_periodLabel" runat="server" 
                            Text='<%# Eval("fu_period") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 737px">

                        <b>���ڷ�����</b><myctl:myCheckboxlist ID="myCBL_region1" runat="server" 
                            CssClass="myCBL" EnableViewState="False" RepeatColumns="2" 
                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("regions") %>'>
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
                        </myctl:myCheckboxlist>

                    </td>
                    <td style="width: 474px">

                        <b>��ǿ��</b><asp:Label ID="lightLabel" runat="server" 
                            Text='<%# Eval("light") %>' />
                        <br />
                        <b>�����ԣ�</b><asp:Label ID="coldLabel" runat="server" 
                            Text='<%# Eval("cold") %>' />
                        <br />
                        <b>ˮ�֣�</b><asp:Label ID="waterLabel" runat="server" 
                            Text='<%# Eval("water") %>' />
                        <br />
                        <b>������</b><asp:Label ID="soilLabel" runat="server" Text='<%# Eval("soil") %>' />
                        <br />
                        <b>����Ⱦ��</b><asp:Label ID="resLabel" runat="server" Text='<%# Eval("res") %>' />
                        <br />
                        <br />
                        <b>����������ˮ��ֲ�</b><br />
                        <b>����Ҫ��</b><asp:Label ID="velocity" runat="server" 
                            Text='<%# Eval("velocity") %>'></asp:Label>
                        <br />
                        <b>ˮ��ɴ</b><asp:Label ID="water_depth" runat="server" 
                            Text='<%# Eval("water_depth","{0}CM����") %>'></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td style="width: 737px">
                        <b>�ֲ�����</b><br />
                        <asp:Label ID="citiesLabel" runat="server" Text='<%# Eval("cities") %>' />
                        <br />
                    </td>
                    <td style="width: 474px">
                        <b>԰��Ӧ��: </b>
                        <asp:Label ID="applicationLabel" runat="server" 
                            Text='<%# Eval("application") %>' />
                        <br />
                        <b>��ע: </b>
                        <asp:Label ID="remarkLabel" runat="server" Text='<%# Eval("remark") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="�༭" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="ɾ��" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="�½�" />
        </ItemTemplate>
        <InsertRowStyle HorizontalAlign="Center" Width="900px" />
        <EditRowStyle HorizontalAlign="Center" Width="900px" />
    </asp:FormView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="FloraDataContext" EnableDelete="True" EnableInsert="True" 
        EnableUpdate="True" TableName="flower" Where="p_id == @p_id">
        <WhereParameters>
            <asp:QueryStringParameter Name="p_id" QueryStringField="id" 
                DbType="Int32" DefaultValue="0" />
        </WhereParameters>
    </asp:LinqDataSource>

         <asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>
</asp:Content>

