using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy4_2017_3_24_Course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {          // 第一次载入，向个下拉列表框填充列表项
            BindYear();
            BindTerm();
            BindCollege();
            BindTeacher();


        }

    }

    protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlYear.Items.Clear();
        int startYear = DateTime.Now.Year - 10;

        int currentYear = DateTime.Now.Year;

        //向学年下拉列表项添加列表项
        for (int i = startYear; i < currentYear; i++)
        {
            ddlYear.Items.Add(new ListItem((i - 1).ToString() + "-" + i.ToString()));
        }
        //设置学年下拉列表的默认选项
        ddlYear.SelectedValue = (currentYear - 1).ToString() + "-" + currentYear.ToString();

    }

    protected void BindTerm()
    {
        ddlTerm.Items.Clear();
        //向学期下拉列表项添加列表项
        for (int i = 1; i <= 2; i++)
        {
            ddlTerm.Items.Add(i.ToString());
        }
    }

    protected void BindCollege()
    {
        ddlCollege.Items.Clear();
        ddlCollege.Items.Add(new ListItem("计算机学院"));
        ddlCollege.Items.Add(new ListItem("外国语学院"));
        ddlCollege.Items.Add(new ListItem("机电学院"));



    }

    protected void ddlCollege_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindTeacher();
    }
    protected void ddlTerm_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    

    protected void BindTeacher()
    {
        ddlTeacher.Iterm.Clear();
        switch (ddlCollege.SelectedValue)
        {
            case "计算机学院":
                ddlTeacher.Items.Add(new ListItem("曹明"));
                ddlTeacher.Items.Add(new ListItem("李妙"));
                ddlTeacher.Items.Add(new ListItem("王芳"));
                break;

            case "外国语学院":
                ddlTeacher.Items.Add(new ListItem("张强"));
                ddlTeacher.Items.Add(new ListItem("王第男"));
                break;

            case: "机电学院":
                ddlTeacher.Items.Add(new ListItem(""));
                ddlTeacher.Items.Add(new ListItem("张强"));
                break;

        }

    }

    
}


