﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="Database")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region 可扩展性方法定义
  partial void OnCreated();
  partial void Insertbingren(bingren instance);
  partial void Updatebingren(bingren instance);
  partial void Deletebingren(bingren instance);
  partial void Insert病人(病人 instance);
  partial void Update病人(病人 instance);
  partial void Delete病人(病人 instance);
  partial void Insert登录(登录 instance);
  partial void Update登录(登录 instance);
  partial void Delete登录(登录 instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<bingren> bingren
	{
		get
		{
			return this.GetTable<bingren>();
		}
	}
	
	public System.Data.Linq.Table<病人> 病人
	{
		get
		{
			return this.GetTable<病人>();
		}
	}
	
	public System.Data.Linq.Table<登录> 登录
	{
		get
		{
			return this.GetTable<登录>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.bingren")]
public partial class bingren : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private string _姓名;
	
	private int _床位;
	
	private int _年龄;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void On姓名Changing(string value);
    partial void On姓名Changed();
    partial void On床位Changing(int value);
    partial void On床位Changed();
    partial void On年龄Changing(int value);
    partial void On年龄Changed();
    #endregion
	
	public bingren()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_姓名", DbType="NChar(10) NOT NULL", CanBeNull=false)]
	public string 姓名
	{
		get
		{
			return this._姓名;
		}
		set
		{
			if ((this._姓名 != value))
			{
				this.On姓名Changing(value);
				this.SendPropertyChanging();
				this._姓名 = value;
				this.SendPropertyChanged("姓名");
				this.On姓名Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_床位", DbType="Int NOT NULL", IsPrimaryKey=true)]
	public int 床位
	{
		get
		{
			return this._床位;
		}
		set
		{
			if ((this._床位 != value))
			{
				this.On床位Changing(value);
				this.SendPropertyChanging();
				this._床位 = value;
				this.SendPropertyChanged("床位");
				this.On床位Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_年龄", DbType="Int NOT NULL")]
	public int 年龄
	{
		get
		{
			return this._年龄;
		}
		set
		{
			if ((this._年龄 != value))
			{
				this.On年龄Changing(value);
				this.SendPropertyChanging();
				this._年龄 = value;
				this.SendPropertyChanged("年龄");
				this.On年龄Changed();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.病人")]
public partial class 病人 : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private string _姓名;
	
	private int _床位;
	
	private int _年龄;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void On姓名Changing(string value);
    partial void On姓名Changed();
    partial void On床位Changing(int value);
    partial void On床位Changed();
    partial void On年龄Changing(int value);
    partial void On年龄Changed();
    #endregion
	
	public 病人()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_姓名", DbType="NChar(10) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
	public string 姓名
	{
		get
		{
			return this._姓名;
		}
		set
		{
			if ((this._姓名 != value))
			{
				this.On姓名Changing(value);
				this.SendPropertyChanging();
				this._姓名 = value;
				this.SendPropertyChanged("姓名");
				this.On姓名Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_床位", DbType="Int NOT NULL")]
	public int 床位
	{
		get
		{
			return this._床位;
		}
		set
		{
			if ((this._床位 != value))
			{
				this.On床位Changing(value);
				this.SendPropertyChanging();
				this._床位 = value;
				this.SendPropertyChanged("床位");
				this.On床位Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_年龄", DbType="Int NOT NULL")]
	public int 年龄
	{
		get
		{
			return this._年龄;
		}
		set
		{
			if ((this._年龄 != value))
			{
				this.On年龄Changing(value);
				this.SendPropertyChanging();
				this._年龄 = value;
				this.SendPropertyChanged("年龄");
				this.On年龄Changed();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.登录")]
public partial class 登录 : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private string _职工编号;
	
	private string _姓名;
	
	private string _账号;
	
	private string _密码;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void On职工编号Changing(string value);
    partial void On职工编号Changed();
    partial void On姓名Changing(string value);
    partial void On姓名Changed();
    partial void On账号Changing(string value);
    partial void On账号Changed();
    partial void On密码Changing(string value);
    partial void On密码Changed();
    #endregion
	
	public 登录()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_职工编号", DbType="VarChar(50) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
	public string 职工编号
	{
		get
		{
			return this._职工编号;
		}
		set
		{
			if ((this._职工编号 != value))
			{
				this.On职工编号Changing(value);
				this.SendPropertyChanging();
				this._职工编号 = value;
				this.SendPropertyChanged("职工编号");
				this.On职工编号Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_姓名", DbType="NChar(10) NOT NULL", CanBeNull=false)]
	public string 姓名
	{
		get
		{
			return this._姓名;
		}
		set
		{
			if ((this._姓名 != value))
			{
				this.On姓名Changing(value);
				this.SendPropertyChanging();
				this._姓名 = value;
				this.SendPropertyChanged("姓名");
				this.On姓名Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_账号", DbType="NChar(10) NOT NULL", CanBeNull=false)]
	public string 账号
	{
		get
		{
			return this._账号;
		}
		set
		{
			if ((this._账号 != value))
			{
				this.On账号Changing(value);
				this.SendPropertyChanging();
				this._账号 = value;
				this.SendPropertyChanged("账号");
				this.On账号Changed();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_密码", DbType="NChar(10) NOT NULL", CanBeNull=false)]
	public string 密码
	{
		get
		{
			return this._密码;
		}
		set
		{
			if ((this._密码 != value))
			{
				this.On密码Changing(value);
				this.SendPropertyChanging();
				this._密码 = value;
				this.SendPropertyChanged("密码");
				this.On密码Changed();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591