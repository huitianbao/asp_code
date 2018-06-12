﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_PetTree : System.Web.UI.UserControl
{
  MyPetShopDataContext db = new MyPetShopDataContext();

  protected void Page_Load(object sender, EventArgs e)
  {
    if (!IsPostBack)
    {
      BindTree();
    }
  }

  /// <summary>
  /// 将所有分类绑定到TreeView1的父节点中
  /// </summary>
  protected void BindTree()
  {
    var categories = from c in db.Category
                     select c;
    foreach (var category in categories)
    {
      TreeNode treeNode = new TreeNode();
      treeNode.Text = category.Name;
      treeNode.Value = category.CategoryId.ToString();
      treeNode.NavigateUrl = "~/ProShow.aspx?CategoryId=" + category.CategoryId.ToString();
      TreeView1.Nodes.Add(treeNode);
      BindTreeChild(treeNode, category.CategoryId);
    }
  }

  /// <summary>
  /// 将指定分类号下的所有商品绑定到子节点中
  /// </summary>
  /// <param name="tn">子节点名</param>
  /// <param name="categoryId">指定分类号</param>
  protected void BindTreeChild(TreeNode tn, int categoryId)
  {
    var products = from p in db.Product
                   where p.Category.CategoryId == categoryId
                   select p;
    foreach (var product in products)
    {
      TreeNode treeNode = new TreeNode();
      treeNode.Text = product.Name;
      treeNode.Value = product.ProductId.ToString();
      treeNode.NavigateUrl = "~/ProShow.aspx?ProductId=" + product.ProductId.ToString();
      tn.ChildNodes.Add(treeNode);
    }
  }
}