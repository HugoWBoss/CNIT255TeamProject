using System;
using System.Web.UI;
using System.Data;

public partial class _Default: System.Web.UI.Page
{
    private Product selectedProduct;

    protected void Page_Load(object sender, EventArgs e) {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        //bind dropdown on first load; get and show product data on every load        
        if (!IsPostBack) ddlItems.DataBind();
        selectedProduct = this.GetSelectedProduct();
        lblItemName.Text = selectedProduct.Name;
        lblShortDescription.Text = selectedProduct.ShortDescription;
        lblItemDescription.Text = selectedProduct.LongDescription;
        lblItemPrice.Text = selectedProduct.UnitPrice.ToString("c") + " each";
        imgProduct.ImageUrl = "Images/Products/" + selectedProduct.ImageFile;
    }

    private Product GetSelectedProduct() {
        //get row from SqlDataSource based on value in dropdownlist
        DataView productsTable = (DataView)
            sqlDataSource.Select(DataSourceSelectArguments.Empty);
        productsTable.RowFilter =
            "Name = '" + ddlItems.SelectedItem + "'";
        DataRowView row = (DataRowView)productsTable[0];

        //create a new product object and load with data from row
        Product p = new Product();
        p.ProductID = row["ProductID"].ToString();
        p.Name = row["Name"].ToString();
        p.ShortDescription = row["ShortDescription"].ToString();
        p.LongDescription = row["LongDescription"].ToString();
        p.UnitPrice = (decimal)row["UnitPrice"];
        p.ImageFile = row["ImageFile"].ToString();
        return p;
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtQuantity.Text = "1";
    }

    protected void btnGoToCart_Click(object sender, EventArgs e)
    {
        //Links to the cart page through html property.
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
                             Convert.ToInt32(txtQuantity.Text));
            }
            else
            {
                cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
            }
            Response.Redirect("Cart.aspx", false);
        }
    }

    protected void ddlItems_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}
