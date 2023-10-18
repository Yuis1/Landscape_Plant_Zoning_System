<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tree_detail.aspx.cs" Inherits="tree_detail" %>
<%@ Register TagPrefix="myctl" Namespace="mycontrols" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:FormView ID="FormView1"  runat="server" DataKeyNames="p_id" 
        DataSourceID="LinqDataSource1" 
   HorizontalAlign="Center" CssClass="formview" 
        oniteminserting="FormView1_ItemInserting" 
        onitemupdating="FormView1_ItemUpdating" 
        oniteminserted="FormView1_ItemInserted" >
        <EditItemTemplate>
            <table  class="table_content" rules="all">
                <tr>

                    <td  style="width: 36px">
                        ����</td>
                    <td style="width: 230px" >
                        &nbsp;<asp:TextBox ID="familyTextBox" runat="server"  
                            Text='<%# Bind("family") %>' Width="110px" />
                        <span class="validate">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                            runat="server" ControlToValidate="familyTextBox" 
                            ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" 
                            Display="Dynamic">����д����</asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px" >
                        ����</td>
                    <td style="width: 286px" >
                        <asp:TextBox ID="genusTextBox" runat="server" Text='<%# Bind("genus") %>' 
                            />
                        <span class="validate">*<asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                            runat="server" ControlToValidate="genusTextBox" 
                            ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" 
                            Display="Dynamic">����д����</asp:RequiredFieldValidator>
                        </span>
                    </td>
                  <td style="width: 36px" >
                        ѧ��</td>
                    <td >

                        <asp:TextBox ID="l_speciesTextBox" runat="server" 
                            Text='<%# Bind("l_species") %>' Width="181px" AutoPostBack="True" 
                                ontextchanged="l_speciesTextBox_TextChanged" />
                        <span class="validate">* </span>(������)
                            <br />
                            <asp:Label ID="Label_latinNameCheck" runat="server" Text=" " CssClass="validate"></asp:Label>
                        <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="l_speciesTextBox" ErrorMessage="����дѧ��" 
                            SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>

                    </td>
                    
                </tr>
                <tr>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 230px" >
                        &nbsp;<asp:TextBox ID="speciesTextBox" runat="server" 
                            Text='<%# Bind("species") %>' />
                        <span class="validate">*<asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                            runat="server" ControlToValidate="speciesTextBox" ErrorMessage="����д����" 
                            SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px" >���</td>
                    <td style="width: 286px" >
                        <asp:DropDownList ID="DDList_Type" runat="server" 
                            EnableViewState="False" 
                            SelectedValue='<%# Bind("type") %>' Enabled="False">
                            <asp:ListItem Selected="True">��ľ</asp:ListItem>
                        </asp:DropDownList>
                        <span class="validate">* </span>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                            runat="server" ControlToValidate="DDList_Type" ErrorMessage="����д���" 
                            SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        
                    </td>
                    <td style="width: 36px" >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                </tr>
                <tr>
                <td style="width: 36px">�ֲ�����
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
                        �߶�</td>
                    <td style="width: 230px" >
                        �ɴ�<asp:TextBox ID="TextBox_max_high" runat="server" EnableViewState="False" 
                            MaxLength="5" Width="64px" Text='<%#Bind("max_high") %>' Wrap="False"></asp:TextBox>
                        <span class="validate">CM<br />
                        </span>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox_max_high" ErrorMessage="�߶ȷ�Χ��0-32700" 
                            MaximumValue="32700" MinimumValue="0" SetFocusOnError="True" 
                            Type="Integer" Display="Dynamic"></asp:RangeValidator>
                    </td>
                    <td style="width: 36px">
                        �ڷ�</td>
                    <td style="width: 286px">
                        <asp:DropDownList ID="DDList_width" runat="server" 
                            SelectedValue='<%# Bind("width") %>' Width="53px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>&lt;6M</asp:ListItem>
                            <asp:ListItem>6-10M</asp:ListItem>
                            <asp:ListItem>&gt;10M</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ����</td>
                    <td >
                        �ɴ�<asp:TextBox ID="TextBox_age" runat="server" EnableViewState="False" 
                            MaxLength="4" Text='<%# Bind("age") %>' Width="37px"></asp:TextBox>
                        ������<br />
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ControlToValidate="TextBox_age" Display="Dynamic" ErrorMessage="���䷶Χ��0-9999" 
                            MaximumValue="9999" MinimumValue="0" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ��������</td>
                    <td style="width: 230px" >
                        <asp:DropDownList ID="DDList_growth_type" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("growth_type") %>'>
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
                    </td>
                    <td style="width: 36px" >
                        ����ϰ��</td>
                    <td style="width: 286px">
                        <asp:DropDownList ID="DDList_life_habit" runat="server" 
                            SelectedValue='<%# Bind("life_habit") %>' EnableViewState="False">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>��Ҷ����</asp:ListItem>
                            <asp:ListItem>�볣������</asp:ListItem>
                            <asp:ListItem>��������</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        �����ٶ�</td>
                    <td>
                        <asp:DropDownList ID="DDList_growing_race" runat="server" 
                            SelectedValue='<%# Bind("growing_race") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>��&gt;1M/��</asp:ListItem>
                            <asp:ListItem>��0.3-1M/��</asp:ListItem>
                            <asp:ListItem>��&lt;0.3M/��</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 230px">
                        <asp:DropDownList ID="DDList_tree_form" runat="server" Width="65px" 
                            SelectedValue='<%# Bind("tree_form") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Բ����</asp:ListItem>
                            <asp:ListItem>չ����</asp:ListItem>
                            <asp:ListItem>Բ����</asp:ListItem>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>��֦��</asp:ListItem>
                            <asp:ListItem>�Ĵ���</asp:ListItem>
                            <asp:ListItem>������</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ��Ҷ����</td>
                    <td style="width: 286px">
                        ҶƬ���ͼ�ֵ��<asp:DropDownList ID="DDList_leaf_ornamental" runat="server" 
                            SelectedValue='<%# Bind("leaf_ornamental") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>��</asp:ListItem>
                            <asp:ListItem>��</asp:ListItem>
                            <asp:ListItem>��</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        Ҷɫ��<asp:DropDownList ID="DDList_leaf_color" runat="server" 
                            EnableViewState="False" Height="16px" SelectedValue='<%# Bind("leaf_color") %>'>
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
                    </td>
                    <td style="width: 36px">
                        �۸�����</td>
                    <td>
                        ֦�����ͣ�<asp:DropDownList ID="DDList_brh_ornamental" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("brh_ornamental") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>�ɹ�Ƥ</asp:ListItem>
                            <asp:ListItem>�ɹ���</asp:ListItem>
                            <asp:ListItem>�ɹ۸�����</asp:ListItem>
                            </asp:DropDownList>
                        <br />
                        <br />
                        ֦����ɫ��<asp:DropDownList ID="DDList_brh_color" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("brh_color") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>�Ұ�ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>�߲�ɫ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        �ۻ�����</td>
                    <td style="width: 230px">
                        ���У�<asp:DropDownList ID="DDList_flower_sense" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("flower_sense") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>��</asp:ListItem>
                            <asp:ListItem>��</asp:ListItem>
                            <asp:ListItem>ǿ</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        �������ͣ�<asp:DropDownList ID="DDList_fw_type" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("fw_type") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>�Ȼ���Ҷ</asp:ListItem>
                            <asp:ListItem>��Ҷͬ��</asp:ListItem>
                            <asp:ListItem>Ҷ�󿪻�</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        ���㣺<asp:DropDownList ID="DDList_fragrance" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("fragrance") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>����ζ</asp:ListItem>
                            <asp:ListItem>��ζ</asp:ListItem>
                            <asp:ListItem>��΢��</asp:ListItem>
                            <asp:ListItem>��ζ��Ũ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ��ɫ</td>
                    <td style="width: 286px">
                        <myctl:myCheckboxlist ID="myCBL_fw_color" runat="server" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("fw_color") %>' RepeatLayout="Flow">
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫ�ɱ�</asp:ListItem>
                        </myctl:myCheckboxlist>
                        ��ѡ�������и�ɫƷ�֡�<br />
                        ��ɫϵ��һ�����ж�����ɫ��</td>
                    <td style="width: 36px">
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
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        �۹�����</td>
                    <td style="width: 230px">
                        <asp:CheckBox ID="CB_is_fu_ornamental" runat="server" 
                            Checked='<%# Bind("is_fu_ornamental") %>' EnableViewState="False" Text="�ɹ۹�" 
                            TextAlign="Left" />
                        <br />
                        <br />
                        ����ʱ��ɫ��<asp:DropDownList ID="DDList_fu_color" runat="server" 
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
                    <td style="width: 36px" >
                        ����</td>
                    <td style="width: 286px" >
                        <myctl:myCheckboxlist ID="myCBL_fu_period" runat="server" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("fu_period") %>' CssClass="myCBL">
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
                        ԰����;</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_application" runat="server" RepeatColumns="3" 
                            RepeatDirection="Horizontal" RepeatLayout="Flow" 
                            SelectedValue='<%# Bind("application") %>'>
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
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ˮ��</td>
                    <td style="width: 230px">
                        <myctl:myCheckboxlist ID="myCBL_water" runat="server" EnableViewState="False" 
                            RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("water") %>' CssClass="myCBL">
                            <asp:ListItem Value="ʪ��">ʪ��ֲ��</asp:ListItem>
                            <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                            <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                            <asp:ListItem Value="�ͺ�">�ͺ�ֲ��</asp:ListItem>
                            <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        ��ǿ</td>
                    <td style="width: 286px">
                        <myctl:myCheckboxlist ID="myCBL_light" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" SelectedValue='<%# Bind("light") %>'>
                            <asp:ListItem>����ֲ��</asp:ListItem>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>ϲ��ֲ��</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        ����</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_soil" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" SelectedValue='<%# Bind("soil") %>'>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>ʯ������</asp:ListItem>
                            <asp:ListItem>���μ��</asp:ListItem>
                            <asp:ListItem>��񤱡����</asp:ListItem>
                            <asp:ListItem>��ճ����</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        �ͺ���</td>
                    <td style="width: 230px">
                        ����<asp:DropDownList ID="DDList_cold" runat="server" EnableViewState="False" 
                            SelectedValue='<%# Bind("cold") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>����-10</asp:ListItem>
                            <asp:ListItem>-10</asp:ListItem>
                            <asp:ListItem>-5</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        �����</td>
                    <td style="width: 36px" >
                        ��������</td>
                    <td style="width: 286px">
                        <myctl:myCheckboxlist ID="myCBL_protective" runat="server" CssClass="myCBL" 
                            RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("protective") %>'>
                            <asp:ListItem>�����ɳ</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                            <asp:ListItem>��ѩѹ</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px" >
                        ����Ⱦ</td>
                    <td >
                        <myctl:myCheckboxlist ID="myCBL_res" runat="server" CssClass="myCBL" 
                            RepeatColumns="3" SelectedValue='<%# Bind("res") %>'>
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
                </tr>

                <tr>
                    <td style="width: 36px">
                        ��ע</td>
                    <td colspan="5">
                        <asp:TextBox ID="remarkTextBox" runat="server" Text='<%# Bind("remark") %>' 
                            Width="860px" Height="40px" />
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
            <table  class="table_content" rules="all">
                <tr>

                    <td  style="width: 36px">
                        ����</td>
                    <td style="width: 230px" >
                        &nbsp;<asp:TextBox ID="familyTextBox" runat="server"  
                            Text='<%# Bind("family") %>' Width="110px" />
                        <span class="validate">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                            runat="server" ControlToValidate="familyTextBox" 
                            ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" 
                            Display="Dynamic">����д����</asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px" >
                        ����</td>
                    <td style="width: 277px" >
                        <asp:TextBox ID="genusTextBox" runat="server" Text='<%# Bind("genus") %>' 
                            />
                        <span class="validate">*<asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                            runat="server" ControlToValidate="genusTextBox" 
                            ErrorMessage="RequiredFieldValidator" SetFocusOnError="True" 
                            Display="Dynamic">����д����</asp:RequiredFieldValidator>
                        </span>
                    </td>
                  <td style="width: 36px" >
                        ѧ��</td>
                    <td >

                        <asp:TextBox ID="l_speciesTextBox" runat="server" 
                            Text='<%# Bind("l_species") %>' Width="181px" AutoPostBack="True" 
                                ontextchanged="l_speciesTextBox_TextChanged" />
                        <span class="validate">* </span>(������)
                            <br />
                            <asp:Label ID="Label_latinNameCheck" runat="server" Text=" " CssClass="validate"></asp:Label>
                        <asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="l_speciesTextBox" ErrorMessage="����дѧ��" 
                            SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>

                    </td>
                    
                </tr>
                <tr>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 230px" >
                        &nbsp;<asp:TextBox ID="speciesTextBox" runat="server" 
                            Text='<%# Bind("species") %>' />
                        <span class="validate">*<asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                            runat="server" ControlToValidate="speciesTextBox" ErrorMessage="����д����" 
                            SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px" >���</td>
                    <td style="width: 277px" >
                        <asp:DropDownList ID="DDList_Type" runat="server" 
                            EnableViewState="False" 
                            SelectedValue='<%# Bind("type") %>' Enabled="False">
                            <asp:ListItem Selected="True">��ľ</asp:ListItem>
                        </asp:DropDownList>
                        <span class="validate">* </span>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                            runat="server" ControlToValidate="DDList_Type" ErrorMessage="����д���" 
                            SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                        
                    </td>
                    <td style="width: 36px" >
                        &nbsp;</td>
                    <td >
                        &nbsp;</td>
                </tr>
                <tr>
                <td style="width: 36px">�ֲ�����
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
                        �߶�</td>
                    <td style="width: 230px" >
                        �ɴ�<asp:TextBox ID="TextBox_max_high" runat="server" EnableViewState="False" 
                            MaxLength="5" Width="64px" Text='<%#Bind("max_high") %>' Wrap="False"></asp:TextBox>
                        <span class="validate">CM<br />
                        </span>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox_max_high" ErrorMessage="�߶ȷ�Χ��0-32700" 
                            MaximumValue="32700" MinimumValue="0" SetFocusOnError="True" 
                            Type="Integer" Display="Dynamic"></asp:RangeValidator>
                    </td>
                    <td style="width: 36px">
                        �ڷ�</td>
                    <td style="width: 277px">
                        <asp:DropDownList ID="DDList_width" runat="server" 
                            SelectedValue='<%# Bind("width") %>' Width="53px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>&lt;6M</asp:ListItem>
                            <asp:ListItem>6-10M</asp:ListItem>
                            <asp:ListItem>&gt;10M</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ����</td>
                    <td >
                        �ɴ�<asp:TextBox ID="TextBox_age" runat="server" EnableViewState="False" 
                            MaxLength="4" Text='<%# Bind("age") %>' Width="37px"></asp:TextBox>
                        ������<br />
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ControlToValidate="TextBox_age" Display="Dynamic" ErrorMessage="���䷶Χ��0-9999" 
                            MaximumValue="9999" MinimumValue="0" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ��������</td>
                    <td style="width: 230px" >
                        <asp:DropDownList ID="DDList_growth_type" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("growth_type") %>'>
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
                    </td>
                    <td style="width: 36px" >
                        ����ϰ��</td>
                    <td style="width: 277px">
                        <asp:DropDownList ID="DDList_life_habit" runat="server" 
                            SelectedValue='<%# Bind("life_habit") %>' EnableViewState="False">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>��Ҷ����</asp:ListItem>
                            <asp:ListItem>�볣������</asp:ListItem>
                            <asp:ListItem>��������</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        �����ٶ�</td>
                    <td>
                        <asp:DropDownList ID="DDList_growing_race" runat="server" 
                            SelectedValue='<%# Bind("growing_race") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>��&gt;1M/��</asp:ListItem>
                            <asp:ListItem>��0.3-1M/��</asp:ListItem>
                            <asp:ListItem>��&lt;0.3M/��</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ����</td>
                    <td style="width: 230px">
                        <asp:DropDownList ID="DDList_tree_form" runat="server" Width="65px" 
                            SelectedValue='<%# Bind("tree_form") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Բ����</asp:ListItem>
                            <asp:ListItem>չ����</asp:ListItem>
                            <asp:ListItem>Բ����</asp:ListItem>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>��֦��</asp:ListItem>
                            <asp:ListItem>�Ĵ���</asp:ListItem>
                            <asp:ListItem>������</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ��Ҷ����</td>
                    <td style="width: 277px">
                        ҶƬ���ͼ�ֵ��<asp:DropDownList ID="DDList_leaf_ornamental" runat="server" 
                            SelectedValue='<%# Bind("leaf_ornamental") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>��</asp:ListItem>
                            <asp:ListItem>��</asp:ListItem>
                            <asp:ListItem>��</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        Ҷɫ��<asp:DropDownList ID="DDList_leaf_color" runat="server" 
                            EnableViewState="False" Height="16px" SelectedValue='<%# Bind("leaf_color") %>'>
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
                    </td>
                    <td style="width: 36px">
                        �۸�����</td>
                    <td>
                        ֦�����ͣ�<asp:DropDownList ID="DDList_brh_ornamental" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("brh_ornamental") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>�ɹ�Ƥ</asp:ListItem>
                            <asp:ListItem>�ɹ���</asp:ListItem>
                            <asp:ListItem>�ɹ۸�����</asp:ListItem>
                            </asp:DropDownList>
                        <br />
                        <br />
                        ֦����ɫ��<asp:DropDownList ID="DDList_brh_color" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("brh_color") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>�Ұ�ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>��ɫ</asp:ListItem>
                            <asp:ListItem>�߲�ɫ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        �ۻ�����</td>
                    <td style="width: 230px">
                        ���У�<asp:DropDownList ID="DDList_flower_sense" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("flower_sense") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>��</asp:ListItem>
                            <asp:ListItem>��</asp:ListItem>
                            <asp:ListItem>ǿ</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        �������ͣ�<asp:DropDownList ID="DDList_fw_type" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("fw_type") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>�Ȼ���Ҷ</asp:ListItem>
                            <asp:ListItem>��Ҷͬ��</asp:ListItem>
                            <asp:ListItem>Ҷ�󿪻�</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        ���㣺<asp:DropDownList ID="DDList_fragrance" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("fragrance") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>����ζ</asp:ListItem>
                            <asp:ListItem>��ζ</asp:ListItem>
                            <asp:ListItem>��΢��</asp:ListItem>
                            <asp:ListItem>��ζ��Ũ</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        ��ɫ</td>
                    <td style="width: 277px">
                        <myctl:myCheckboxlist ID="myCBL_fw_color" runat="server" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("fw_color") %>' RepeatLayout="Flow">
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫϵ</asp:ListItem>
                            <asp:ListItem>��ɫ�ɱ�</asp:ListItem>
                        </myctl:myCheckboxlist>
                        �����ֺ��и�ɫϵƷ�֣��ɶ�ѡ��<br />
                        ��ɫϵ��һ�����ж�����ɫ��</td>
                    <td style="width: 36px">
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
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        �۹�����</td>
                    <td style="width: 230px">
                        <asp:CheckBox ID="CB_is_fu_ornamental" runat="server" 
                            Checked='<%# Bind("is_fu_ornamental") %>' EnableViewState="False" Text="�ɹ۹�" 
                            TextAlign="Left" />
                        <br />
                        <br />
                        ����ʱ��ɫ��<asp:DropDownList ID="DDList_fu_color" runat="server" 
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
                    <td style="width: 36px" >
                        ����</td>
                    <td style="width: 277px" >
                        <myctl:myCheckboxlist ID="myCBL_fu_period" runat="server" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("fu_period") %>' CssClass="myCBL">
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
                        ԰����;</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_application" runat="server" RepeatColumns="3" 
                            RepeatDirection="Horizontal" RepeatLayout="Flow" 
                            SelectedValue='<%# Bind("application") %>'>
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
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        ˮ��</td>
                    <td style="width: 230px">
                        <myctl:myCheckboxlist ID="myCBL_water" runat="server" EnableViewState="False" 
                            RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("water") %>' CssClass="myCBL">
                            <asp:ListItem Value="ʪ��">ʪ��ֲ��</asp:ListItem>
                            <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                            <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                            <asp:ListItem Value="�ͺ�">�ͺ�ֲ��</asp:ListItem>
                            <asp:ListItem Value="����">����ֲ��</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        ��ǿ</td>
                    <td style="width: 277px">
                        <myctl:myCheckboxlist ID="myCBL_light" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" SelectedValue='<%# Bind("light") %>'>
                            <asp:ListItem>����ֲ��</asp:ListItem>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>ϲ��ֲ��</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        ����</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_soil" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" SelectedValue='<%# Bind("soil") %>'>
                            <asp:ListItem>������</asp:ListItem>
                            <asp:ListItem>ʯ������</asp:ListItem>
                            <asp:ListItem>���μ��</asp:ListItem>
                            <asp:ListItem>��񤱡����</asp:ListItem>
                            <asp:ListItem>��ճ����</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        �ͺ���</td>
                    <td style="width: 230px">
                        ����<asp:DropDownList ID="DDList_cold" runat="server" EnableViewState="False" 
                            SelectedValue='<%# Bind("cold") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>����-10</asp:ListItem>
                            <asp:ListItem>-10</asp:ListItem>
                            <asp:ListItem>-5</asp:ListItem>
                            <asp:ListItem>0</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                        �����</td>
                    <td style="width: 36px" >
                        ��������</td>
                    <td style="width: 277px">
                        <myctl:myCheckboxlist ID="myCBL_protective" runat="server" CssClass="myCBL" 
                            RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("protective") %>'>
                            <asp:ListItem>�����ɳ</asp:ListItem>
                            <asp:ListItem>����</asp:ListItem>
                            <asp:ListItem>��ѩѹ</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px" >
                        ����Ⱦ</td>
                    <td >
                        <myctl:myCheckboxlist ID="myCBL_res" runat="server" RepeatColumns="3" 
                            RepeatLayout="Flow" SelectedValue='<%# Bind("res") %>'>
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
                </tr>

                <tr>
                    <td style="width: 36px">
                        ��ע</td>
                    <td colspan="5">
                        <asp:TextBox ID="remarkTextBox" runat="server" Text='<%# Bind("remark") %>' 
                            Width="860px" Height="40px" />
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
                   <asp:Panel ID="Panel1" runat="server" Visible="False">
                       thumb<asp:TextBox ID="TextBox_thumb" runat="server" Enabled="False" 
                           EnableViewState="False" Text='<%# Bind("thumb") %>'></asp:TextBox>
                       velocity<asp:TextBox ID="TextBox_velocity" runat="server" Enabled="False" 
                           EnableViewState="False" Text='<%# Bind("velocity") %>'></asp:TextBox>
                       water_depth<asp:TextBox ID="TextBox_water_depth" runat="server" Enabled="False" 
                           EnableViewState="False" Text='<%# Bind("water_depth") %>' Visible="False"></asp:TextBox>
                       ornamental_type<asp:TextBox ID="TextBox_ornamental_type" runat="server" 
                           Enabled="False" EnableViewState="False" Text='<%# Bind("ornamental_type")%>'></asp:TextBox>
                   </asp:Panel>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="����"  />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="ȡ��"  />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="table_content" rules="all" style="width: 950px">
                <tr>
                    <td style="width: 737px">
                    <asp:Label ID="speciesLabel" runat="server" CssClass="bold" 
                            Text='<%# Eval("species") %>' /><asp:Label ID="l_speciesLabel" runat="server" CssClass="italic" 
                            Text='<%# Eval("l_species") %>' />
                        
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td rowspan="6" style="width: 737px">
                        <div class="center_div">
                            <a ID="pic_link" runat="server" enableviewstate="False" 
                                href='<%# Eval("pic1") %>' target="_blank">
                            <asp:Image ID="Image1" runat="server" AlternateText="����ͼƬ" CssClass="picShow" 
                                EnableViewState="False" ImageAlign="Middle" ImageUrl='<%# Eval("pic1") %>' 
                                ToolTip="�´��������" />
                            </a>
                            <br />
                            <input id="prv_Img" onclick="imgChange();" type="button" value="��һ��" /> ��<span 
                                id="count" class="validate"></span>��ͼƬ����ǰ��ʾ��<span id="current" 
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
                        <b>����</b><asp:Label ID="genusLabel" runat="server" Text='<%# Bind("genus") %>' />
                        <br />
                        <b>���</b><asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type", "{0}") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>�ߴ</b><asp:Label ID="max_highLabel" runat="server" 
                            Text='<%# (Convert.ToInt32(Eval("max_high"))/100).ToString()+"��" %>' />
                        <br />
                        <b>�ڷ���</b><asp:Label ID="widthLabel" runat="server" Text='<%# Bind("width") %>' />
                        <br />
                        <b>���Σ�</b><asp:Label ID="tree_formLabel" runat="server" 
                            Text='<%# Bind("tree_form") %>' />
                        <br />
                        <b>����ɴ</b><asp:Label ID="ageLabel" runat="server" 
                            Text='<%# Eval("age", "{0}��") %>' />
                        <br />
                        <b>�������ͣ�</b><asp:Label ID="growth_typeLabel" runat="server" 
                            Text='<%# Eval("growth_type") %>' />
                        <br />
                        <b>����ϰ�ԣ�</b><asp:Label ID="life_habitLabel" runat="server" 
                            Text='<%# Eval("life_habit") %>' />
                        <br />
                        <b>�����ٶȣ�</b><asp:Label ID="growing_raceLabel" runat="server" 
                            Text='<%# Eval("growing_race") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>ҶƬ���ͼ�ֵ��</b><asp:Label ID="leaf_ornamental0" runat="server" 
                            Text='<%# Eval("leaf_ornamental") %>' />
                        <br />
                        <b>Ҷɫ��</b><asp:Label ID="leaf_colorLabel" runat="server" 
                            Text='<%# Eval("leaf_color") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>���У�</b><asp:Label ID="flower_sense" runat="server" 
                            Text='<%# Eval("flower_sense") %>' />
                        <br />
                        <b>�������ͣ�</b><asp:Label ID="fw_typeLabel" runat="server" 
                            Text='<%# Eval("fw_type") %>' />
                        <br />
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
                        <b>�ɷ�۹���</b><asp:Label ID="is_fu_ornamentalLabel" runat="server" 
                            Text='<%#( Convert.ToBoolean(Eval("is_fu_ornamental"))==false )?"����":"�ɹ۹�" %>' />
                        <br />
                        <b>��ɫ��</b><asp:Label ID="fu_colorLabel" runat="server" 
                            Text='<%# Eval("fu_color") %>' />
                        <br />
                        <b>���ڣ�</b><asp:Label ID="fu_periodLabel" runat="server" 
                            Text='<%# Eval("fu_period") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>֦����ɫ��</b><asp:Label ID="brh_colorLabel" runat="server" 
                            Text='<%# Eval("brh_color") %>' />
                        <br />
                        <b>֦�ɹ������ԣ�</b><asp:Label ID="brh_ornamentalLabel" runat="server" 
                            Text='<%# Eval("brh_ornamental") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 737px">
                        <b>���ڷ�����</b><myctl:myCheckboxlist ID="myCBL_region" runat="server" 
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
                        <b>��ǿ��</b><asp:Label ID="lightLabel" runat="server" Text='<%# Eval("light") %>' />
                        <br />
                        <b>�����ԣ�</b><asp:Label ID="coldLabel" runat="server" 
                            Text='<%# Eval("cold", "����{0}�����") %>' />
                        <br />
                        <b>ˮ�֣�</b><asp:Label ID="waterLabel" runat="server" Text='<%# Eval("water") %>' />
                        <br />
                        <b>������</b><asp:Label ID="soilLabel" runat="server" Text='<%# Eval("soil") %>' />
                        <br />
                        <b>�������ܣ�</b><asp:Label ID="protective" runat="server" Text='<%# Eval("protective") %>' />
                        <br />
                        <b>����Ⱦ��</b><asp:Label ID="resLabel" runat="server" Text='<%# Eval("res") %>' />
                        <br />
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
        <InsertRowStyle Width="900px" HorizontalAlign="Center" />
        <EditRowStyle Width="900px" HorizontalAlign="Center" />
    </asp:FormView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
        ContextTypeName="FloraDataContext" EnableDelete="True" EnableInsert="True" 
        EnableUpdate="True" TableName="tree" Where="p_id == @p_id">
        <WhereParameters>
            <asp:QueryStringParameter Name="p_id" QueryStringField="id" 
                DbType="Int32" DefaultValue="0" />
        </WhereParameters>
    </asp:LinqDataSource>

         <asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>
       
    </asp:Content>

