﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="副本 index2.aspx.cs" Inherits="首页_index2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 1392px;
        }
        .auto-style10 {
            height: 184px;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            width: 265px;
            height: 284px;
        }
        .auto-style14 {
            height: 35px;
            text-align: left;
        }
        .auto-style13 {
            height: 284px;
        }
        .auto-style15 {
            height: 284px;
            width: 21px;
        }
        </style>
</head>
<body style="text-align: center">
    <form id="form2" runat="server">


                <div>
                    <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style10">
                    <asp:Image ID="医院logo" runat="server" Height="181px" ImageUrl="~/image/logojpg.jpg" Width="199px" />
                </td>
                <td class="auto-style10">
                    <asp:Image ID="医院名称" runat="server" Height="182px" ImageUrl="~/image/logo2.PNG" Width="600px" style="margin-right: 0px" />
                </td>
                <td class="auto-style10">
                   <table class="auto-style72">
            <tr>
                <td class="auto-style73">&nbsp;</td>
                <td>
                    <asp:LinkButton ID="lnkbtnDefault" runat="server" PostBackUrl="~/首页/index2.aspx">首页</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="lknbtnRegister" runat="server" OnClick="lknbtnRegister_Click">注册</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="lknbtnLogin" runat="server" OnClick="lknbtnLogin_Click">登录</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style73">&nbsp;</td>
                <td colspan="3">
                    <asp:LoginView ID="LoginView1" runat="server">
                        <AnonymousTemplate>
                            您还未登录
                        </AnonymousTemplate>
                        <RoleGroups>
                            <asp:RoleGroup Roles="Admin">
                                <ContentTemplate>
                                    <asp:LoginName ID="lognAdmin" runat="server" FormatString="Welcome: {0}" />
                                    &nbsp;<asp:LinkButton ID="lnkbtnPwd" runat="server" PostBackUrl="~/用户管理相关/ChangePwd.aspx">密码修改</asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="lnkbtnUserManage" runat="server" PostBackUrl="~/Admin/RolesUsers.aspx">用户管理</asp:LinkButton>
                                    &nbsp;<asp:LoginStatus ID="logsAdmin" runat="server" LogoutAction="RedirectToLoginPage" />
                                </ContentTemplate>
                            </asp:RoleGroup>
                            <asp:RoleGroup Roles="Member">
                                <ContentTemplate>
                                    <asp:LoginName ID="lognMember" runat="server" FormatString="Welcome: {0}" />
                                    &nbsp;<asp:LinkButton ID="LinkButton3" runat="server">LinkButton</asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton4" runat="server">LinkButton</asp:LinkButton>
                                    &nbsp;<asp:LoginStatus ID="LoginStatus2" runat="server" />
                                </ContentTemplate>
                            </asp:RoleGroup>
                        </RoleGroups>
                    </asp:LoginView>
&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style73">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
                </td>
                <td class="auto-style10">
                    
                    
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <div>

                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" />
                            </Triggers>
                        </asp:UpdatePanel>

                    </div>
                    <div>

                        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                        </asp:Timer>

                    </div>
                    
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="5">

               
        <div>

        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" Width="100%" 
        Font-Size="Medium" ForeColor="#666666" Font-Bold="True" 
        PathSeparator="1" StaticEnableDefaultPopOutImage="False" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" StaticSubMenuIndent="10px" 
        >
       
            <DynamicMenuStyle BackColor="#E3EAEB" />
       
            <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
       
            <DynamicMenuItemStyle ItemSpacing="5px" HorizontalPadding="50px" VerticalPadding="10px" />
       
            <DynamicSelectedStyle BackColor="#1C5E55" />
       
            <Items>
                <asp:MenuItem  Text="医院首页" Value="医院首页" NavigateUrl="~/首页/index2.aspx"></asp:MenuItem>

                <asp:MenuItem Text="医院概况" Value="医院概况" NavigateUrl="~/导航栏/医院概况/医院领导.aspx">
                    <asp:MenuItem Text="医院领导" Value="医院领导" NavigateUrl="~/导航栏/医院概况/医院领导.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="医院介绍" Value="医院介绍" NavigateUrl="~/导航栏/医院概况/医院介绍.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="联系我们" Value="联系我们" NavigateUrl="~/导航栏/医院概况/联系我们.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="地理位置" Value="地理位置" NavigateUrl="~/导航栏/医院概况/地理位置.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="最美医生" Value="最美医生" NavigateUrl="~/展示.aspx"></asp:MenuItem>
                </asp:MenuItem>


                <asp:MenuItem Text="医院动态" Value="医院动态">

                    <asp:MenuItem Text="学术活动" Value="学术活动" NavigateUrl="~/导航栏/医院动态/学术活动.aspx"></asp:MenuItem>
                </asp:MenuItem>


                <asp:MenuItem Text="就医指南" Value="就医指南">
                    <asp:MenuItem Text="病房分布" Value="病房分布" NavigateUrl="~/导航栏/就医指南/病房分布.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="挂号须知" Value="挂号须知" NavigateUrl="~/导航栏/就医指南/挂号须知.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="就诊流程" Value="就诊流程" NavigateUrl="~/导航栏/就医指南/就诊流程.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="科室分布" Value="科室分布" NavigateUrl="~/导航栏/就医指南/科室分布.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="住院须知" Value="住院须知" NavigateUrl="~/导航栏/就医指南/住院须知.aspx"></asp:MenuItem>
                </asp:MenuItem>


                <asp:MenuItem Text="科室设置" Value="科室设置">
                    <asp:MenuItem Text="临床科室" Value="临床科室" NavigateUrl="~/导航栏/科室设置/临床科室/Default.aspx">
                        <asp:MenuItem Text="产科" Value="产科" NavigateUrl="~/导航栏/科室设置/临床科室/产科.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="妇瘤科" Value="妇瘤科" NavigateUrl="~/导航栏/科室设置/临床科室/妇瘤科.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="乳腺科" Value="乳腺科" NavigateUrl="~/导航栏/科室设置/临床科室/乳腺科.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="普通妇科" Value="普通妇科" NavigateUrl="~/导航栏/科室设置/临床科室/普通妇科.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="新生儿科" Value="新生儿科" NavigateUrl="~/导航栏/科室设置/临床科室/新生儿科.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="生育技术科" Value="生育技术科" NavigateUrl="~/导航栏/科室设置/临床科室/生育技术科.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="计划生育科" Value="计划生育科" NavigateUrl="~/导航栏/科室设置/临床科室/计划生育科.aspx"></asp:MenuItem>


                    </asp:MenuItem>




                    <asp:MenuItem Text="保健科室" Value="保健科室" NavigateUrl="~/导航栏/科室设置/保健科室/Default.aspx">
                        <asp:MenuItem Text="儿童保健" Value="儿童保健" NavigateUrl="~/导航栏/科室设置/保健科室/儿童保健.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="妇女保健" Value="妇女保健" NavigateUrl="~/导航栏/科室设置/保健科室/妇女保健.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="群体保健" Value="群体保健" NavigateUrl="~/导航栏/科室设置/保健科室/群体保健.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="口腔保健" Value="口轻保健" NavigateUrl="~/导航栏/科室设置/保健科室/口腔保健.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="生殖保健" Value="生殖保健" NavigateUrl="~/导航栏/科室设置/保健科室/生殖保健.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="青春期保健" Value="青春期保健" NavigateUrl="~/导航栏/科室设置/保健科室/青春期保健.aspx"></asp:MenuItem>

                    </asp:MenuItem>
                    <asp:MenuItem Text="特色诊疗中心" Value="特色诊疗中心" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/Default.aspx">
                        <asp:MenuItem Text="围产医学中心" Value="围产医学中心" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/围产医学中心.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="产前诊断中心" Value="产前诊断中心" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/产前诊断中心.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="生殖医学中心" Value="生殖医学中心" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/生殖医学中心.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="儿童保健中心" Value="儿童保健中心" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/儿童保健中心.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="妇女病普查中心" Value="妇女病普查中心" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/妇女病普查中心.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="宫颈病防治中心" Value="宫颈病防治中心" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/宫颈病防治中心.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="新生儿疾病筛查中心" Value="新生儿疾病筛查中心" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/新生儿疾病筛查中心.aspx"></asp:MenuItem>

                    </asp:MenuItem>
                </asp:MenuItem>

                <asp:MenuItem Text="专家介绍" Value="专家介绍" NavigateUrl="~/导航栏/专家介绍/Default.aspx"></asp:MenuItem>

                <asp:MenuItem Text="健康社区" Value="健康社区">
                    <asp:MenuItem Text="家长学校" Value="家长学校" NavigateUrl="~/导航栏/健康社区/家长学校.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="健康教育" Value="健康教育" NavigateUrl="~/导航栏/健康社区/健康教育.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="孕妇学校" Value="怨妇学校" NavigateUrl="~/导航栏/健康社区/孕妇学校.aspx"></asp:MenuItem>
                </asp:MenuItem>


                <asp:MenuItem Text="医院文化" Value="医院文化">
                    <asp:MenuItem Text="青年学苑" Value="青年学苑" NavigateUrl="~/导航栏/医院文化/Default.aspx"></asp:MenuItem>
                </asp:MenuItem>

            </Items>
            <StaticHoverStyle BackColor="#666666" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="50px" VerticalPadding="10px" />
            <StaticSelectedStyle BackColor="#1C5E55" />
        </asp:Menu>
    
    </div>


                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/医院图片.jpg" Width="1388px" Height="419px" style="margin-bottom: 0px" />
                </td>
           </tr>

                        </table>
                    </div>

                
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style12" rowspan="3">
                         
                            <br />
                            

                            &nbsp;&nbsp;&nbsp;
                            

                        </td>
                        <td class="auto-style12" rowspan="3">
                         
                            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/image/快速导航.PNG">
                                                        <asp:RectangleHotSpot Bottom="80" Right="260" NavigateUrl="~/导航栏/就医指南/挂号须知.aspx" />
                        <asp:RectangleHotSpot Bottom="110" Right="260" NavigateUrl="~/导航栏/就医指南/挂号须知.aspx" />
                        <asp:RectangleHotSpot Bottom="143" Right="260" NavigateUrl="~/导航栏/就医指南/就诊流程.aspx"/>
                        <asp:RectangleHotSpot Bottom="173" Right="260" NavigateUrl="~/导航栏/就医指南/科室分布.aspx" />
                        <asp:RectangleHotSpot Bottom="210" Right="260" NavigateUrl="~/快速导航/普通门诊.aspx"/>
                        <asp:RectangleHotSpot Bottom="245" Right="260" NavigateUrl="~/快速导航/专家门诊.aspx"/>
                        <asp:RectangleHotSpot Bottom="280" Right="260" NavigateUrl="~/快速导航/政策解读.aspx"/>
                        <asp:RectangleHotSpot Bottom="315" Right="260" NavigateUrl="~/快速导航/网上调查.aspx"/>
                        <asp:RectangleHotSpot Bottom="350" Right="260" NavigateUrl="~/快速导航/院长信箱.aspx"/>
                        <asp:RectangleHotSpot Bottom="385" Right="260" NavigateUrl="~/快速导航/资料下载.aspx"/>
                            </asp:ImageMap>
                            

                            <asp:ImageMap ID="ImageMap4" runat="server" ImageUrl="~/image/健康社区.PNG" Width="265px">
                                <asp:RectangleHotSpot Bottom="90" Right="260" NavigateUrl="~/导航栏/健康社区/健康教育.aspx" />
                                <asp:RectangleHotSpot Bottom="130" Right="260" NavigateUrl="~/导航栏/健康社区/孕妇学校.aspx" />
                                <asp:RectangleHotSpot Bottom="170" Right="260" NavigateUrl="~/导航栏/健康社区/家长学校.aspx" />
                            </asp:ImageMap>
                            

                        </td>
                        <td class="auto-style14" colspan="2">
                    <asp:Image ID="医院公告" runat="server" Height="38px" ImageUrl="~/image/医院公告.PNG" Width="95px" />

                            
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">


                    <asp:TextBox ID="TextBox1" runat="server" Height="287px" TextMode="MultiLine" Width="662px" OnTextChanged="TextBox1_TextChanged" style="margin-top: 0px; margin-left: 0px;" >普通外科团队参加2017年中华医学会肠外肠内营养学年会
2017-06-01京医论坛暨2017国际心血管疾病药物治疗高峰论坛
2017-05-31北京医院举办第三届中国肿瘤微创介入治疗北京论坛
2017-05-31新英格兰医学杂志刊登我院博士研究生文章
2017-05-312017北京医院甲状腺外科研讨会召开暨北京医师协会甲状腺疾病专委会成立
</asp:TextBox>


                        </td>
                        <td class="auto-style13">


          
        
                                <asp:Image ID="Image5" runat="server" ImageUrl="~/image/医生.jpg" Width="408px" Height="317px" ImageAlign="Left" />
                                <br />

                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <asp:Image ID="Image6" runat="server" Height="315px" ImageUrl="~/image/室内0.jpg" Width="668px" style="margin-top: 4px" />
                        </td>
                        <td class="auto-style13">
                            <asp:Image ID="Image7" runat="server" Height="320px" ImageUrl="~/image/室内1.jpg" Width="405px" ImageAlign="Left" />
                        </td>
                    </tr>
                </table>
               
                <table class="auto-style11">
                    <tr>
                        <td>
                            <table class="auto-style11">
                                <tr>
                                    <td>
                    <asp:ImageMap ID="临床科室" runat="server" ImageUrl="~/image/临床科室.PNG" Width="1390px">
                        <asp:RectangleHotSpot Bottom="360" Right="220" NavigateUrl="~/导航栏/科室设置/临床科室/妇瘤科.aspx" />
                        <asp:RectangleHotSpot Bottom="360" Right="400" NavigateUrl="~/导航栏/科室设置/临床科室/普通妇科.aspx" />
                        <asp:RectangleHotSpot Bottom="360" Right="600" NavigateUrl="~/导航栏/科室设置/临床科室/生育技术科.aspx" />
                        <asp:RectangleHotSpot Bottom="360" Right="780" NavigateUrl="~/导航栏/科室设置/临床科室/产科.aspx" />
                        <asp:RectangleHotSpot Bottom="360" Right="960" NavigateUrl="~/导航栏/科室设置/临床科室/新生儿科.aspx" />
                        <asp:RectangleHotSpot Bottom="360" Right="1160" NavigateUrl="~/导航栏/科室设置/临床科室/乳腺科.aspx"/>
                        <asp:RectangleHotSpot Bottom="360" Right="1340" NavigateUrl="~/导航栏/科室设置/临床科室/计划生育科.aspx"/>


                    </asp:ImageMap>
                    <asp:ImageMap ID="ImageMap2" runat="server" ImageUrl="~/image/保健科室.PNG" Width="1390px">
                        <asp:RectangleHotSpot Bottom="360" Right="220" NavigateUrl="~/导航栏/科室设置/保健科室/妇女保健.aspx" />
                        <asp:RectangleHotSpot Bottom="360" Right="400" NavigateUrl="~/导航栏/科室设置/保健科室/儿童保健.aspx" />
                        <asp:RectangleHotSpot Bottom="360" Right="600" NavigateUrl="~/导航栏/科室设置/保健科室/生殖保健.aspx" />
                        <asp:RectangleHotSpot Bottom="360" Right="780" NavigateUrl="~/导航栏/科室设置/保健科室/群体保健.aspx"/>
                        <asp:RectangleHotSpot Bottom="360" Right="960" NavigateUrl="~/导航栏/科室设置/保健科室/青春期保健.aspx" />
                        <asp:RectangleHotSpot Bottom="360" Right="1160" NavigateUrl="~/导航栏/科室设置/保健科室/口腔保健.aspx"/>



                    </asp:ImageMap>
                    <asp:ImageMap ID="ImageMap3" runat="server" ImageUrl="~/image/特色诊疗中心.PNG" Width="1388px">
                        <asp:RectangleHotSpot Bottom="360" Right="220" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/产前诊断中心.aspx" />
                        <asp:RectangleHotSpot Bottom="360" Right="400" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/新生儿疾病筛查中心.aspx"/>
                        <asp:RectangleHotSpot Bottom="360" Right="600" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/生殖医学中心.aspx"/>
                        <asp:RectangleHotSpot Bottom="360" Right="780" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/宫颈病防治中心.aspx" />
                        <asp:RectangleHotSpot Bottom="360" Right="960" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/妇女病普查中心.aspx"/>
                        <asp:RectangleHotSpot Bottom="360" Right="1160" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/围产医学中心.aspx"/>
                        <asp:RectangleHotSpot Bottom="360" Right="1340" NavigateUrl="~/导航栏/科室设置/特色诊疗中心/儿童保健中心.aspx"/>

                    </asp:ImageMap>
                                    </td>
                                </tr>
                            </table>
                            <span style="font-size:18.0pt;font-family:宋体;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;color:#D90BD4;mso-style-textoutline-type:none;
mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple">
                            <br />
                            地址：XX市博爱路</span><span lang="EN-US" style="font-size:18.0pt;color:#D90BD4;mso-style-textoutline-type:
none;mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple">16</span><span style="font-size:18.0pt;font-family:宋体;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;color:#D90BD4;mso-style-textoutline-type:none;
mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple">号邮编：</span><span lang="EN-US" style="font-size:18.0pt;color:#D90BD4;mso-style-textoutline-type:
none;mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple">213003</span><span style="font-size:18.0pt;font-family:宋体;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;color:#D90BD4;mso-style-textoutline-type:none;
mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple">电话：总机</span><span lang="EN-US" style="font-size:18.0pt;color:#D90BD4;mso-style-textoutline-type:
none;mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple">0519-88108181</span><span style="font-size:18.0pt;font-family:宋体;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;color:#D90BD4;mso-style-textoutline-type:none;
mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple">转各科室</span><span lang="EN-US" style="font-size:18.0pt;color:#D90BD4;mso-style-textoutline-type:
none;mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple"><o:p>&nbsp;&nbsp; </o:p>
                        Copyright</span><span style="font-size:18.0pt;font-family:宋体;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;color:#D90BD4;mso-style-textoutline-type:none;
mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple">◎惠天宝</span><span lang="EN-US" style="font-size:18.0pt;color:#D90BD4;mso-style-textoutline-type:
none;mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple"><o:p></o:p></span></td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        <span style="font-size:18.0pt;font-family:宋体;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;color:#D90BD4;mso-style-textoutline-type:none;
mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple">友情链接：</span><span lang="EN-US" style="font-size:18.0pt;color:#D90BD4;mso-style-textoutline-type:
none;mso-style-textoutline-outlinestyle-dpiwidth:0pt;mso-style-textoutline-outlinestyle-linecap:
flat;mso-style-textoutline-outlinestyle-join:round;mso-style-textoutline-outlinestyle-pctmiterlimit:
0%;mso-style-textoutline-outlinestyle-dash:solid;mso-style-textoutline-outlinestyle-align:
center;mso-style-textoutline-outlinestyle-compound:simple"><o:p><br />
                            </o:p>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/护士网logo.PNG" OnClick="ImageButton1_Click" Width="552px" />
                            </span>
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/国家医学考试网.PNG" OnClick="ImageButton2_Click" />
                        </td>
                    </tr>
                </table>
         </form>

</body>
</html>
