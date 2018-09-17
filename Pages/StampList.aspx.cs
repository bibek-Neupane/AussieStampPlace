using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList2_DataBound(object sender, EventArgs e)
    {
        for(int i=0; i<DropDownList2.Items.Count; i++)
        {
            DropDownList2.SelectedIndex = i;
            string str = DropDownList2.SelectedItem.ToString();
            for (int counter = i+1;counter<DropDownList2.Items.Count; counter++)
            {
                DropDownList2.SelectedIndex = counter;
                string compareStr = DropDownList2.SelectedItem.ToString();
                if(str== compareStr)
                {
                    DropDownList2.Items.RemoveAt(counter);
                    counter = counter - 1;
                }
            }

        }
    }
}