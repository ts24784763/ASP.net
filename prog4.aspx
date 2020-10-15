<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog4.aspx.cs" Inherits="prog4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .txtStyle {
            font-family: "Microsoft JhengHei UI";
            font-size: 24px;
            color: #FFFFFF;
            background-image: none;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color:steelblue">
            <center><asp:Image ID="Image1" runat="server" Height="220px" ImageUrl="images/chat.jpg" Width="472px" />
                <br />
                <p class="txtStyle"><b>Chatting Together</b></p>
            </center>
            <br />
        </div>
        <br />
        <div style="background-color:palegoldenrod"><center>

            <br />

            <asp:Label ID="Label1" runat="server"></asp:Label>

            <br />
            <br />
            <br />
            </div>
        <br />
            <div style="background-color:lightgreen"><center>
                <br />
            姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="118px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            <br />
                <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="清除全部" Height="30px" Width="100px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="送出" Width="100px" />
                <br />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Height="25px" OnClick="Button3_Click" Text="回上頁" Width="92px" />
            <br />
            <br />
                </center></div>
        </center>
    </form>
</body>
</html>
