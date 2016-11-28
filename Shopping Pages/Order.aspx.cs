using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Order : System.Web.UI.Page
{
    private Product selectedProduct;

    protected void Page_Load(object sender, EventArgs e)
    {
        //bind dropdown on first load; get and show product data on every load        
        if (!IsPostBack) ddlistProducts.DataBind();
        selectedProduct = this.GetSelectedProduct();
        labelName.Text = selectedProduct.Name;
        labelCardNo.Text = selectedProduct.CardNumber;
        labelRarity.Text = selectedProduct.Rarity;
        labelCardType.Text = selectedProduct.CardType;
        labelCardDesc.Text = selectedProduct.CardDesc;
        labelPrice.Text = selectedProduct.Price.ToString("c") + " each";
        imageProduct.ImageUrl = "Images/Products/" + selectedProduct.ImageFile;
    }

    private Product GetSelectedProduct()
    {
        //get row from SqlDataSource based on value in dropdownlist
        DataView productsTable = (DataView)
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        productsTable.RowFilter =
            "ProductID = '" + ddlistProducts.SelectedValue + "'";
        DataRowView row = (DataRowView)productsTable[0];

        //create a new product object and load with data from row
        Product p = new Product();
        p.ProductID = row["ProductID"].ToString();
        p.Name = row["Name"].ToString();
        p.CardNumber = row["CardNumber"].ToString();
        p.Rarity = row["Rarity"].ToString();
        p.CardType = row["CardType"].ToString();
        p.CardDesc = row["CardDesc"].ToString();
        p.Price = (decimal)row["Price"];
        p.ImageFile = row["ImageFile"].ToString();
        return p;
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //get cart from session and selected item from cart
            CartItemList cart = CartItemList.GetCart();
            CartItem cartItem = cart[selectedProduct.ProductID];

            //if item isn’t in cart, add it; otherwise, increase its quantity
            if (cartItem == null)
            {
                cart.AddItem(selectedProduct,
                             Convert.ToInt32(textboxQuantity.Text));
            }
            else
            {
                cartItem.AddQuantity(Convert.ToInt32(textboxQuantity.Text));
            }
            Response.Redirect("Cart.aspx", false);
        }
    }
}