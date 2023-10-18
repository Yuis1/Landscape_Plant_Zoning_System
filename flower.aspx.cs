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
    int ele_range = 200;  //设置该植物在当前分区已知分布海拔之外允许的偏差范围，单位：米
    int elevation; //定义当前城镇的高度
    /// <summary>
    /// 计算contain是否为container的子集
    /// </summary>
    /// <param name="contain"></param>
    /// <param name="container"></param>
    /// <returns>是则返回true</returns>
    bool isContain(string[] contain, string[] container)
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
        myCBL_water.Items[0].Attributes.Add("title", "沉水植物：整株全沉没水中，根入泥或不入，如苦草、金鱼藻");
        myCBL_water.Items[1].Attributes.Add("title", "漂浮植物：根不入土，全株漂浮水面，如凤眼莲、大薸");
        myCBL_water.Items[2].Attributes.Add("title", "浮水植物：根生于水下泥中，叶片浮生于水面，如王莲、睡莲");
        myCBL_water.Items[3].Attributes.Add("title", "挺水植物：根生于水下泥中，但叶与花高挺出水面，如荷花、黄菖蒲");
        myCBL_water.Items[4].Attributes.Add("title", "湿生植物：根部生于潮湿或积有浅水的土中，不能适应深水淹没，土壤干燥时死亡或生长不良");
        myCBL_water.Items[5].Attributes.Add("title", "中生植物：不能忍受过干和过湿的条件，大多数植物属此类型");
        myCBL_water.Items[6].Attributes.Add("title", "旱生植物：在干旱的环境中能长期忍受干旱而正常生长发育的植物类型，如多浆植物、冷生植物");


        myCBL_light.Items[0].Attributes.Add("title", "阳性植物：在全光照下生长良好而不能忍受荫蔽的植物，如半枝莲、多浆植物");
        myCBL_light.Items[1].Attributes.Add("title", "中性植物(耐荫植物)：在充足的阳光或微荫下生长良好（70%-50%全日照），如萱草、白及");
        myCBL_light.Items[2].Attributes.Add("title", "阴性植物：要在适度荫蔽下方能生长良好（50%-20%全日照），如蕨类、虎耳草");

        DDList_cold.Items[1].Attributes.Add("title", "耐寒花卉：耐寒不耐热，冬季能忍受-10℃或更低的气温而不受害，如荷兰菊、芍药等宿根花卉");
        DDList_cold.Items[2].Attributes.Add("title", "喜凉花卉：冷凉气候下生长良好，不耐严寒和高温，-5℃左右不受冻害，如菊花、紫罗兰");
        DDList_cold.Items[3].Attributes.Add("title", "中温花卉：耐轻微短期霜冻,长江以南大部地区安全露地过冬，如矢车菊、报春花");
        DDList_cold.Items[4].Attributes.Add("title", "喜温花卉：喜温暖绝不耐霜冻，如大多数一年生花卉");
        DDList_cold.Items[5].Attributes.Add("title", "耐热花卉：喜温暖，耐40℃以上高温，10℃甚至15℃以下已不能适应，如竹芋科、胡椒科");
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
        elevation = (Int32)ele.First();             //获取当前城镇高度
        var city_elevation_list = from x in myDataContext.cities  //获取当前分区的城镇-海拔集
                                  where region == x.region
                                  select x;

        switch (region)
        {
            case "region1": Label_region.Text = "大兴安岭及小兴安岭北部分区"; break;
            case "region2": Label_region.Text = "东北中部平原及山地分区"; break;
            case "region3": Label_region.Text = "内蒙古北部分区"; break;
            case "region4": Label_region.Text = "新疆北部分区（北疆分区）"; break;
            case "region5": Label_region.Text = "东北南部平原及华北北部山地、高原分区"; break;
            case "region6": Label_region.Text = "大西北分区（蒙、宁、甘、疆分区）"; break;
            case "region7": Label_region.Text = "华北北部平原及黄土高原分区"; break;
            case "region8": Label_region.Text = "华北南部平原、秦岭南坡之北部及四川北部分区"; break;
            case "region9": Label_region.Text = "华中北部（平原、丘陵及秦巴地区）分区"; break;
            case "region10": Label_region.Text = "华中南部（东南丘陵、四川盆地、云贵高原）分区"; break;
            case "region11": Label_region.Text = "华南分区"; break;
            case "region12": Label_region.Text = "台湾北部分区"; break;
            case "region13": Label_region.Text = "台湾南部分区"; break;
            case "region14": Label_region.Text = "广东南端及海南岛分区"; break;
            case "region15": Label_region.Text = "滇西南部分区"; break;
            case "region16": Label_region.Text = "南海诸岛分区"; break;
            case "region17": Label_region.Text = "青藏温带及寒漠分区"; break;
            case "region18": Label_region.Text = "青藏北暖温带及寒漠分区"; break;
            case "region19": Label_region.Text = "青藏中暖温带及寒漠分区"; break;
            case "region20": Label_region.Text = "青藏南暖温带及寒漠分区"; break;
            default: break;

        }
        Label_city.Text = city;
        if (!IsPostBack)
        {
                var cityPlants = (from plant in myDataContext.flower //假如条件为空,则返回所有记录
                                  let isInRegion = (plant.regions.IndexOf(region + ",") >= 0 || plant.regions.EndsWith(region))
                                  let isInCity = (plant.cities.IndexOf(city + ",") >= 0 || plant.cities.EndsWith(city))
                                  let eleList = from x in city_elevation_list
                                                where (isInRegion)&&(plant.cities.IndexOf(x.c_name + ",") >= 0 || SqlMethods.Like(plant.cities, x.c_name + "%"))
                                                select x.city_elevation   //获取该植物在该地区分布的海拔列表
                                  let max_ele = eleList.Max(x => x) + ele_range   //取得该植物在该地区可用的最大海拔和最小海拔
                                  let min_ele = eleList.Min(x => x) - ele_range
                                  let isInEle = (elevation <= max_ele && elevation >= min_ele) //当前城镇海拔必须介于该植物在当前分区分布的最大海拔和最小海拔之间才可采用该植物
                                  where (isInEle || isInCity)
                                  select new
                                  {
                                      ID = plant.p_id,
                                      学名 = plant.l_species,
                                      科 = plant.family,
                                      属 = plant.genus,
                                      种名 = plant.species,
                                      在该分区记录中 = (isInRegion ? "有记录" : "无记录"),
                                      在该城镇记录中 = (isInCity ? "有记录" : "无记录")
                                  }).OrderBy(g => g.科).ThenBy(g => g.属);
                GridView1.DataSource = cityPlants;
                GridView1.DataBind();
                Session["flowerresult"] = cityPlants;
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        #region 获取各个搜索控件的值

        int max_high = string.IsNullOrEmpty(TextBox_max_high.Text.Trim()) ? -1 : Convert.ToInt32(TextBox_max_high.Text.Trim());//如果max_high未指定，返回-1
        string width = DDList_width.SelectedValue;
        string groth_type = DDList_growth_type.SelectedValue;

        string ornamental_type = myCBL_ornamental_type.SelectedValue;
        string leaf_color = DDList_leaf_color.SelectedValue;
        string fw_color = DDList_fw_color.SelectedValue;
        string florescence = myCBL_florescence.SelectedValue;
        string fragrance = DDList_fragrance.SelectedValue;
        string fu_color = DDList_fu_color.SelectedValue;
        string fu_period = myCBL_fu_period.SelectedValue;
        string water = myCBL_water.SelectedValue;
        string velocity = DDList_velocity.SelectedValue;
        int water_depth = string.IsNullOrEmpty(TextBox_water_depth.Text.Trim()) ? -1 : Convert.ToInt32(TextBox_water_depth.Text.Trim());
        string light = myCBL_light.SelectedValue;
        string soil = myCBL_soil.SelectedValue;
        string cold = DDList_cold.SelectedValue;
        string res = myCBL_res.SelectedValue;
        string application = myCBL_application.SelectedValue;
        #endregion


        FloraDataContext myDataContext = new FloraDataContext();
        var city_elevation_list = from x in myDataContext.cities  //获取当前分区的城镇-海拔集
                                  where region == x.region
                                  select x;
        var cityPlants = (from plant in myDataContext.flower
                          let isInRegion = (plant.regions.IndexOf(region + ",") >= 0 || plant.regions.EndsWith(region))
                          let isInCity = (plant.cities.IndexOf(city + ",") >= 0 || plant.cities.EndsWith(city))
                          //如果条件为空，则跳过该条件的筛选，否则根据提供值进行筛选。区域和城市为或，其余关系为与。
                          let eleList = from x in city_elevation_list
                                        where (isInRegion) && (plant.cities.IndexOf(x.c_name + ",") >= 0 || SqlMethods.Like(plant.cities, x.c_name + "%"))
                                        select x.city_elevation   //获取该植物在该地区分布的海拔列表
                          let max_ele = eleList.Max(x => x) + ele_range   //取得该植物在该地区可用的最大海拔和最小海拔
                          let min_ele = eleList.Min(x => x) - ele_range
                          let isInEle = (elevation <= max_ele && elevation >= min_ele) //当前城镇海拔必须介于该植物在当前分区分布的最大海拔和最小海拔之间才可采用该植物
                          where (isInEle || isInCity)
                          && (max_high == -1 ? true : plant.max_high >= max_high) //最大高度,选取数据库中比该值大的记录 注意：这里的单位CM，所以无需乘以100
                          && (groth_type == string.Empty ? true : groth_type == plant.growth_type) //生长类型,下拉框单选
                          && (width == string.Empty ? true : width == plant.width) //树冠大小，下拉框单选
                          && (leaf_color == string.Empty ? true : leaf_color == plant.leaf_color) //叶色，下拉框单选
                          && (fragrance == string.Empty ? true : fragrance == plant.fragrance) //花香，下拉框单选
                          && (fu_color == string.Empty ? true : fu_color == plant.fu_color) //果色，下拉框单选
                          &&(velocity==string.Empty?true:velocity==plant.velocity)//对水流速要求，下拉框单选
                          &&(water_depth==-1?true:water_depth<plant.water_depth)//水深可达，文本框，需要比数据库中小
                          && (cold == string.Empty ? true : cold == plant.cold) //抗寒，下拉框单选
                          select plant).ToList();   //查询结果转至内存，因为Linq to Sql不支持string.Split()

        var result = (from plant in cityPlants
                      let isInRegion = (plant.regions.IndexOf(region + ",") >= 0 || plant.regions.EndsWith(region))
                      let isInCity = (plant.cities.IndexOf(city + ",") >= 0 || plant.cities.EndsWith(city))
                      where (ornamental_type==string.Empty?true:isContain(ornamental_type.Split(','),plant.ornamental_type.Split(','))) //观赏类型，多选框
                            && (florescence == string.Empty ? true : isContain(florescence.Split(','), plant.florescence.Split(','))) //花期，多选框。
                            && (fw_color == string.Empty ? true : isContain(fw_color.Split(','), plant.fw_color.Split(','))) //花色，下拉框单选,但数据库中为多个选项
                            && (fu_period == string.Empty ? true : isContain(fu_period.Split(','), plant.fu_period.Split(','))) //果期，多选框
                            && (water == string.Empty ? true : isContain(water.Split(','), plant.water.Split(','))) //水分，多选框
                            && (light == string.Empty ? true : isContain(light.Split(','), plant.light.Split(','))) //光强，多选框
                            && (soil == string.Empty ? true : isContain(soil.Split(','), plant.soil.Split(','))) //土壤，多选框
                            && (res == string.Empty ? true : isContain(res.Split(','), plant.res.Split(','))) //其它抗性，多选框
                            && (application == string.Empty ? true : isContain(application.Split(','), plant.application.Split(','))) //园林用途，多选框

                      select new
                      {
                          ID = plant.p_id,
                          学名 = plant.l_species,
                          科 = plant.family,
                          属 = plant.genus,
                          种名 = plant.species,
                          在该分区记录中 = (isInRegion ? "有记录" : "无记录"),
                          在该城镇记录中 = (isInCity ? "有记录" : "无记录")
                      }).OrderBy(g => g.科).ThenBy(g => g.属).ToList();
        Session["flowerresult"] = result; //查询结果保存至session，以备翻页

        GridView1.DataSource = result;
        GridView1.DataBind();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = Session["flowerresult"];
        GridView1.DataBind();
    }
    protected void myCBL_water_SelectedIndexChanged(object sender, EventArgs e)
    {
     string t=myCBL_water.SelectedValue;
     if (t.IndexOf("沉水") >= 0 || t.IndexOf("漂浮") >= 0 || t.IndexOf("浮水") >= 0 || t.IndexOf("挺水") >= 0)
     {
         Panel_water.Visible = true;
     }
     else //如果不选中这些项,则隐藏面板，并清除控件选定值
     {      
       Panel_water.Visible = false;   DDList_velocity.SelectedIndex = 0; TextBox_water_depth.Text = ""; 
     }
    }
    protected void myCBL_ornamental_type_SelectedIndexChanged(object sender, EventArgs e)
    {
        string t=myCBL_ornamental_type.SelectedValue;
        if (t.IndexOf("观叶") >= 0) { Panel_leaf.Visible = true; }
        else { Panel_leaf.Visible = false; DDList_leaf_color.SelectedIndex = 0; }

        if (t.IndexOf("观花") >= 0) { Panel_flower.Visible = true; }
        else 
        {
            Panel_flower.Visible = false; 
            DDList_fw_color.SelectedIndex = 0; 
            myCBL_florescence.SelectedValue = "";
            DDList_fragrance.SelectedIndex = 0;
        }

        if (t.IndexOf("观果") >= 0) { Panel_fruit.Visible = true; }
        else { Panel_fruit.Visible = false; DDList_fu_color.SelectedIndex = 0; myCBL_fu_period.SelectedValue = ""; }
    }
}
