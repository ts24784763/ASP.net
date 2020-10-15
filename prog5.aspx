<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prog5.aspx.cs" Inherits="prog5" %>

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
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" SelectCommand="SELECT * FROM [s1071724Table2]" DeleteCommand="DELETE FROM [s1071724Table2] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1071724Table2] ([Id], [隊名], [隊長], [隊長電話], [隊長信箱], [報名種類], [匯款帳號]) VALUES (@Id, @隊名, @隊長, @隊長電話, @隊長信箱, @報名種類, @匯款帳號)" UpdateCommand="UPDATE [s1071724Table2] SET [隊名] = @隊名, [隊長] = @隊長, [隊長電話] = @隊長電話, [隊長信箱] = @隊長信箱, [報名種類] = @報名種類, [匯款帳號] = @匯款帳號 WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="隊名" Type="String" />
                    <asp:Parameter Name="隊長" Type="String" />
                    <asp:Parameter Name="隊長電話" Type="String" />
                    <asp:Parameter Name="隊長信箱" Type="String" />
                    <asp:Parameter Name="報名種類" Type="String" />
                    <asp:Parameter Name="匯款帳號" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="隊名" Type="String" />
                    <asp:Parameter Name="隊長" Type="String" />
                    <asp:Parameter Name="隊長電話" Type="String" />
                    <asp:Parameter Name="隊長信箱" Type="String" />
                    <asp:Parameter Name="報名種類" Type="String" />
                    <asp:Parameter Name="匯款帳號" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
           </div>
        <div class="txtStyle"><center>
            <br />
            <b> 隊長資料更改<br />
            </b><br />
            </center>
        </div>
        <br />
        <center>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" AllowPaging="True" GridLines="None" AllowSorting="True" PageSize="5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="隊名" HeaderText="隊名" SortExpression="隊名" />
                <asp:BoundField DataField="隊長" HeaderText="隊長" SortExpression="隊長" />
                <asp:BoundField DataField="隊長電話" HeaderText="隊長電話" SortExpression="隊長電話" />
                <asp:BoundField DataField="隊長信箱" HeaderText="隊長信箱" SortExpression="隊長信箱" />
                <asp:BoundField DataField="報名種類" HeaderText="報名種類" SortExpression="報名種類" />
                <asp:BoundField DataField="匯款帳號" HeaderText="匯款帳號" SortExpression="匯款帳號" />
                <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="images/{0}.png" HeaderText="頭貼">
                </asp:ImageField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
            <br />
         
            <div class="txtStyle" style="background-color:yellowgreen"><center>
            <br />
            <b> 隊員資料更改<br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" DeleteCommand="DELETE FROM [s1071724Table3] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1071724Table3] ([Id], [隊名], [姓名], [聯絡電話], [報名種類], [其他報名種類]) VALUES (@Id, @隊名, @姓名, @聯絡電話, @報名種類, @其他報名種類)" SelectCommand="SELECT * FROM [s1071724Table3] WHERE ([隊名] = @隊名)" UpdateCommand="UPDATE [s1071724Table3] SET [隊名] = @隊名, [姓名] = @姓名, [聯絡電話] = @聯絡電話, [報名種類] = @報名種類, [其他報名種類] = @其他報名種類 WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                        <asp:Parameter Name="隊名" Type="String" />
                        <asp:Parameter Name="姓名" Type="String" />
                        <asp:Parameter Name="聯絡電話" Type="String" />
                        <asp:Parameter Name="報名種類" Type="String" />
                        <asp:Parameter Name="其他報名種類" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="隊名" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="隊名" Type="String" />
                        <asp:Parameter Name="姓名" Type="String" />
                        <asp:Parameter Name="聯絡電話" Type="String" />
                        <asp:Parameter Name="報名種類" Type="String" />
                        <asp:Parameter Name="其他報名種類" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </b><br />
            </center>
        </div>
            </center>
            <b> 
                <center>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" SelectCommand="SELECT DISTINCT [隊名] FROM [s1071724Table3]"></asp:SqlDataSource>
                    <br />
        <asp:Label ID="Label1" runat="server" Text="選擇隊伍：" style="font-family:'Microsoft JhengHei'"></asp:Label>
            </b>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="隊名" DataValueField="隊名">
                    </asp:DropDownList>
                    <asp:Button ID="Button1" runat="server" Text="選擇" />
                    <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="隊名" HeaderText="隊名" SortExpression="隊名" />
                <asp:BoundField DataField="姓名" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="聯絡電話" HeaderText="聯絡電話" SortExpression="聯絡電話" />
                <asp:BoundField DataField="報名種類" HeaderText="報名種類" SortExpression="報名種類" />
                <asp:BoundField DataField="其他報名種類" HeaderText="其他報名種類" SortExpression="其他報名種類" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
                    <br />
                    <br />
        <div style="background-color:darkslategray">
                    <br />
                    <asp:Button ID="Button2" runat="server" Height="48px" OnClick="Button2_Click" Text="回首頁" Width="103px" />
                    <br />
                    <br />
            </div>
        </center>
    </form>
</body>
</html>
