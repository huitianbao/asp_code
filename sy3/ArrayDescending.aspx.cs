using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sy3_ArrayDescending : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //获取文本框输入的字符串，并在最后添加一个空格
        string sInput = txtInput.Text.Trim() + " ";
        //j控制数组下标；每个aInput数组存储一个整数；temp存储一个整数字符串

        int j = 0;
        int[] aInput = new int[10];
        string temp = "0";

        //逐个获取 sInput 中的每个字符。若不是空格，则将该字符连接到 temp中；
        //否则，将temp的值转换为整数后储存到数组元素


        for (int i = 0; i < sInput.Length - 1; i++)
        {
            if (sInput.Substring(i, 1) != " ")
            {
                temp = temp + sInput.Substring(i, 1);

            }
            else
            {
                aInput[j] = int.Parse(temp);
                j++;
                temp = "0";

            }
        }

        Array.Sort(aInput);
        Array.Reverse(aInput);

        foreach (int i in aInput)
        {
            if (i != 0)
            {
                Response.Write(i + "nbsp;nbsp;");
            }
        }
    }

}
