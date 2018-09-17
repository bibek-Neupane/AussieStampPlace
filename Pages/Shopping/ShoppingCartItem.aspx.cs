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

public partial class WroxShopItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddToCart1_Click(object sender, ImageClickEventArgs e)
    {
        double Price = double.Parse(((Label)DataList1.Controls[0].FindControl("PriceLabel")).Text);
        string ProductName = ((Label)DataList1.Controls[0].FindControl("NameLabel")).Text;
        string PictureURL = ((Label)DataList1.Controls[0].FindControl("PictureUrlLabel")).Text;
        int ProductID = int.Parse(Request.QueryString["StampId"]);


        if (Profile.Cart == null)
        {
            Profile.Cart = new Wrox.Commerce.ShoppingCart();
        }
        Profile.Cart.Insert(ProductID, Price, 1, ProductName, PictureURL);
        Server.Transfer("ShoppingCartPage.aspx");



    }
}
