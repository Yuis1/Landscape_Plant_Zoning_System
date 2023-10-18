using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DDList_region.SelectedValue = Request.QueryString["r"];
        }
        DDList_Type.Attributes.Add("title", "树木：木本植物与竹亚科的植物。\r\n花卉：草本植物(含水生植物)，不包括木本花卉。");
        DDList_Type.Items[1].Attributes.Add("title", "树木：木本植物与竹亚科的植物");
        DDList_Type.Items[2].Attributes.Add("title", "草花：草本植物(含水生植物)，不包括木本花卉");
    }
    protected void DDList_region_SelectedIndexChanged(object sender, EventArgs e)
    {
            
    }
    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {

    }
    protected void DDList_city_SelectedIndexChanged(object sender, EventArgs e)
    {
            
            
    }

    protected void DDList_Type_SelectedIndexChanged(object sender, EventArgs e) //根据选择的城市及检索类型，跳转到相应页面
    {
        if (DDList_city.SelectedValue!="" && DDList_Type.SelectedValue!="")  
        {
        string city = Server.UrlEncode(DDList_city.SelectedValue);
        string region = Server.UrlEncode(DDList_region.SelectedValue);
        switch(DDList_Type.SelectedValue)
            {case "树木":
                Response.Redirect("tree.aspx?city=" + city+"&region="+region,true);
                break;
                case "草花":
                Response.Redirect("flower.aspx?city=" + city + "&region=" + region, true);
                    break;
             default: break;
            }
        
        }
    }
}
