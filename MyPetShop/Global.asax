<%@ Application Language="C#" %>
<script RunAt="server">
  void Application_Start(object sender, EventArgs e)
  {
    ScriptResourceDefinition scriptResDef = new ScriptResourceDefinition();
    //设置jQuery库路径，其中版本号由安装的jQuery库版本号确定
    scriptResDef.Path = "~/Scripts/jquery-2.1.0.min.js";
    ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null, scriptResDef);
  }

  void Application_End(object sender, EventArgs e)
  {
    //  在应用程序关闭时运行的代码
  }

  void Application_Error(object sender, EventArgs e)
  {
    // 在出现未处理的错误时运行的代码
  }

  void Session_Start(object sender, EventArgs e)
  {
    // 在新会话启动时运行的代码
  }

  void Session_End(object sender, EventArgs e)
  {
    // 在会话结束时运行的代码。 
    // 注意: 只有在 Web.config 文件中的 sessionstate 模式设置为
    // InProc 时，才会引发 Session_End 事件。如果会话模式设置为 StateServer
    // 或 SQLServer，则不引发该事件。
  }

  /// <summary>
  /// 将匿名用户的购物车信息迁移到登陆用户
  /// </summary>
  /// <param name="sender"></param>
  /// <param name="pe"></param>
  void Profile_MigrateAnonymous(Object sender, ProfileMigrateEventArgs pe)
  {
    ProfileCommon anonProfile = Profile.GetProfile(pe.AnonymousID);
    if (anonProfile.Cart.ListPrice.Count != 0)
    {
      Profile.Cart.ListPrice = anonProfile.Cart.ListPrice;
      Profile.Cart.ProId = anonProfile.Cart.ProId;
      Profile.Cart.ProName = anonProfile.Cart.ProName;
      Profile.Cart.Qty = anonProfile.Cart.Qty;
    }
    //删除匿名用户相关联的Profile和Cookie信息
    ProfileManager.DeleteProfile(pe.AnonymousID);
    AnonymousIdentificationModule.ClearAnonymousIdentifier();
  }
    
</script>
