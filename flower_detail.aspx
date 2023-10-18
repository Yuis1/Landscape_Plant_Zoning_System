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
                        科名</td>
                    <td style="width: 267px">
                        &nbsp;<asp:TextBox ID="familyTextBox" runat="server" Text='<%# Bind("family") %>' 
                            Width="110px" />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="familyTextBox" 
                            Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">请填写科名</asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        属名</td>
                    <td style="width: 286px">
                        <asp:TextBox ID="genusTextBox" runat="server" Text='<%# Bind("genus") %>' />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="genusTextBox" 
                            Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">请填写属名</asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        学名</td>
                    <td>
                        <asp:TextBox ID="l_speciesTextBox" runat="server" AutoPostBack="True" 
                            ontextchanged="l_speciesTextBox_TextChanged" Text='<%# Bind("l_species") %>' 
                            Width="181px" />
                        <span class="validate">* </span>(拉丁名)
                        <br />
                        <asp:Label ID="Label_latinNameCheck" runat="server" CssClass="validate" 
                            Text=" "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="l_speciesTextBox" Display="Dynamic" ErrorMessage="请填写学名" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        种名</td>
                    <td style="width: 267px">
                        &nbsp;<asp:TextBox ID="speciesTextBox" runat="server" 
                            Text='<%# Bind("species") %>' />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="speciesTextBox" 
                            Display="Dynamic" ErrorMessage="请填写种名" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        类别</td>
                    <td style="width: 286px">
                        <asp:DropDownList ID="DDList_Type" runat="server" Enabled="False" 
                            EnableViewState="False" SelectedValue='<%# Bind("type") %>'>
                            <asp:ListItem Selected="True">草花</asp:ListItem>
                        </asp:DropDownList>
                        <span class="validate">* </span>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="DDList_Type" Display="Dynamic" ErrorMessage="请填写类别" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        分布城镇 
                    </td>
                    <td colspan="5">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                请选择分区：<asp:DropDownList ID="DDList_region" runat="server" AutoPostBack="True" 
                                    EnableViewState="False" 
                                    onselectedindexchanged="DDList_region_SelectedIndexChanged">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem Value="region1">001 大兴安岭及小兴安岭北部分区</asp:ListItem>
                                    <asp:ListItem Value="region2">002 东北中部平原及山地分区</asp:ListItem>
                                    <asp:ListItem Value="region3">003 内蒙古北部分区</asp:ListItem>
                                    <asp:ListItem Value="region4">004 新疆北部分区（北疆分区）</asp:ListItem>
                                    <asp:ListItem Value="region5">005 东北南部平原及华北北部山地、高原分区</asp:ListItem>
                                    <asp:ListItem Value="region6">006 大西北分区（蒙、宁、甘、疆分区）</asp:ListItem>
                                    <asp:ListItem Value="region7">007 华北北部平原及黄土高原分区</asp:ListItem>
                                    <asp:ListItem Value="region8">008 华北南部平原、秦岭南坡之北部及四川北部分区</asp:ListItem>
                                    <asp:ListItem Value="region9">009 华中北部（平原、丘陵及秦巴地区）分区</asp:ListItem>
                                    <asp:ListItem Value="region10">010 华中南部（东南丘陵、四川盆地、云贵高原）分区</asp:ListItem>
                                    <asp:ListItem Value="region11">011 华南分区</asp:ListItem>
                                    <asp:ListItem Value="region12">012 台湾北部分区</asp:ListItem>
                                    <asp:ListItem Value="region13">013 台湾南部分区</asp:ListItem>
                                    <asp:ListItem Value="region14">014 广东南端及海南岛分区</asp:ListItem>
                                    <asp:ListItem Value="region15">015 滇西南部分区</asp:ListItem>
                                    <asp:ListItem Value="region16">016 南海诸岛分区</asp:ListItem>
                                    <asp:ListItem Value="region17">017 青藏温带及寒漠分区</asp:ListItem>
                                    <asp:ListItem Value="region18">018 青藏北暖温带及寒漠分区</asp:ListItem>
                                    <asp:ListItem Value="region19">019 青藏中暖温带及寒漠分区</asp:ListItem>
                                    <asp:ListItem Value="region20">020 青藏南暖温带及寒漠分区</asp:ListItem>
                                </asp:DropDownList>
                                <span class="validate">从此下拉框选择城镇列表。<input id="Button_SelectAll" type="button"
                                    value="全选" /></span><br />
                                <myctl:myCheckboxlist ID="myCBL_city_selecting" runat="server" 
                                    EnableViewState="False" RepeatColumns="12" RepeatDirection="Horizontal" 
                                    RepeatLayout="Flow">
                                </myctl:myCheckboxlist>

  <script type="text/javascript">
    var chkList;  //先定义全局变量,表示待选择的城镇的label数组
    var chkIndex; //待选择的城镇的checkbox数组
    var Label_cities_values; //城镇列表文本框对应的数组
    Sys.WebForms.PageRequestManager.getInstance().add_pageLoaded(cities_onload);

    //checkbox的onclick事件，用于更新“已选择的项”
    function chkClick() {
        var tempSelected = new Array();   //当前选中的label数组
        var tempNotSelected = new Array();//当前未选中的label数组
        //最终的cities数组，初始值为文本框中cities数组,每次click都必须重新获取
        var labelNowList = document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value.split(","); 
        for (var i = 0; i < chkList.length; i++) {   
            if (chkIndex[i].checked)  //如果该项被选择
            {
                tempSelected = tempSelected.concat(chkList[i].innerText); //获取所有被选中的项
            }
            else tempNotSelected = tempNotSelected.concat(chkList[i].innerText); //获取所有未选中的项
        }
        var finalList = noRepeatJoin(labelNowList, tempSelected);  //添加勾选的项目
        finalList = removeRepeat(finalList, tempNotSelected); //去掉被取消勾选的项目
        finalList = finalList.join(",");  //将数组变成用,分隔的字符串
        if (finalList.indexOf(",") == 0) { finalList = finalList.substring(1, finalList.length); } //去除前后一个逗号，如果有的话
        if (finalList.lastIndexOf(",") == 0) { finalList = finalList.substring(0, finalList.length - 1); }
  
        //把选中项的列表显示到城镇列表文本框中
        document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value = finalList;
    }

    function noRepeatJoin(arrayOriginal, arrayToAdd) {   //连接两个数组，去掉重复元素
        var tempArray = arrayOriginal;  //定义临时数组，初始值为原有数组
        for (var x in arrayToAdd) { //遍历将要添加的数组
            var isIN = false;  //将要添加的是否已在原始数组中
            for (var y in arrayOriginal) {  //遍历原有数组
                if (arrayOriginal[y] == arrayToAdd[x])
                { isIN = true; break; }  //如果该项重复，终止arrayOriginal循环,继续检测要添加数组的下一个元素
            }
            if (isIN == false) { tempArray = tempArray.concat(arrayToAdd[x]); }
        }
        return tempArray;
    }
    function removeRepeat(arrayOriginal, arrayToRemove) {  //遍历arrayOriginal,移除其中与arrayToRemove重复的项
        var tempArray = arrayOriginal;
        var count = 0;  //被删除的项计数
        for (var x in arrayOriginal) {
            for (var y in arrayToRemove) {
                if (arrayOriginal[x] == arrayToRemove[y]) {
                    tempArray.splice(x-count, 1); //如果重复，删除该项
                    count = count + 1; //因为删除会导致tempArray项减少
                    break;
                 } 
            }
        }
        return tempArray;

    }
    
    function cities_onload() {                //当待myCBL_city_selecting加载时，自动勾选已在Label_cities存在的项，并为所有checkbox添加onclick事件处理，以自动更新“已选择的项”
        if (document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting").ClientID %>') !== null) {
            //先获取到所有的checkbox再说
            var tempchkList = document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting").ClientID %>');
            chkList = tempchkList.getElementsByTagName('LABEL');  //关键的两步,将checkbox和label分开获取
            chkIndex = tempchkList.getElementsByTagName('INPUT');
            var Label_cities =document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value;
            Label_cities_values = Label_cities.split(",");
            //设置选择状态，注意两个循环的顺序，如果把chkList放到内层，将不能保证总是取得正确结果
            //因为如果输入了多个相同值，后面的值会把前面的正确结果给冲掉
            for (var j = 0; j < chkList.length; j++) {  //自动勾选已在Label_cities存在的项
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
            for (var k = 0; k < chkIndex.length; k++) {  //为所有checkbox添加onclick事件处理
                    chkIndex[k].onclick = chkClick;
                }
                document.getElementById("Button_SelectAll").onclick = SelectAll_onclick;

        }

        function SelectAll_onclick() {  //点击全选按钮时发生
            if (document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting").ClientID %>') !== null) {
                //选中的文字数组，临时列表
                var tempSelected=new Array();
                for (var x = 0; x < chkIndex.length; x++) {  //因为已检测城市列表存在，必然发生过cities_onload()事件，故可放心使用chkIndex、chkList
                    if (chkIndex[x].checked == false) {
                        chkIndex[x].checked = true;
                        tempSelected = tempSelected.concat(chkList[x].innerText);
                    }
                    //为了避免chkClick事件和直接编辑城镇文本框造成的影响，还是重新获取一遍城镇文本框好
                    var Label_cities = document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value;
                    Label_cities_values = Label_cities.split(",");
                    var finalList = noRepeatJoin(tempSelected, Label_cities_values);  //添加勾选的项目
                    finalList = finalList.join(",");  //将数组变成用,分隔的字符串
                    if (finalList.indexOf(",") == 0) { finalList = finalList.substring(1, finalList.length); } //去除前后一个逗号，如果有的话
                    if (finalList.lastIndexOf(",") == 0) { finalList = finalList.substring(0, finalList.length - 1); }
                    //把选中项的列表显示到城镇列表文本框中
                    document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value = finalList;
                }
            }
        }
    }

       </script>

                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        已知分布城镇：<span class="validate">（直接修改数据容易出错，如非必要，请勿直接改动下面的文本框）</span><br />
                        <asp:TextBox ID="Label_cities" runat="server" Height="120px" 
                            Text='<%# Bind("cities") %>' TextMode="MultiLine" Width="860px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        株高<br />
                        <br />
                        蓬径</td>
                    <td style="width: 267px">
                        可达<asp:TextBox ID="TextBox_max_high" runat="server" EnableViewState="False" 
                            MaxLength="5" Text='<%#Bind("max_high") %>' Width="64px" Wrap="False"></asp:TextBox>
                        <span class="validate">CM<br />
                        </span>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox_max_high" Display="Dynamic" 
                            ErrorMessage="高度范围：0-32700" MaximumValue="32700" MinimumValue="0" 
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
                        生长类型</td>
                    <td style="width: 286px">
                        <asp:DropDownList ID="DDList_growth_type" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("growth_type") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>一年生花卉</asp:ListItem>
                            <asp:ListItem>二年生花卉</asp:ListItem>
                            <asp:ListItem>宿根花卉</asp:ListItem>
                            <asp:ListItem>球根花卉</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        观赏类型</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_ornamental_type" runat="server" 
                            CssClass="myCBL" EnableViewState="False" 
                            RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("ornamental_type") %>'>
                            <asp:ListItem>观叶</asp:ListItem>
                            <asp:ListItem>观花</asp:ListItem>
                            <asp:ListItem>观果</asp:ListItem>
                            <asp:ListItem>观形</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        叶色</td>
                    <td style="width: 267px">
                        <asp:DropDownList ID="DDList_leaf_color" runat="server" EnableViewState="False" 
                            Height="16px" SelectedValue='<%# Bind("leaf_color") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>叶色常绿</asp:ListItem>
                            <asp:ListItem>叶色常灰白</asp:ListItem>
                            <asp:ListItem>叶色常黄绿</asp:ListItem>
                            <asp:ListItem>叶色常红紫</asp:ListItem>
                            <asp:ListItem>叶色常斑色</asp:ListItem>
                            <asp:ListItem>叶色多彩或多变</asp:ListItem>
                            <asp:ListItem>叶表背二色</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        花色</td>
                    <td style="width: 286px">
                        <myctl:myCheckboxlist ID="myCBL_fw_color" runat="server" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            RepeatLayout="Flow" SelectedValue='<%# Bind("fw_color") %>'>
                            <asp:ListItem>红色系</asp:ListItem>
                            <asp:ListItem>黄色系</asp:ListItem>
                            <asp:ListItem>橙色系</asp:ListItem>
                            <asp:ListItem>蓝色系</asp:ListItem>
                            <asp:ListItem>紫色系</asp:ListItem>
                            <asp:ListItem>白色系</asp:ListItem>
                            <asp:ListItem>多色系</asp:ListItem>
                            <asp:ListItem>花色可变</asp:ListItem>
                        </myctl:myCheckboxlist>
                        <br />
                        多选：该种有各色品种。<br />
                        多色系：一株上有多种颜色。</td>
                    <td style="width: 36px">
                        花期<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        花香</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_florescence" runat="server" CssClass="myCBL" 
                            RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("florescence") %>'>
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
                        &nbsp;<asp:DropDownList ID="DDList_fragrance" runat="server" EnableViewState="False" 
                            SelectedValue='<%# Bind("fragrance") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>有异味</asp:ListItem>
                            <asp:ListItem>无味</asp:ListItem>
                            <asp:ListItem>有微香</asp:ListItem>
                            <asp:ListItem>香味较浓</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        果色</td>
                    <td style="width: 267px">
                        <asp:DropDownList ID="DDList_fu_color" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("fu_color") %>' 
                            style="margin-bottom: 0px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>红色</asp:ListItem>
                            <asp:ListItem>黄橙色</asp:ListItem>
                            <asp:ListItem>蓝紫色</asp:ListItem>
                            <asp:ListItem>白色</asp:ListItem>
                            <asp:ListItem>黑色</asp:ListItem>
                            <asp:ListItem>褐色</asp:ListItem>
                            <asp:ListItem>杂色</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        果期</td>
                    <td style="width: 286px">
                        <myctl:myCheckboxlist ID="myCBL_fu_period" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("fu_period") %>'>
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
                    </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        水分</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_water" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("water") %>'>
                            <asp:ListItem Value="沉水">沉水植物</asp:ListItem>
                            <asp:ListItem Value="漂浮">漂浮植物</asp:ListItem>
                            <asp:ListItem Value="浮水">浮水植物</asp:ListItem>
                            <asp:ListItem Value="挺水">挺水植物</asp:ListItem>
                            <asp:ListItem Value="湿生">湿生植物</asp:ListItem>
                            <asp:ListItem Value="中生">中生植物</asp:ListItem>
                            <asp:ListItem Value="旱生">旱生植物</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        水生选项</td>
                    <td style="width: 286px">
                        流速要求：<asp:DropDownList ID="DDList_velocity" runat="server" Height="16px" 
                            SelectedValue='<%# Bind("velocity") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>需流水</asp:ListItem>
                            <asp:ListItem>需静水或缓流</asp:ListItem>
                            <asp:ListItem>两者皆可</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        水深可达：<asp:TextBox ID="TextBox_water_depth" runat="server" MaxLength="4" 
                            Width="45px" Text='<%# Bind("water_depth") %>'></asp:TextBox>
                        CM 以上<br />
                        <asp:RangeValidator ID="RangeValidator3" runat="server" 
                            ControlToValidate="TextBox_water_depth" Display="Dynamic" 
                            ErrorMessage="水深范围:0-3000CM" MaximumValue="3000" MinimumValue="0" 
                            SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </td>
                    <td style="width: 36px">
                        光强</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_light" runat="server" 
                            EnableViewState="False" RepeatColumns="2" 
                            SelectedValue='<%# Bind("light") %>' RepeatLayout="Flow">
                        <asp:ListItem>阳性植物</asp:ListItem>
                        <asp:ListItem>中性植物(耐荫植物)</asp:ListItem>
                        <asp:ListItem>阴性植物</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        土壤</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_soil" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" SelectedValue='<%# Bind("soil") %>'>
                            <asp:ListItem>酸性土</asp:ListItem>
                            <asp:ListItem>石灰质土</asp:ListItem>
                            <asp:ListItem>耐盐碱地</asp:ListItem>
                            <asp:ListItem>耐瘠薄土壤</asp:ListItem>
                            <asp:ListItem>耐粘重土</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        温度要求</td>
                    <td style="width: 286px">
                        <br />
                        <asp:DropDownList ID="DDList_cold" runat="server" EnableViewState="False" 
                            SelectedValue='<%# Bind("cold") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>耐寒花卉(耐低于-10度)</asp:ListItem>
                            <asp:ListItem>喜凉花卉(耐-5度左右)</asp:ListItem>
                            <asp:ListItem>中温花卉(耐短期霜冻)</asp:ListItem>
                            <asp:ListItem>喜温花卉(需5度以上)</asp:ListItem>
                            <asp:ListItem>耐热花卉(需10度以上)</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        抗污染能力</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_res" runat="server" CssClass="myCBL" 
                            RepeatColumns="3" SelectedValue='<%# Bind("res") %>' 
                            EnableViewState="False">
                            <asp:ListItem>氯气及氯化物</asp:ListItem>
                            <asp:ListItem>光化学烟雾</asp:ListItem>
                            <asp:ListItem>二氧化硫</asp:ListItem>
                            <asp:ListItem>硫化氢</asp:ListItem>
                            <asp:ListItem>氟化氢</asp:ListItem>
                            <asp:ListItem>臭氧</asp:ListItem>
                            <asp:ListItem>氨气</asp:ListItem>
                            <asp:ListItem>粉尘</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        园林用途</td>
                    <td colspan="3">
                        <myctl:myCheckboxlist ID="myCBL_application" runat="server" RepeatColumns="3" 
                            RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("application") %>' CssClass="myCBL" 
                            EnableViewState="False">
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
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        备注</td>
                    <td colspan="5">
                        <asp:TextBox ID="remarkTextBox" runat="server" Height="40px" 
                            Text='<%# Bind("remark") %>' Width="860px" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片一</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload1" runat="server" 
                            filename='<%# Bind("pic1") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片二</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload2" runat="server" 
                            filename='<%# Bind("pic2") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片三</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload3" runat="server" 
                            filename='<%# Bind("pic3") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片四</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload4" runat="server" 
                            filename='<%# Bind("pic4") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片五</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload5" runat="server" 
                            filename='<%# Bind("pic5") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片六</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload6" runat="server" 
                            filename='<%# Bind("pic6") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="table_content" rules="all">
                <tr>
                    <td style="width: 36px">
                        科名</td>
                    <td style="width: 267px">
                        &nbsp;<asp:TextBox ID="familyTextBox" runat="server" Text='<%# Bind("family") %>' 
                            Width="110px" />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator2" runat="server" ControlToValidate="familyTextBox" 
                            Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">请填写科名</asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        属名</td>
                    <td style="width: 286px">
                        <asp:TextBox ID="genusTextBox" runat="server" Text='<%# Bind("genus") %>' />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="genusTextBox" 
                            Display="Dynamic" ErrorMessage="RequiredFieldValidator" SetFocusOnError="True">请填写属名</asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        学名</td>
                    <td>
                        <asp:TextBox ID="l_speciesTextBox" runat="server" AutoPostBack="True" 
                            ontextchanged="l_speciesTextBox_TextChanged" Text='<%# Bind("l_species") %>' 
                            Width="181px" />
                        <span class="validate">* </span>(拉丁名)
                        <br />
                        <asp:Label ID="Label_latinNameCheck" runat="server" CssClass="validate" 
                            Text=" "></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="l_speciesTextBox" Display="Dynamic" ErrorMessage="请填写学名" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        种名</td>
                    <td style="width: 267px">
                        &nbsp;<asp:TextBox ID="speciesTextBox" runat="server" 
                            Text='<%# Bind("species") %>' />
                        <span class="validate">*<asp:RequiredFieldValidator 
                            ID="RequiredFieldValidator4" runat="server" ControlToValidate="speciesTextBox" 
                            Display="Dynamic" ErrorMessage="请填写种名" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td style="width: 36px">
                        类别</td>
                    <td style="width: 286px">
                        <asp:DropDownList ID="DDList_Type" runat="server" Enabled="False" 
                            EnableViewState="False" SelectedValue='<%# Bind("type") %>'>
                            <asp:ListItem Selected="True">草花</asp:ListItem>
                        </asp:DropDownList>
                        <span class="validate">* </span>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="DDList_Type" Display="Dynamic" ErrorMessage="请填写类别" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        分布城镇 
                    </td>
                    <td colspan="5">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                请选择分区：<asp:DropDownList ID="DDList_region1" runat="server" AutoPostBack="True" 
                                    EnableViewState="False" 
                                    onselectedindexchanged="DDList_region1_SelectedIndexChanged">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem Value="region1">001 大兴安岭及小兴安岭北部分区</asp:ListItem>
                                    <asp:ListItem Value="region2">002 东北中部平原及山地分区</asp:ListItem>
                                    <asp:ListItem Value="region3">003 内蒙古北部分区</asp:ListItem>
                                    <asp:ListItem Value="region4">004 新疆北部分区（北疆分区）</asp:ListItem>
                                    <asp:ListItem Value="region5">005 东北南部平原及华北北部山地、高原分区</asp:ListItem>
                                    <asp:ListItem Value="region6">006 大西北分区（蒙、宁、甘、疆分区）</asp:ListItem>
                                    <asp:ListItem Value="region7">007 华北北部平原及黄土高原分区</asp:ListItem>
                                    <asp:ListItem Value="region8">008 华北南部平原、秦岭南坡之北部及四川北部分区</asp:ListItem>
                                    <asp:ListItem Value="region9">009 华中北部（平原、丘陵及秦巴地区）分区</asp:ListItem>
                                    <asp:ListItem Value="region10">010 华中南部（东南丘陵、四川盆地、云贵高原）分区</asp:ListItem>
                                    <asp:ListItem Value="region11">011 华南分区</asp:ListItem>
                                    <asp:ListItem Value="region12">012 台湾北部分区</asp:ListItem>
                                    <asp:ListItem Value="region13">013 台湾南部分区</asp:ListItem>
                                    <asp:ListItem Value="region14">014 广东南端及海南岛分区</asp:ListItem>
                                    <asp:ListItem Value="region15">015 滇西南部分区</asp:ListItem>
                                    <asp:ListItem Value="region16">016 南海诸岛分区</asp:ListItem>
                                    <asp:ListItem Value="region17">017 青藏温带及寒漠分区</asp:ListItem>
                                    <asp:ListItem Value="region18">018 青藏北暖温带及寒漠分区</asp:ListItem>
                                    <asp:ListItem Value="region19">019 青藏中暖温带及寒漠分区</asp:ListItem>
                                    <asp:ListItem Value="region20">020 青藏南暖温带及寒漠分区</asp:ListItem>
                                </asp:DropDownList>
                                <span class="validate">从此下拉框选择城镇列表。<input id="Button_SelectAll1" type="button"
                                    value="全选" /></span><br />
                                <myctl:myCheckboxlist ID="myCBL_city_selecting1" runat="server" 
                                    EnableViewState="False" RepeatColumns="12" RepeatDirection="Horizontal" 
                                    RepeatLayout="Flow">
                                </myctl:myCheckboxlist>

  <script type="text/javascript">
      var chkList;  //先定义全局变量,表示待选择的城镇的label数组
      var chkIndex; //待选择的城镇的checkbox数组
      var Label_cities_values; //城镇列表文本框对应的数组
      Sys.WebForms.PageRequestManager.getInstance().add_pageLoaded(cities_onload);

      //checkbox的onclick事件，用于更新“已选择的项”
      function chkClick() {
          var tempSelected = new Array();   //当前选中的label数组
          var tempNotSelected = new Array(); //当前未选中的label数组
          //最终的cities数组，初始值为文本框中cities数组,每次click都必须重新获取
          var labelNowList = document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value.split(",");
          for (var i = 0; i < chkList.length; i++) {
              if (chkIndex[i].checked)  //如果该项被选择
              {
                  tempSelected = tempSelected.concat(chkList[i].innerText); //获取所有被选中的项
              }
              else tempNotSelected = tempNotSelected.concat(chkList[i].innerText); //获取所有未选中的项
          }
          var finalList = noRepeatJoin(labelNowList, tempSelected);  //添加勾选的项目
          finalList = removeRepeat(finalList, tempNotSelected); //去掉被取消勾选的项目
          finalList = finalList.join(",");  //将数组变成用,分隔的字符串
          if (finalList.indexOf(",") == 0) { finalList = finalList.substring(1, finalList.length); } //去除前后一个逗号，如果有的话
          if (finalList.lastIndexOf(",") == 0) { finalList = finalList.substring(0, finalList.length - 1); }

          //把选中项的列表显示到城镇列表文本框中
          document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value = finalList;
      }

      function noRepeatJoin(arrayOriginal, arrayToAdd) {   //连接两个数组，去掉重复元素
          var tempArray = arrayOriginal;  //定义临时数组，初始值为原有数组
          for (var x in arrayToAdd) { //遍历将要添加的数组
              var isIN = false;  //将要添加的是否已在原始数组中
              for (var y in arrayOriginal) {  //遍历原有数组
                  if (arrayOriginal[y] == arrayToAdd[x])
                  { isIN = true; break; }  //如果该项重复，终止arrayOriginal循环,继续检测要添加数组的下一个元素
              }
              if (isIN == false) { tempArray = tempArray.concat(arrayToAdd[x]); }
          }
          return tempArray;
      }
      function removeRepeat(arrayOriginal, arrayToRemove) {  //遍历arrayOriginal,移除其中与arrayToRemove重复的项
          var tempArray = arrayOriginal;
          var count = 0;  //被删除的项计数
          for (var x in arrayOriginal) {
              for (var y in arrayToRemove) {
                  if (arrayOriginal[x] == arrayToRemove[y]) {
                      tempArray.splice(x - count, 1); //如果重复，删除该项
                      count = count + 1; //因为删除会导致tempArray项减少
                      break;
                  }
              }
          }
          return tempArray;

      }

      function cities_onload() {                //当待myCBL_city_selecting1加载时，自动勾选已在Label_cities存在的项，并为所有checkbox添加onclick事件处理，以自动更新“已选择的项”
          if (document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting1").ClientID %>') !== null) {
              //先获取到所有的checkbox再说
              var tempchkList = document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting1").ClientID %>');
              chkList = tempchkList.getElementsByTagName('LABEL');  //关键的两步,将checkbox和label分开获取
              chkIndex = tempchkList.getElementsByTagName('INPUT');
              var Label_cities = document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value;
              Label_cities_values = Label_cities.split(",");
              //设置选择状态，注意两个循环的顺序，如果把chkList放到内层，将不能保证总是取得正确结果
              //因为如果输入了多个相同值，后面的值会把前面的正确结果给冲掉
              for (var j = 0; j < chkList.length; j++) {  //自动勾选已在Label_cities存在的项
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
              for (var k = 0; k < chkIndex.length; k++) {  //为所有checkbox添加onclick事件处理
                  chkIndex[k].onclick = chkClick;
              }
              document.getElementById("Button_SelectAll1").onclick = SelectAll_onclick;

          }

          function SelectAll_onclick() {  //点击全选按钮时发生
              if (document.getElementById('<%= FormView1.FindControl("myCBL_city_selecting1").ClientID %>') !== null) {
                  //选中的文字数组，临时列表
                  var tempSelected = new Array();
                  for (var x = 0; x < chkIndex.length; x++) {  //因为已检测城市列表存在，必然发生过cities_onload()事件，故可放心使用chkIndex、chkList
                      if (chkIndex[x].checked == false) {
                          chkIndex[x].checked = true;
                          tempSelected = tempSelected.concat(chkList[x].innerText);
                      }
                      //为了避免chkClick事件和直接编辑城镇文本框造成的影响，还是重新获取一遍城镇文本框好
                      var Label_cities = document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value;
                      Label_cities_values = Label_cities.split(",");
                      var finalList = noRepeatJoin(tempSelected, Label_cities_values);  //添加勾选的项目
                      finalList = finalList.join(",");  //将数组变成用,分隔的字符串
                      if (finalList.indexOf(",") == 0) { finalList = finalList.substring(1, finalList.length); } //去除前后一个逗号，如果有的话
                      if (finalList.lastIndexOf(",") == 0) { finalList = finalList.substring(0, finalList.length - 1); }
                      //把选中项的列表显示到城镇列表文本框中
                      document.getElementById('<%= FormView1.FindControl("Label_cities").ClientID %>').value = finalList;
                  }
              }
          }
      }

       </script>

                                <br />
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        已知分布城镇：<span class="validate">（直接修改数据容易出错，如非必要，请勿直接改动下面的文本框）</span><br />
                        <asp:TextBox ID="Label_cities" runat="server" Height="120px" 
                            Text='<%# Bind("cities") %>' TextMode="MultiLine" Width="860px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        株高<br />
                        <br />
                        蓬径</td>
                    <td style="width: 267px">
                        可达<asp:TextBox ID="TextBox_max_high" runat="server" EnableViewState="False" 
                            MaxLength="5" Text='<%#Bind("max_high") %>' Width="64px" Wrap="False"></asp:TextBox>
                        <span class="validate">CM<br />
                        </span>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="TextBox_max_high" Display="Dynamic" 
                            ErrorMessage="高度范围：0-32700" MaximumValue="32700" MinimumValue="0" 
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
                        生长类型</td>
                    <td style="width: 286px">
                        <asp:DropDownList ID="DDList_growth_type" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("growth_type") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>一年生花卉</asp:ListItem>
                            <asp:ListItem>二年生花卉</asp:ListItem>
                            <asp:ListItem>宿根花卉</asp:ListItem>
                            <asp:ListItem>球根花卉</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        观赏类型</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_ornamental_type" runat="server" 
                            CssClass="myCBL" EnableViewState="False" 
                            RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("ornamental_type") %>'>
                            <asp:ListItem>观叶</asp:ListItem>
                            <asp:ListItem>观花</asp:ListItem>
                            <asp:ListItem>观果</asp:ListItem>
                            <asp:ListItem>观形</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        叶色</td>
                    <td style="width: 267px">
                        <asp:DropDownList ID="DDList_leaf_color" runat="server" EnableViewState="False" 
                            Height="16px" SelectedValue='<%# Bind("leaf_color") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>叶色常绿</asp:ListItem>
                            <asp:ListItem>叶色常灰白</asp:ListItem>
                            <asp:ListItem>叶色常黄绿</asp:ListItem>
                            <asp:ListItem>叶色常红紫</asp:ListItem>
                            <asp:ListItem>叶色常斑色</asp:ListItem>
                            <asp:ListItem>叶色多彩或多变</asp:ListItem>
                            <asp:ListItem>叶表背二色</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        花色</td>
                    <td style="width: 286px">
                        <myctl:myCheckboxlist ID="myCBL_fw_color" runat="server" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            RepeatLayout="Flow" SelectedValue='<%# Bind("fw_color") %>'>
                            <asp:ListItem>红色系</asp:ListItem>
                            <asp:ListItem>黄色系</asp:ListItem>
                            <asp:ListItem>橙色系</asp:ListItem>
                            <asp:ListItem>蓝色系</asp:ListItem>
                            <asp:ListItem>紫色系</asp:ListItem>
                            <asp:ListItem>白色系</asp:ListItem>
                            <asp:ListItem>多色系</asp:ListItem>
                            <asp:ListItem>花色可变</asp:ListItem>
                        </myctl:myCheckboxlist>
                        <br />
                        多选：该种有各色品种。<br />
                        多色系：一株上有多种颜色。</td>
                    <td style="width: 36px">
                        花期<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        花香</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_florescence" runat="server" CssClass="myCBL" 
                            RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("florescence") %>'>
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
                        &nbsp;<asp:DropDownList ID="DDList_fragrance" runat="server" EnableViewState="False" 
                            SelectedValue='<%# Bind("fragrance") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>有异味</asp:ListItem>
                            <asp:ListItem>无味</asp:ListItem>
                            <asp:ListItem>有微香</asp:ListItem>
                            <asp:ListItem>香味较浓</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        果色</td>
                    <td style="width: 267px">
                        <asp:DropDownList ID="DDList_fu_color" runat="server" 
                            EnableViewState="False" SelectedValue='<%# Bind("fu_color") %>' 
                            style="margin-bottom: 0px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>红色</asp:ListItem>
                            <asp:ListItem>黄橙色</asp:ListItem>
                            <asp:ListItem>蓝紫色</asp:ListItem>
                            <asp:ListItem>白色</asp:ListItem>
                            <asp:ListItem>黑色</asp:ListItem>
                            <asp:ListItem>褐色</asp:ListItem>
                            <asp:ListItem>杂色</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td style="width: 36px">
                        果期</td>
                    <td style="width: 286px">
                        <myctl:myCheckboxlist ID="myCBL_fu_period" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="3" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("fu_period") %>'>
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
                    </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        水分</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_water" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("water") %>'>
                            <asp:ListItem Value="沉水">沉水植物</asp:ListItem>
                            <asp:ListItem Value="漂浮">漂浮植物</asp:ListItem>
                            <asp:ListItem Value="浮水">浮水植物</asp:ListItem>
                            <asp:ListItem Value="挺水">挺水植物</asp:ListItem>
                            <asp:ListItem Value="湿生">湿生植物</asp:ListItem>
                            <asp:ListItem Value="中生">中生植物</asp:ListItem>
                            <asp:ListItem Value="旱生">旱生植物</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        水生选项</td>
                    <td style="width: 286px">
                        流速要求：<asp:DropDownList ID="DDList_velocity" runat="server" Height="16px" 
                            SelectedValue='<%# Bind("velocity") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>需流水</asp:ListItem>
                            <asp:ListItem>需静水或缓流</asp:ListItem>
                            <asp:ListItem>两者皆可</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        水深可达：<asp:TextBox ID="TextBox_water_depth" runat="server" MaxLength="4" 
                            Width="45px" Text='<%# Bind("water_depth") %>'></asp:TextBox>
                        CM 以上<br />
                        <asp:RangeValidator ID="RangeValidator3" runat="server" 
                            ControlToValidate="TextBox_water_depth" Display="Dynamic" 
                            ErrorMessage="水深范围:0-3000CM" MaximumValue="3000" MinimumValue="0" 
                            SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    </td>
                    <td style="width: 36px">
                        光强</td>
                    <td>
                        <myctl:myCheckboxlist ID="myCBL_light" runat="server" 
                            EnableViewState="False" RepeatColumns="2" 
                            SelectedValue='<%# Bind("light") %>' RepeatLayout="Flow">
                        <asp:ListItem>阳性植物</asp:ListItem>
                        <asp:ListItem>中性植物(耐荫植物)</asp:ListItem>
                        <asp:ListItem>阴性植物</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        土壤</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_soil" runat="server" CssClass="myCBL" 
                            EnableViewState="False" RepeatColumns="2" SelectedValue='<%# Bind("soil") %>'>
                            <asp:ListItem>酸性土</asp:ListItem>
                            <asp:ListItem>石灰质土</asp:ListItem>
                            <asp:ListItem>耐盐碱地</asp:ListItem>
                            <asp:ListItem>耐瘠薄土壤</asp:ListItem>
                            <asp:ListItem>耐粘重土</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        温度要求</td>
                    <td style="width: 286px">
                        <br />
                        <asp:DropDownList ID="DDList_cold" runat="server" EnableViewState="False" 
                            SelectedValue='<%# Bind("cold") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>耐寒花卉(耐低于-10度)</asp:ListItem>
                            <asp:ListItem>喜凉花卉(耐-5度左右)</asp:ListItem>
                            <asp:ListItem>中温花卉(耐短期霜冻)</asp:ListItem>
                            <asp:ListItem>喜温花卉(需5度以上)</asp:ListItem>
                            <asp:ListItem>耐热花卉(需10度以上)</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td style="width: 36px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        抗污染能力</td>
                    <td style="width: 267px">
                        <myctl:myCheckboxlist ID="myCBL_res" runat="server" CssClass="myCBL" 
                            RepeatColumns="3" SelectedValue='<%# Bind("res") %>' 
                            EnableViewState="False">
                            <asp:ListItem>氯气及氯化物</asp:ListItem>
                            <asp:ListItem>光化学烟雾</asp:ListItem>
                            <asp:ListItem>二氧化硫</asp:ListItem>
                            <asp:ListItem>硫化氢</asp:ListItem>
                            <asp:ListItem>氟化氢</asp:ListItem>
                            <asp:ListItem>臭氧</asp:ListItem>
                            <asp:ListItem>氨气</asp:ListItem>
                            <asp:ListItem>粉尘</asp:ListItem>
                        </myctl:myCheckboxlist>
                    </td>
                    <td style="width: 36px">
                        园林用途</td>
                    <td colspan="3">
                        <myctl:myCheckboxlist ID="myCBL_application" runat="server" RepeatColumns="3" 
                            RepeatDirection="Horizontal" 
                            SelectedValue='<%# Bind("application") %>' CssClass="myCBL" 
                            EnableViewState="False">
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
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        备注</td>
                    <td colspan="5">
                        <asp:TextBox ID="remarkTextBox" runat="server" Height="40px" 
                            Text='<%# Bind("remark") %>' Width="860px" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片一</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload1" runat="server" 
                            filename='<%# Bind("pic1") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片二</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload2" runat="server" 
                            filename='<%# Bind("pic2") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片三</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload3" runat="server" 
                            filename='<%# Bind("pic3") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片四</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload4" runat="server" 
                            filename='<%# Bind("pic4") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片五</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload5" runat="server" 
                            filename='<%# Bind("pic5") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 36px">
                        图片六</td>
                    <td colspan="5">
                        <myctl:ImageUpload ID="ImageUpload6" runat="server" 
                            filename='<%# Bind("pic6") %> ' picSaveDir="~/img/flora/" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="取消" />
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
                            <asp:Image ID="Image1" runat="server" AlternateText="暂无图片" CssClass="picShow" 
                                EnableViewState="False" ImageAlign="Middle" ImageUrl='<%# Eval("pic1") %>' 
                                ToolTip="新窗口中浏览" />
                            </a>
                            <br />
                            <input id="prv_Img" onclick="imgChange();" type="button" value="上一张" /> 共<span 
                                id="count" class="validate"></span>张图片，当前显示第<span ID="current" 
                                class="validate">1</span>张 
                            <input id="next_Img" onclick="imgChange();" type="button" value="下一张" />
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
    var img = document.getElementById('<%= FormView1.FindControl("Image1").ClientID %>'); //需更改的图片
    var link = document.getElementById('<%= FormView1.FindControl("pic_link").ClientID %>'); //新窗口浏览图片的链接
    var count = 0;  // 可用图片数目
    var imgArr = new Array; //图片路径数组
    var current = 1; //当前图片序号，初始为第1张
    var tmpArr = new Array(pic1, pic2, pic3, pic4, pic5, pic6);
    for (var x in tmpArr) {
        if (tmpArr[x] !== "") { imgArr = imgArr.concat(tmpArr[x]); count += 1; }
    }
    document.getElementById('count').textContent = count; //显示共有几张图片 for Firefox
    document.getElementById('count').innerText = count;  //for IE
    function imgChange() {
        if (imgArr.length == 0) { return; }
        current = current + 1;  //当前图片序号+1
        if (current > imgArr.length) { current = 1; } // 若到了最后一张,则放影第一张
        img.src = imgArr[current - 1].slice(2);
        link.href = imgArr[current - 1].slice(2);
        document.getElementById('current').textContent = current;  //for Firefox
        document.getElementById('current').innerText = current;  //for IE
    }

 </script>

                    </td>
                    <td style="width: 474px">
                        <b>科：</b><asp:Label ID="familyLabel" runat="server" 
                            Text='<%# Bind("family") %>' />
                        <br />
                        <b>属：</b><asp:Label ID="genusLabel" runat="server" 
                            Text='<%# Bind("genus") %>' />
                        <br />
                        <b>类别：</b><asp:Label ID="typeLabel" runat="server" 
                            Text='<%# Eval("type")%>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>株高：</b><asp:Label ID="max_highLabel" runat="server" 
                            Text='<%# Eval("max_high","{0}厘米") %>' />
                        <br />
                        <b>冠幅：</b><asp:Label ID="widthLabel" runat="server" 
                            Text='<%# Bind("width") %>' />
                        <br />
                        <b>生长类型：</b><asp:Label ID="growth_typeLabel" runat="server" 
                            Text='<%# Eval("growth_type") %>' />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>观赏类型：</b><asp:Label ID="ornamental_typeLabel" runat="server" 
                            Text='<%# Eval("growth_type") %>' />
                        <br />
                        <b>叶色：</b><asp:Label ID="leaf_colorLabel" runat="server" 
                            Text='<%# Eval("leaf_color") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>花色：</b><asp:Label ID="fw_colorLabel" runat="server" 
                            Text='<%# Eval("fw_color") %>' />
                        <br />
                        <b>花香：</b><asp:Label ID="fragranceLabel" runat="server" 
                            Text='<%# Eval("fragrance") %>' />
                        <br />
                        <b>花期：</b><asp:Label ID="florescenceLabel" runat="server" 
                            Text='<%# Eval("florescence") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 474px">
                        <b>果色：</b><asp:Label ID="fu_colorLabel" runat="server" 
                            Text='<%# Eval("fu_color") %>' />
                        <br />
                        <b>果期：</b><asp:Label ID="fu_periodLabel" runat="server" 
                            Text='<%# Eval("fu_period") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="width: 737px">

                        <b>所在分区：</b><myctl:myCheckboxlist ID="myCBL_region1" runat="server" 
                            CssClass="myCBL" EnableViewState="False" RepeatColumns="2" 
                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("regions") %>'>
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
                        </myctl:myCheckboxlist>

                    </td>
                    <td style="width: 474px">

                        <b>光强：</b><asp:Label ID="lightLabel" runat="server" 
                            Text='<%# Eval("light") %>' />
                        <br />
                        <b>抗寒性：</b><asp:Label ID="coldLabel" runat="server" 
                            Text='<%# Eval("cold") %>' />
                        <br />
                        <b>水分：</b><asp:Label ID="waterLabel" runat="server" 
                            Text='<%# Eval("water") %>' />
                        <br />
                        <b>土壤：</b><asp:Label ID="soilLabel" runat="server" Text='<%# Eval("soil") %>' />
                        <br />
                        <b>抗污染：</b><asp:Label ID="resLabel" runat="server" Text='<%# Eval("res") %>' />
                        <br />
                        <br />
                        <b>以下适用于水生植物：</b><br />
                        <b>流速要求：</b><asp:Label ID="velocity" runat="server" 
                            Text='<%# Eval("velocity") %>'></asp:Label>
                        <br />
                        <b>水深可达：</b><asp:Label ID="water_depth" runat="server" 
                            Text='<%# Eval("water_depth","{0}CM以上") %>'></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td style="width: 737px">
                        <b>分布城镇：</b><br />
                        <asp:Label ID="citiesLabel" runat="server" Text='<%# Eval("cities") %>' />
                        <br />
                    </td>
                    <td style="width: 474px">
                        <b>园林应用: </b>
                        <asp:Label ID="applicationLabel" runat="server" 
                            Text='<%# Eval("application") %>' />
                        <br />
                        <b>备注: </b>
                        <asp:Label ID="remarkLabel" runat="server" Text='<%# Eval("remark") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="编辑" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="删除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="新建" />
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

