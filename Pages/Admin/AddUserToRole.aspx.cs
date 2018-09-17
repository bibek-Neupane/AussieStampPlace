using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Pages_Admin_AddUserToRole : BasePage
{
    string[] rolesArray;
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        if(Roles.IsUserInRole(ListBox1.Text, ListBox2.Text))
        { Label1.Text = ListBox1.Text + " is in role " + ListBox2.Text; }
        else
            Label1.Text= ListBox1.Text + " is Not in role " + ListBox2.Text;


    }
}