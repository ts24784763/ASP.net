<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog2.aspx.cs" Inherits="prog2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .txtStyle {
            font-family: "Microsoft JhengHei UI";
            font-size: 24px;
            color:black
        }
        .bg {
            background-image: url('images/logimg.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center center;
            background-size:cover
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="txtStyle" style="background-color:burlywood"><center>
            <b>
            <br />
           帳號登入</b><br />
            <asp:Image ID="Image1" runat="server" Height="92px" ImageUrl="images/login.png" Width="271px" />
        </div></center>
        <br />
        <div style="background-color:lightblue;font-family:'Microsoft JhengHei'"><center>
            <br />
             帳號：<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            密碼：<br />
            <br />
            &nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="25px" Text="註冊" Width="60px" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="25px" Text="登入" Width="60px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="帳號" HeaderText="帳號" SortExpression="帳號" />
                    <asp:BoundField DataField="密碼" HeaderText="密碼" SortExpression="密碼" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" SelectCommand="SELECT [帳號], [密碼] FROM [s1071724Table5] WHERE (([帳號] = @帳號) AND ([密碼] = @密碼))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="帳號" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="密碼" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </center></div>
        <br />
            <div style="background-color:orange;font-family:'Microsoft JhengHei'" class="txtStyle"><center>

                <br />

                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="prog1.aspx" ForeColor="Blue"><b>隊伍查詢頁面</b></asp:HyperLink>
                <br />
                <br />
            </center></div>
        <br />
        <center><asp:Button ID="Button3" runat="server" Text="回首頁" Height="29px" Width="77px" OnClick="Button3_Click" /></center>
            
    </form>
</body>
</html>
