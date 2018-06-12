using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//有问题----有问题----有问题----有问题----有问题----有问题----有问题----有问题----有问题----有问题----有问题----
public partial class sy3_Division : System.Web.UI.Page
{
   
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            float divisor = float.Parse(txtDivsor.Text);
            float dividend = float.Parse(txtDividend.Text);

            Response.Write("商为" + divisor / dividend);


        }

        catch (DivideByZeroException ee)
        {
            Response.Write("请输入正确的数字");

        }

       
    }

    
}
