<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog3.aspx.cs" Inherits="prog3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .txtStyle {
            font-family: "Microsoft JhengHei UI";
            font-size: 24px;
            color: black;
            background-image: none;
            background-color:orange;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image:url('images/bg1.jpeg')">
        <div class="txtStyle"><center>
            <br />
            <b>帳號註冊<br />
            </b><br />
            </center>
        </div>
        <br />
        <div style="background-color:burlywood;font-family: Microsoft JhengHei UI"><center>

            <br />
            姓名：<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            帳號：<br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            密碼：<br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            確認密碼：<br />
            <br />
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>

            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ErrorMessage="密碼不相同！" ForeColor="Red" ControlToValidate="TextBox4"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="35px" Text="註冊" Width="88px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />

        </center></div>
        <br />
        <center><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="去登入" Height="29px" Width="99px" />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" DeleteCommand="DELETE FROM [s1071724Table5] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1071724Table5] ([姓名], [帳號], [密碼]) VALUES (@姓名, @帳號, @密碼)" SelectCommand="SELECT * FROM [s1071724Table5]" UpdateCommand="UPDATE [s1071724Table5] SET [姓名] = @姓名, [帳號] = @帳號, [密碼] = @密碼 WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="姓名" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="帳號" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="密碼" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="帳號" Type="String" />
                    <asp:Parameter Name="密碼" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </center>
    </form>
</body>
</html>
