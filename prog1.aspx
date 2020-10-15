<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog1.aspx.cs" Inherits="prog1" %>

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
        .pt2 {
            background-color:#FFFF99;
            font-family: "Microsoft JhengHei UI";
            font-size: 20px;
            font-style: normal;
            font-variant: normal;
            font-weight: normal;
        }
        .pt3 {
            font-family: "Microsoft JhengHei UI";
            text-decoration: blink;
            font-size: 20px;
            font-style: normal;
            background-color: wheat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('images/bg1.jpeg')">
        <div style="background-color:darkgoldenrod">
            <br />
            <center>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="prog2.aspx" CssClass="txtStyle">修改資料</asp:HyperLink>
                &nbsp;
            <asp:Image ID="Image1" runat="server" Height="61px" ImageUrl="images/arrow.png" Width="65px" ImageAlign="Middle"/><a class="txtStyle" style="color:crimson"><b>點此登入！！</b></a></center>
            <br />
            </div>
        <br />
            <div class="pt2"><center>
                <br />
                <p class="txtStyle" style="color:black"><b>報名現況</b></p>
            
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="隊名" HeaderText="隊名" SortExpression="隊名" />
                <asp:BoundField DataField="隊長" HeaderText="隊長" SortExpression="隊長" />
                <asp:BoundField DataField="報名種類" HeaderText="報名種類" SortExpression="報名種類" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
            
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=140.138.144.66\SQL1422;Initial Catalog=1082netdbB;User ID=1082netdbB;Password=yzuim1082netdbB" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [隊名], [隊長], [報名種類] FROM [s1071724Table2]"></asp:SqlDataSource>
                <br />
                </center></div>
        <br />
        <div class="pt3"><center>
            <br />
        <p class="pt3"><b>隊伍名單查詢： <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="隊名" DataValueField="隊名" Height="16px">
        </asp:DropDownList> </b></p>
           
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" SelectCommand="SELECT DISTINCT [隊名] FROM [s1071724Table3]"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="隊名" HeaderText="隊名" SortExpression="隊名" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="聯絡電話" HeaderText="聯絡電話" SortExpression="聯絡電話" />
                <asp:BoundField DataField="報名種類" HeaderText="報名種類" SortExpression="報名種類" />
                <asp:BoundField DataField="其他報名種類" HeaderText="其他報名種類" SortExpression="其他報名種類" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [s1071724Table3] WHERE ([隊名] = @隊名)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="隊名" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="77px" ImageUrl="images/chattingroom.png" PostBackUrl="prog4.aspx" Width="84px" />
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="回首頁" Width="124px" />
            <br />
            <br />
            </center></div>
    </form>
</body>
</html>
