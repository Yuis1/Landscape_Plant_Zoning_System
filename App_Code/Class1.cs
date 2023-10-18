using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Web;
using System.Web.UI;   
using System.Web.UI.WebControls;
using System.Security.Permissions;
using System.Web.Hosting;

namespace mycontrols
{
    /// <summary>
    ///我的自定义控件集
    /// </summary>
    /// 
 

  /// <summary>
  /// 我的多选Checkboxlist，可以绑定到String，根据","来生成字符数组
  /// </summary>
    public class myCheckboxlist : CheckBoxList
    {
        public override string SelectedValue
        {
            get  //返回值为已选项组合成的string，用“,”分隔
            {
                string _returnValue = "";
                this.EnsureChildControls();
                for (int i = 0; i < this.Items.Count; i++)
                {
                    if (this.Items[i].Selected)
                    {
                        _returnValue += this.Items[i].Value + ",";
                    }
                }

                if (!string.IsNullOrEmpty(_returnValue)) //返回值非空，则去掉末尾的“,”
                {
                   _returnValue=_returnValue.TrimEnd(',');
                }
                else
                {
                    return string.Empty;
                }
                return _returnValue;
            }


            set  //设置是否选取
            {
              
                    if (value == null)
                    {
                        value = string.Empty;
                    }
                    string _returnValue = "";

                    this.EnsureChildControls();
                    _returnValue = value;

                    for (int i = 0; i < this.Items.Count; i++)  //遍历items子控件，全部取消选择
                    { this.Items[i].Selected = false; }

                    if (_returnValue.ToString().Trim().Length != 0)
                    {
                        string[] returnValue1 = _returnValue.Split(','); //建立临时数组，用来存储逗号分隔后的SelectValue
                        for (int items = 0; items < returnValue1.Length; items++)  //遍历临时数组
                        {
                            for (int i = 0; i < this.Items.Count; i++) //遍历items集合
                            {
                                if (returnValue1[items] == this.Items[i].Value)  //如果临时数组中元素与items控件值相同，选中该控件
                                {
                                    this.Items[i].Selected = true;
                                    break; //终止最近的封闭循环,也就是跳出items遍历，继续临时数组遍历
                                }
                            }
                        }
                    }
            }

        }

   }





    /// <summary>
    /// 我的自定义图片显示、删除、上传更改复合控件
    /// </summary>

    [
    AspNetHostingPermission(SecurityAction.Demand,Level = AspNetHostingPermissionLevel.Minimal),
    AspNetHostingPermission(SecurityAction.InheritanceDemand,Level = AspNetHostingPermissionLevel.Minimal),
    DefaultEvent("upload"),DefaultProperty("filename"),
    ToolboxData("<{0}:ImageUpload runat=\"server\"> </{0}:ImageUpload>"),
    ]

    public class ImageUpload : CompositeControl
    {
        private FileUpload fileupload;
        private Image myImage;
        private CheckBox deleteCheckBox;
        private string _picSaveDir=@"~/img/";

        [
        Bindable(true),
        Category("Appearance"),
        DefaultValue(""),
        Description("图像的存储目录,默认为~/img/")
        ]
        public string picSaveDir  //只写属性
        {
            set { _picSaveDir=value;}
        }


        [
        Bindable(true),
        Category("Appearance"),
        DefaultValue(""),
        Description("图像的相对地址")
        ]
        public string filename
        {   
            get
            {   EnsureChildControls();
                if (fileupload.HasFile)     //上传框有文件
                {
                    string _path = Page.Server.MapPath(_picSaveDir);
                    string _filename=fileupload.FileName;
                    string pathtocheck = _path + _filename;
                    if (System.IO.File.Exists(pathtocheck))  //假如文件已经存在
                    {
                        int counter = 1;
                        while (System.IO.File.Exists(pathtocheck))
                        {
                            _filename = counter + _filename;
                            pathtocheck = _path + _filename;
                            counter++;
                        }
                       
                    }

                    if (myImage.ImageUrl != "") //如果当前图像非空，则删除当前图像(给Image.ImageUrl赋空值，会导致其值为"./")
                       {
                           System.IO.File.Delete(Page.Server.MapPath(myImage.ImageUrl));
                       }

                        fileupload.PostedFile.SaveAs(pathtocheck);   //pathtocheck是服务器文件系统的绝对地址
                        return _picSaveDir + _filename;    //返回相对网站根目录地址
                    }

                else if (deleteCheckBox.Checked == true && myImage.ImageUrl != "") //删除图片选项打钩且图像非空
                {
                    System.IO.File.Delete(Page.Server.MapPath(myImage.ImageUrl));
                    return "";
                }
                else if (myImage.ImageUrl == "") { return "";}  //本身就无图像，仍然返回空值
                else { return myImage.ImageUrl; } //无修改地返回图像相对地址
            }

            set 
            { EnsureChildControls();
            if (value == "") { myImage.ImageUrl = null; myImage.Visible = false; } //get值为空时，赋空值，并图片隐藏子控件
            else  myImage.ImageUrl=value;
            }
        }



        protected override void RecreateChildControls()
        {
            EnsureChildControls();
        }


        protected override void CreateChildControls()
        {
            Controls.Clear();
            fileupload = new FileUpload();
            fileupload.ID = "file_upload";

            myImage = new Image();
            deleteCheckBox = new CheckBox();
            deleteCheckBox.Text = "删除这张图片";
            this.Controls.Add(fileupload);
            this.Controls.Add(myImage);
            this.Controls.Add(deleteCheckBox);

        }

        protected override void Render(HtmlTextWriter writer)
        {
            myImage.RenderControl(writer);
            writer.RenderBeginTag(HtmlTextWriterTag.Br);   //换行
            deleteCheckBox.RenderControl(writer);
            fileupload.RenderControl(writer);
        }


        
    }

}
