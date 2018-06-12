using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// UserInfo 的摘要说明 包含Name 和Birthday两个属性和一个DecideAge（）方法
/// </summary>
public class UserInfo
{
	//public UserInfo{
        
		//
		// TODO: 在此处添加构造函数逻辑
		//

        //_Name字段对应Name属性，_Birthday字段对应 Birthday属性
        private string _Name;
        private DateTime _Birthday;
        ///<summary>
        ///定义Name属性
        ///<summary>
        
    public string Name{
        get{return _Name;}
        set{_Name=value;}

	}

    ///<summary>
    ///定义Birthday属性
    ///<summary>
    
    public DateTime Birthday{
        get{return _Birthday;}
        set{_Birthday=value;}

    }

///<summary>
///定义构造函数
///<summary>
///<param name="name">姓名</param>
///<param name="birthday">生日</param>
public UserInfo(string name,DateTime birthday){
    this._Name=name;
    this._Birthday=birthday;
}

    ///<summary>
    ///DecideAge()方法用于判断用户是否达到规定年龄
    ///<summary>
    ///<returns>当年龄大于等于18周岁是返回"xxx,您是成人了！",否则返回值"xxx，你还没长大呢！"<returns>

    public string DecideAge(){
        if(DateTime.Now.Year-_Birthday.Year<18){
            return this._Name+",您还没长大呢";
        }

        else{
            return this._Name+",您是成人了！";
        }

    }

}



