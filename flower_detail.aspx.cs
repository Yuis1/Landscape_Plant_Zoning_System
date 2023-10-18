using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class flower_detail : System.Web.UI.Page
{
    /// <summary>
    /// 根据输入的城市自动生成分区列表
    /// </summary>
    /// <param name="cities">城市字符串</param>
    /// <param name="count">至少要有几个城镇有分布</param>
    /// <returns></returns>
    string generateRegionByCities(string cities,int count) //返回字符串regions
    {
        if (cities == string.Empty) { return ""; }         //如果城镇列表空，将清除所有分区，并返回
        string[] cityArr = cities.Trim(',').Split(',');
        string regions="";
        FloraDataContext datacontext = new FloraDataContext();
        var cityTable = (from x in datacontext.cities
                        select x).ToList();
        for (int i = 0; i < 20; i++)  //遍历20个分区
        {
            string region = "region" + (i+1).ToString();
            var cityList = (from x in cityTable
                           where region == x.region.Trim()
                           select x.c_name).ToArray();
            IEnumerable<string> finalList = cityList.Intersect(cityArr); //取得城镇列表与数据库中该分区城镇列表的并集
            if (finalList.Count() >= count) { regions = regions + region + ","; } //如果结果大等于count，则加入该分区
        }
        return regions.Trim(',');
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["mode"] == "insert") { FormView1.DefaultMode = FormViewMode.Insert; }
       
    }
    protected void DDList_region_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (FloraDataContext datacontext = new FloraDataContext())
        {
            var cities = from x in datacontext.cities
                         where x.region == DDList_region.SelectedValue
                         select x.c_name;
            foreach (var x in cities)
            {myCBL_city_selecting.Items.Add(x.ToString());}
        }
    }

    protected void DDList_region1_SelectedIndexChanged(object sender, EventArgs e)
    {
        using (FloraDataContext datacontext = new FloraDataContext())
        {
            var cities = from x in datacontext.cities
                         where x.region == DDList_region1.SelectedValue
                         select x.c_name;
            foreach (var x in cities)
            { myCBL_city_selecting1.Items.Add(x.ToString()); }
        }
    }
    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        if (e.NewValues["l_species"].ToString() != e.OldValues["l_species"].ToString()) //当拉丁名改动时，检测是否有与数据库内的重复
        {
            using (FloraDataContext datacontext = new FloraDataContext())
            {
                var latinName = from x in datacontext.flower
                                where x.l_species == e.NewValues["l_species"].ToString()
                                select x.l_species;
                if (latinName.FirstOrDefault() != null)
                {
                    e.Cancel = true;
                    Response.Write(@"<script language='javascript'>alert('已存在该学名，更新失败！');history.go(-1);</script>");

                }
            }
        }


        if (e.NewValues["max_high"].ToString() == "") { e.NewValues["max_high"] = "0"; }
        if (e.NewValues["water_depth"].ToString() == "") { e.NewValues["water_depth"] = "0"; }
        e.NewValues["regions"] = generateRegionByCities(e.NewValues["cities"].ToString(), 1);  //根据城镇字段自动生成分区字段

        
    }
    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
      using (FloraDataContext datacontext = new FloraDataContext()) //检测拉丁名是否有与数据库内的重复
        {
            var latinName = from x in datacontext.flower
                            where x.l_species == e.Values["l_species"].ToString()
                            select x.l_species;
            if (latinName.FirstOrDefault() != null)
            {
                e.Cancel = true;
                Response.Write(@"<script language='javascript'>alert('已存在该学名，插入失败！');history.go(-1);</script>");
                
            }
        }
        if (e.Values["max_high"].ToString() == "") { e.Values["max_high"] = "0"; }
        if (e.Values["water_depth"].ToString() == "") { e.Values["water_depth"] = "0"; }
        e.Values["regions"] = generateRegionByCities(e.Values["cities"].ToString(), 1);  //根据城镇字段自动生成分区字段
    }


    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {//当插入新记录后，调转到新记录
        using(FloraDataContext datacontext=new FloraDataContext())
        {
            var ids = from x in datacontext.flower
                     where x.l_species == e.Values["l_species"].ToString()
                     select x.p_id;
            string id = ids.First().ToString();
            Response.Redirect(@"~/flower_detail.aspx?id="+id,true);
        }
    }
    protected void l_speciesTextBox_TextChanged(object sender, EventArgs e)
    {
        TextBox l_speciesTextBox = (TextBox)FormView1.Row.FindControl("l_speciesTextBox");
        Label Label_latinNameCheck = (Label)FormView1.Row.FindControl("Label_latinNameCheck");
        using (FloraDataContext datacontext = new FloraDataContext())
        {
                var latinName = from x in datacontext.flower
                                where x.l_species == l_speciesTextBox.Text
                                select x.l_species;
                if (latinName.FirstOrDefault()!=null) Label_latinNameCheck.Text = "此记录已存在！";
                else Label_latinNameCheck.Text = "OK";
        }
    }

}
