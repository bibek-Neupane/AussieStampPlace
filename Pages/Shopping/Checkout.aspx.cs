using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Wrox.Commerce;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Checkout : BasePage
{
    void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            if (Profile.Cart == null)
            {
                NoCartlabel.Visible = true;
                Wizard1.Visible = false;
            }

            if (User.Identity.IsAuthenticated)
            {
                Wizard1.ActiveStepIndex = 1;
            }
            else
            {
                Wizard1.ActiveStepIndex = 0;
            }
        }

    }

    protected void chkUseProfileAddress_CheckedChanged(object sender,
      System.EventArgs e)
    {
        // fill the delivery address from the profile, but only if it's empty
        // we don't want to overwrite the values
        if (chkUseProfileAddress.Checked && txtName.Text.Trim() == "")
        {
            txtName.Text = Profile.Name;
            txtAddress.Text = Profile.Address;
            txtCity.Text = Profile.City;
            txtCounty.Text = Profile.Country;
            txtPostCode.Text = Profile.PostCode;
            txtCountry.Text = Profile.Country;
        }

    }

    protected void Wizard1_FinishButtonClick(object sender, System.Web.UI.WebControls.WizardNavigationEventArgs e)
    {
        // Insert the order and order lines into the database
        SqlConnection conn = null;
        SqlTransaction trans = null;
        SqlCommand cmd;

        try
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WroxUnited"].ConnectionString);
            conn.Open();

            trans = conn.BeginTransaction();

            cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.Transaction = trans;

            // set the order details
            cmd.CommandText = "INSERT INTO Orders(MemberName, OrderDate, Name, Address, County, PostCode, Country, SubTotal, Discount, Total) " + "VALUES (@MemberName, @OrderDate, @Name, @Address, @County, @PostCode, @Country, @SubTotal, @Discount, @Total)";
            cmd.Parameters.Add("@MemberName", SqlDbType.VarChar, 50);
            cmd.Parameters.Add("@OrderDate", SqlDbType.DateTime);
            cmd.Parameters.Add("@Name", SqlDbType.VarChar, 50);
            cmd.Parameters.Add("@Address", SqlDbType.VarChar, 255);
            cmd.Parameters.Add("@County", SqlDbType.VarChar, 50);
            cmd.Parameters.Add("@PostCode", SqlDbType.VarChar, 15);
            cmd.Parameters.Add("@Country", SqlDbType.VarChar, 50);
            cmd.Parameters.Add("@SubTotal", SqlDbType.Money);
            cmd.Parameters.Add("@Discount", SqlDbType.Money);
            cmd.Parameters.Add("@Total", SqlDbType.Money);

            cmd.Parameters["@MemberName"].Value = User.Identity.Name;
            cmd.Parameters["@OrderDate"].Value = DateTime.Now;
            cmd.Parameters["@Name"].Value = ((TextBox)Wizard1.FindControl("txtName")).Text;
            cmd.Parameters["@Address"].Value = ((TextBox)Wizard1.FindControl("txtAddress")).Text;
            cmd.Parameters["@County"].Value = ((TextBox)Wizard1.FindControl("txtCounty")).Text;
            cmd.Parameters["@PostCode"].Value = ((TextBox)Wizard1.FindControl("txtPostCode")).Text;
            cmd.Parameters["@Country"].Value = ((TextBox)Wizard1.FindControl("txtCountry")).Text;
            cmd.Parameters["@Total"].Value = Profile.Cart.Total;

            int OrderID = Convert.ToInt32(cmd.ExecuteScalar());

            // change the query and parameters for the order lines
            cmd.CommandText = "INSERT INTO OrderLines(OrderID, ProductID, Quantity, Price) " +
              "VALUES (@OrderID, @ProductID, @Quantity, @Price)";
            cmd.Parameters.Clear();
            cmd.Parameters.Add("@OrderID", SqlDbType.Int);
            cmd.Parameters.Add("@ProductID", SqlDbType.Int);
            cmd.Parameters.Add("@Quantity", SqlDbType.Int);
            cmd.Parameters.Add("@Price", SqlDbType.Money);

            cmd.Parameters["@OrderID"].Value = OrderID;
            foreach (CartItem item in Profile.Cart.Items)
            {
                cmd.Parameters["@ProductID"].Value = item.ProductID;
                cmd.Parameters["@Quantity"].Value = item.Quantity;
                cmd.Parameters["@Price"].Value = item.Price;

                cmd.ExecuteNonQuery();
            }

            // commit the transaction
            trans.Commit();

        }
        catch (SqlException SqlEx)
        {
            // some form of error - rollback the transaction 
            // and rethrow the exception
            if (trans != null)
                trans.Rollback();



            // Log the exception
            // Tools.log("An error occurred while creating the order", SqlEx)
            throw new Exception("An error occurred while creating the order", SqlEx);
        }
        finally
        {
            if (conn != null)
                conn.Close();
        }

        // we will only reach here if the order has been created sucessfully
        // so clear the cart
        Profile.Cart.Items.Clear();
    }

    protected void Wizard1_NextButtonClick(object sender, System.Web.UI.WebControls.WizardNavigationEventArgs e)
    {
        if (e.CurrentStepIndex == 0)
        {
            System.Web.UI.WebControls.Login l = (Login)Wizard1.FindControl("Login1");

            if (Membership.ValidateUser(l.UserName, l.Password))
            {
                FormsAuthentication.SetAuthCookie(l.UserName, l.RememberMeSet);
                e.Cancel = false;
            }
            else
            {
                l.InstructionText = "Your login attempt was not successful. Please try again.";
                l.InstructionTextStyle.ForeColor = System.Drawing.Color.Red;

                e.Cancel = true;
            }
        }
        else
        {
            if (!User.Identity.IsAuthenticated)
            {
                e.Cancel = true;
                Wizard1.ActiveStepIndex = 0;
            }
        }
    }

    protected void Wizard1_ActiveStepChanged(object sender, System.EventArgs e)
    {
        if (!User.Identity.IsAuthenticated)
            Wizard1.ActiveStepIndex = 0;
    }

}

