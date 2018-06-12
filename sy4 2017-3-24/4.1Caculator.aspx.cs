﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




public partial class sy4_2017_3_24_4_1Caculator : System.Web.UI.Page
{
    static string num1 = "0", num2 = "0", total = "", sign = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (sign.Length == 1)
        {
            Count();
            num1 = txtDisplay.Text;
            sign = "+";
        }
        else
        {
            num1 = txtDisplay.Text;
            txtDisplay.Text = "";
            total = "";
            sign = "+";
        }
    }
    
    protected void btnOne_Click(object sender, EventArgs e)
    {
        total += "1";
        txtDisplay.Text = total;
    }
    protected void btnTwo_Click(object sender, EventArgs e)
    {
        total += "2";
        txtDisplay.Text = total;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        total += "3";
        txtDisplay.Text = total;
    }
    protected void btnSubstract_Click(object sender, EventArgs e)
    {
        if (sign.Length == 1)
        {
            Count();
            num1 = txtDisplay.Text;
            sign = "-";
        }
        else
        {
            num1 = txtDisplay.Text;
            txtDisplay.Text = "";
            total = "";
            sign = "";
        }
    }
    protected void btnEqual_Click(object sender, EventArgs e)
    {
        Count();
    }

    protected void Count()
    {
        num2 = txtDisplay.Text;
        if (num2 == "")
        {
            num2 = "0";
        }

        switch (sign)
        {
            case "+":
                txtDisplay.Text = (int.Parse(num1) + int.Parse(num2)).ToString();
                num1 = "0";
                num2 = "0";
                total = "";
                sign = "";
                break;

            case "-":
                txtDisplay.Text = (int.Parse(num1) - int.Parse(num2)).ToString();
                num1 = "0";
                num2 = "0";
                total = "";
                sign = "";
                break;
        }

    }

   
}