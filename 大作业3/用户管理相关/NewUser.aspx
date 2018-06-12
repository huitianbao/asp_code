<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="NewUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   
</head>
<body>
    <form id="form1" runat="server">
     <table class="auto-style72">
            <tr>
                <td class="auto-style73">&nbsp;</td>
                <td>
                    <asp:LinkButton ID="lnkbtnDefault" runat="server" PostBackUrl="~/Homepage.aspx">首页</asp:LinkButton>
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
                                    &nbsp;<asp:LinkButton ID="lnkbtnPwd" runat="server" PostBackUrl="~/ChangePwd.aspx">密码修改</asp:LinkButton>
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
    <section>
    
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/Homepage.aspx">
            <MailDefinition BodyFileName="~/ThankEmail.txt" From="123@qq.com" IsBodyHtml="True" Subject="感谢注册">
            </MailDefinition>
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" >
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center" colspan="2">注册新帐户</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">确认密码:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="必须填写“确认密码”。" ToolTip="必须填写“确认密码”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">电子邮件:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="必须填写“电子邮件”。" ToolTip="必须填写“电子邮件”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">安全提示问题:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="必须填写“安全提示问题”。" ToolTip="必须填写“安全提示问题”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">安全答案:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="必须填写“安全答案”。" ToolTip="必须填写“安全答案”。" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="“密码”和“确认密码”必须匹配。" ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    
    </section>
    </form>
</body>
</html>
