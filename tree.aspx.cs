using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    string city, region;
    int ele_range=200;  //设置该植物在当前分区已知分布海拔之外允许的偏差范围，单位：米
    int elevation; //定义当前城镇的高度

    /// <summary>
    /// 计算contain是否为container的子集
    /// </summary>
    /// <param name="contain"></param>
    /// <param name="container"></param>
    /// <returns>是则返回true</returns>
    bool isContain(string[] contain,string[] container)
    {
        if (container == null) return false; //如果任一项为空，直接返回false
        foreach (string x in contain)
        {
            if (!container.Contains(x))  //假如容器里面不包含（逐项进行==比较）当前项，返回false
            { return false; }
        }
        return true;   //遍历contain数组后，若contain中的项都被container包含，返回true
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        #region 定义该页的控件提示 - title
        myCBL_water.Items[0].Attributes.Add("title", "湿生植物：需生长在潮湿的环境中，干燥或中生的环境常导致死亡或生长不良，如池杉、海芋");
        myCBL_water.Items[1].Attributes.Add("title", "耐涝植物：耐湿力较强的中生植物，但仍以中生条件生长最佳，如旱柳、乌桕");
        myCBL_water.Items[2].Attributes.Add("title", "中生植物：不能忍受过干和过湿的条件，大多数植物属此类型");
        myCBL_water.Items[3].Attributes.Add("title", "耐旱植物：耐旱力较强的中生植物，但仍以中生条件生长最佳，如油松、侧柏");
        myCBL_water.Items[4].Attributes.Add("title", "旱生植物：在干旱的环境中能长期忍受干旱而正常生长发育的植物类型，如多浆植物、冷生植物");

        myCBL_light.Items[0].Attributes.Add("title", "阳性植物：在全光照下生长良好而不能忍受荫蔽的植物，如松属、桉属");
        myCBL_light.Items[1].Attributes.Add("title", "稍耐荫：在充足的阳光下生长最好，稍耐荫,如，如槭属");
        myCBL_light.Items[2].Attributes.Add("title", "较耐荫：在充足的阳光下生长最好，较耐荫，如杜鹃类");
        myCBL_light.Items[3].Attributes.Add("title", "阴性植物：在较弱光照条件下比在全光照下生长良好，如人参、三七，木本植物中很少");

        #endregion

        city = HttpUtility.UrlDecode(Request.QueryString["city"]); //一定要进行url解码，否则无法检索
        region = Request.QueryString["region"];
        FloraDataContext myDataContext = new FloraDataContext();
        var ele = from x in myDataContext.cities
                  where city == x.c_name
                  select x.city_elevation;

        if (ele.FirstOrDefault() == null) 
        {
         Response.Write(@"<script language='javascript'>alert('对不起，该城镇尚未开通检索，因暂无海拔记录。');history.go(-1);</script>");
         return;
        }
        elevation = (Int32)ele.FirstOrDefault();             //获取当前城镇高度
        var city_elevation_list = from x in myDataContext.cities  //获取当前分区的城镇-海拔集
                                  where region == x.region
                                  select x;
        
        switch (region)
        {
            case "region1":Label_region.Text="大兴安岭及小兴安岭北部分区"; break;
            case "region2":Label_region.Text="东北中部平原及山地分区"; break;
            case "region3":Label_region.Text="内蒙古北部分区";break;
            case "region4":Label_region.Text="新疆北部分区（北疆分区）";break;
            case "region5":Label_region.Text="东北南部平原及华北北部山地、高原分区";break;
            case "region6":Label_region.Text="大西北分区（蒙、宁、甘、疆分区）";break;
            case "region7":Label_region.Text="华北北部平原及黄土高原分区";break;
            case "region8":Label_region.Text="华北南部平原、秦岭南坡之北部及四川北部分区";break;
            case "region9":Label_region.Text="华中北部（平原、丘陵及秦巴地区）分区";break;
            case "region10":Label_region.Text="华中南部（东南丘陵、四川盆地、云贵高原）分区";break;
            case "region11":Label_region.Text="华南分区";break;
            case "region12":Label_region.Text="台湾北部分区";break;
            case "region13":Label_region.Text="台湾南部分区";break;
            case "region14":Label_region.Text="广东南端及海南岛分区";break;
            case "region15":Label_region.Text="滇西南部分区";break;
            case "region16":Label_region.Text="南海诸岛分区";break;
            case "region17":Label_region.Text="青藏温带及寒漠分区";break;
            case "region18":Label_region.Text="青藏北暖温带及寒漠分区";break;
            case "region19":Label_region.Text="青藏中暖温带及寒漠分区";break;
            case "region20":Label_region.Text="青藏南暖温带及寒漠分区";break;
            default: break;
 
        }
        Label_city.Text = city;
        if (!IsPostBack)
        {  
         var cityPlants = (from plant in myDataContext.tree //假如条件为空,则返回所有记录
                             let isInRegion=(plant.regions.IndexOf(region+",")>=0 || plant.regions.EndsWith(region))
                             let isInCity=(plant.cities.IndexOf(city + ",") >= 0 || plant.cities.EndsWith(city))
                             let eleList=from x in city_elevation_list
                                         where (isInRegion) && (plant.cities.IndexOf(x.c_name + ",") >= 0 || SqlMethods.Like(plant.cities, x.c_name + "%"))
                                         select x.city_elevation   //获取该植物在该地区分布的海拔列表
                             let max_ele=eleList.Max(x=>x)+ele_range   //取得该植物在该地区可用的最大海拔和最小海拔
                             let min_ele=eleList.Min(x=>x)-ele_range
                             let isInEle=(elevation<=max_ele && elevation>=min_ele) //当前城镇海拔必须介于该植物在当前分区分布的最大海拔和最小海拔之间才可采用该植物
                             where (isInEle|| isInCity)
                             select new { ID=plant.p_id, 学名=plant.l_species, 科=plant.family, 属=plant.genus, 种名=plant.species,
                                          在该分区记录中 = (isInRegion ? "有记录" : "无记录"),
                                          在该城镇记录中 = (isInCity ? "有记录" : "无记录")
                             }).OrderBy(g => g.科).ThenBy(g => g.属);
                GridView1.DataSource = cityPlants;
                GridView1.DataBind();
                Session["treeResult"] = cityPlants;

        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        #region 获取各个搜索控件的值
        int max_high = string.IsNullOrEmpty(TextBox_max_high.Text.Trim()) ? -1 : Convert.ToInt32(TextBox_max_high.Text.Trim());//如果max_high未指定，返回-1
        string groth_type = DDList_growth_type.SelectedValue;
        string life_habit = DDList_life_habit.SelectedValue;
        int age = string.IsNullOrEmpty(TextBox_age.Text.Trim()) ? -1 : Convert.ToInt32(TextBox_age.Text.Trim());  //如果age未指定，返回-1
        string growing_race = DDList_growing_race.SelectedValue;
        string width = DDList_width.SelectedValue;
        string tree_form = DDList_tree_form.SelectedValue;
        string leaf_ornamental = DDList_leaf_ornamental.SelectedValue;
        string leaf_color = DDList_leaf_color.SelectedValue;
        string fw_type = DDList_fw_type.SelectedValue;
        string flower_sense = DDList_flower_sense.SelectedValue;
        string florescence = myCBL_florescence.SelectedValue;
        string fw_color = DDList_fw_color.SelectedValue;
        string fragrance = DDList_fragrance.SelectedValue;
        bool is_fu_oremental = CB_is_fu_ornamental.Checked;
        string fu_color = DDList_fu_color.SelectedValue;
        string fu_period = myCBL_fu_period.SelectedValue;
        string brh_ornamental = DDList_brh_ornamental.SelectedValue;
        string brh_color = DDList_brh_color.SelectedValue;
        string water = myCBL_water.SelectedValue;
        string light = myCBL_light.SelectedValue;
        string soil = myCBL_soil.SelectedValue;
        string cold = DDList_cold.SelectedValue;
        string protective = myCBL_protective.SelectedValue;
        string res = myCBL_res.SelectedValue;
        string application = myCBL_application.SelectedValue;
        #endregion


        FloraDataContext myDataContext = new FloraDataContext();
        var city_elevation_list = from x in myDataContext.cities  //获取当前分区的城镇-海拔集
                                  where region == x.region
                                  select x;

        var cityPlants = (from plant in myDataContext.tree
                          let isInRegion = (plant.regions.IndexOf(region + ",") >= 0 || plant.regions.EndsWith(region))
                          let isInCity = (plant.cities.IndexOf(city + ",") >= 0 || plant.cities.EndsWith(city))     
                          let eleList = from x in city_elevation_list
                                        where (isInRegion) && (plant.cities.IndexOf(x.c_name + ",") >= 0 || SqlMethods.Like(plant.cities, x.c_name + "%"))
                                        select x.city_elevation   //获取该植物在该地区分布的海拔列表
                          let max_ele = eleList.Max(x => x) + ele_range   //取得该植物在该地区可用的最大海拔和最小海拔
                          let min_ele = eleList.Min(x => x) - ele_range
                          let isInEle = (elevation <= max_ele && elevation >= min_ele) //当前城镇海拔必须介于该植物在当前分区分布的最大海拔和最小海拔之间才可采用该植物
                          where (isInEle || isInCity)
                          //如果条件为空，则跳过该条件的筛选，否则根据提供值进行筛选。
                          && (max_high == -1 ? true : plant.max_high >= max_high * 100) //最大高度,选取数据库中比该值大的记录 注意：这里的单位米，所以要乘以100
                          && (groth_type == string.Empty ? true : groth_type == plant.growth_type) //生长类型,下拉框单选
                          && (life_habit == string.Empty ? true : life_habit == plant.life_habit) //生活习性，下拉框单选
                          && (age == -1 ? true : age <= plant.age) //最大年龄,需要比数据库中值小
                          && (growing_race == string.Empty ? true : growing_race == plant.growing_race) //生长速度，下拉框单选
                          && (width == string.Empty ? true : width == plant.width) //树冠大小，下拉框单选
                          && (tree_form == string.Empty ? true : tree_form == plant.tree_form) //树形。下拉框单选
                          && (leaf_ornamental==string.Empty?true:leaf_ornamental==plant.leaf_ornamental)//叶片观赏价值
                          && (flower_sense==string.Empty?true:flower_sense==plant.flower_sense)//花感，下拉框单选
                          && (fw_type == string.Empty ? true : fw_type == plant.fw_type) //开花类型,下拉框单选
                          && (fragrance == string.Empty ? true : fragrance == plant.fragrance) //花香，下拉框单选
                          && (is_fu_oremental ? is_fu_oremental == plant.is_fu_ornamental : true) //可观果，确认框。若勾选，则和数据库对比，若不勾选，跳过筛选。
                          && (fu_color == string.Empty ? true : fu_color == plant.fu_color) //果色，下拉框单选
                          && (brh_ornamental == string.Empty ? true : brh_ornamental == plant.brh_ornamental) //枝干观赏类型，下拉框单选
                          && (brh_color == string.Empty ? true : brh_color == plant.brh_color) //枝干颜色，下拉框单选
                          && (cold == string.Empty ? true : cold == plant.cold) //抗寒，下拉框单选
                          select plant).ToList();   //查询结果转至内存，因为Linq to Sql不支持string.Split()
        var result = (from plant in cityPlants
                       let isInRegion = (plant.regions.IndexOf(region + ",") >= 0 || plant.regions.EndsWith(region))
                       let isInCity = (plant.cities.IndexOf(city + ",") >= 0 || plant.cities.EndsWith(city))
                      where (leaf_color==string.Empty?true:isContain(leaf_color.Split(','),plant.leaf_color.Split(',')))//叶色，下拉框单选，单数据库中多个选项。调用isContain方法检查elevation是否为plant.elevation的子集
                            && (florescence == string.Empty ? true : isContain(florescence.Split(','), plant.florescence.Split(','))) //花期，多选框。
                            && (fw_color == string.Empty ? true : isContain(fw_color.Split(','),plant.fw_color.Split(','))) //花色，下拉框单选,但数据库中为多个选项
                            && (fu_period == string.Empty ? true : isContain(fu_period.Split(','), plant.fu_period.Split(','))) //果期，多选框
                            && (water == string.Empty ? true : isContain(water.Split(','), plant.water.Split(','))) //水分，多选框
                            && (light == string.Empty ? true : isContain(light.Split(','), plant.light.Split(','))) //光强，多选框
                            && (soil == string.Empty ? true : isContain(soil.Split(','), plant.soil.Split(','))) //土壤，多选框
                            && (protective==string.Empty?true:isContain(protective.Split(','),plant.protective.Split(','))) //防护功能，多选框
                            && (res == string.Empty ? true : isContain(res.Split(','), plant.res.Split(','))) //抗污染能力，多选框
                            && (application==string.Empty?true:isContain(application.Split(','),plant.application.Split(','))) //园林应用，多选框

                       select new
                            {
                                ID = plant.p_id,
                                学名 = plant.l_species,
                                科 = plant.family,
                                属 = plant.genus,
                                种名 = plant.species,
                                在该分区记录中 = (isInRegion ? "有记录" : "无记录"),
                                在该城镇记录中 = (isInCity ? "有记录" : "无记录")
                            }).OrderBy(g=>g.科).ThenBy(g=>g.属).ToList();
        Session["treeResult"] = result; //查询结果保存至session，以备翻页

        GridView1.DataSource = result;
        GridView1.DataBind();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = Session["treeResult"];
        GridView1.DataBind();
    }
}
