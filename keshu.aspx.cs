using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class keshu : System.Web.UI.Page
{
    string typeSelect(string cName)
    {
        switch (cName)
        {
            case "树木": return "tree";
            case "草花": return "flower";
            default: return "";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {   //获取控件的值
        string l_species=TextBox_l_species.Text.Trim();
        string species=TextBox_species.Text.Trim();
        string family=TextBox_family.Text.Trim();
        string genus=TextBox_genus.Text.Trim();
        int mode =RadioButtonList1.SelectedIndex; //检索方式

        FloraDataContext myDataContext = new FloraDataContext();
        var trees=from p in myDataContext.tree
                   where ( l_species==""?true:(mode ==0?(p.l_species.IndexOf(l_species)>=0):(p.l_species==l_species) ) )//mode=0,模糊检索；否则，精确检索
                      &&( species==""?true:(mode ==0?(p.species.IndexOf(species)>=0):(p.species==species) ) )
                      &&( family==""?true:(mode ==0?(p.family.IndexOf(family)>=0):(p.family==family) ) )
                      &&( genus==""?true:(mode ==0?(p.genus.IndexOf(genus)>=0):(p.genus==genus) ) )
                   select new
                   {学名= p.l_species,
                    科=p.family,
                    属=p.genus,
                    种名=p.species,
                    类别=p.type,
                    ID = p.p_id,
                    Type=typeSelect(p.type) 
                   };
        var flowers = from p in myDataContext.flower
                      where (l_species == "" ? true : (mode == 0 ? (p.l_species.IndexOf(l_species) >= 0) : (p.l_species == l_species)))//mode=0,模糊检索；否则，精确检索
                         && (species == "" ? true : (mode == 0 ? (p.species.IndexOf(species) >= 0) : (p.species == species)))
                         && (family == "" ? true : (mode == 0 ? (p.family.IndexOf(family) >= 0) : (p.family == family)))
                         && (genus == "" ? true : (mode == 0 ? (p.genus.IndexOf(genus) >= 0) : (p.genus == genus)))
                      select new
                      {
                          学名 = p.l_species,
                          科 = p.family,
                          属 = p.genus,
                          种名 = p.species,
                          类别 = p.type,
                          ID = p.p_id,
                          Type = typeSelect(p.type)
                      };
        var plants = trees.Union(flowers).OrderBy(g => g.科).ThenBy(g => g.属);

        GridView1.DataSource = plants;
        GridView1.DataBind();
        Session["keshuResult"] = plants;
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.DataSource = Session["keshuResult"];
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}
