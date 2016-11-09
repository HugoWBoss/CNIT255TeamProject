using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cart : System.Web.UI.Page
{
    private CartItemList myCart;

    protected void Page_Load(object sender, EventArgs e)
    {
        myCart = CartItemList.GetCart();
        if (!IsPostBack)
            this.DisplayCart();
    }

    private void DisplayCart()
    {
        lstCart.Items.Clear();
        CartItem item;
        for (int i = 0; i < myCart.Count; i++)
        {
            item = myCart[i];
            lstCart.Items.Add(item.Display());
        }
    }

    protected void btnRemoveItem_Click(object sender, EventArgs e)
    {
        if (myCart.Count > 0)
        {
            if (lstCart.SelectedIndex > -1)
            {
                myCart.RemoveAt(lstCart.SelectedIndex);
                this.DisplayCart();
            }
            else
            {
                lblMessage.Text = "Please select the item you want to remove.";
            }
        }
    }

    protected void btnEmptyCart_Click(object sender, EventArgs e)
    {
        if (myCart.Count > 0)
        {
            myCart.Clear();
            lstCart.Items.Clear();
        }
    }

    protected void btnCheckOut_Click(object sender, EventArgs e)
    {
        lblMessage.Text = "Sorry, that function hasn't been "
                        + "implemented yet.";
    }
    
}