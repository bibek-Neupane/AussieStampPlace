using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Wrox.Commerce;

public partial class WroxShoppingCart : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Profile.Cart == null)  
        {
            Profile.Cart = new Wrox.Commerce.ShoppingCart();

        }
        if (!Page.IsPostBack)
        {
            BindGrid();
        }
        if (Profile.Cart.Items.Count == 0)
        {
            TotalLabel.Visible = false;
        }

    }
    protected void CartGrid_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CartGrid.EditIndex = e.NewEditIndex;
        BindGrid();
    }
    protected void CartGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox QuantityTextBox = (TextBox)CartGrid.Rows[e.RowIndex].Cells[2].Controls[0];
  int Quantity = Convert.ToInt32(QuantityTextBox.Text);
  if (Quantity == 0) 
  {
    Profile.Cart.Items.RemoveAt(e.RowIndex);
  }
  else
  {
    Profile.Cart.Items[e.RowIndex].Quantity = Quantity;
  }
  CartGrid.EditIndex = -1;
  BindGrid();

    }
    protected void CartGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        CartGrid.EditIndex = -1;
        BindGrid();

    }
    protected void CartGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Profile.Cart.Items.RemoveAt(e.RowIndex);
  BindGrid();

    }
    private void BindGrid()
    {
        CartGrid.DataSource = Profile.Cart.Items;
        DataBind();

        TotalLabel.Text = String.Format("Total:{0,19:C}", Profile.Cart.Total);
    }

}
