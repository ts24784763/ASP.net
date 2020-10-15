using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prog4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string strReplace(string input, string search, string replace)
    {
        int pos, len;//pos=position
        string output, left, right;
        pos = input.IndexOf(search);//去找換行在哪裡
        len = search.Length;
        output = input;
        while (pos != -1)//找到,pos=-1代表沒有找到換行
        {
            //取得搜尋字串左邊的字串
            left = output.Substring(0, pos);
            //取得搜尋字串右邊的字串
            right = output.Substring(pos + len);
            output = left + replace + right;
            pos = output.IndexOf(search);//再次搜尋
        }
        return output;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "<br/>(" + DateTime.Now + ") " +
        TextBox1.Text + " 說：" +
        strReplace(TextBox2.Text, "\r\n", "<br/>") +//在留言區看到換行就用<br/>代替\r\n,因為網頁的換行是<br/>
        Label1.Text;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("prog1.aspx");
    }
}