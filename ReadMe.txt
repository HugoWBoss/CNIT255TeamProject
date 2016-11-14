CNIT 255 Team Project
________________________________________________________________
Overall
----------------------------------------------------------------
SQL Server Database
	Information Entered
	
Themes
	Shopping Themes
	Maintenance Themes
	
Site Navigation Controls
	


________________________________________________________________
Pages
----------------------------------------------------------------
Master Page
	Contact Info
	Seperate Pages for Shopping and Maintenance

Main Page
	Description of Store
	Links to Major Sections

Order Page
	Displays Purchaseable Items
	Gets items from SQL Server Database

Cart Page
	Displays All Items in a Cart
	"Proceed to Checkout" button that redirects to a checkout page
	Shows the total amount in the shopping cart

Checkout Page
	Logins an existing customer before checking out
	Register a new customer and store the new customer data in the SQL Server Database
		Store Customer's name, address, city, state, zip, contact info, credit card info
	Garther Payment info and store in SQL Server Database
	Save invoice and cart items in the SQL Server Database
	*Create a page that displays a sales receipt for the processing order
		Must display the total for the sale and the invoice data including the items purchased
	Display total amount of sale on the checkout page
	Auto-generate email message that includes the order invoice, total, and the items purchased that is sent to a gmail account from 		an existing store gmail account

Order History Page
	Displays Current and Previous Orders
	Accessible by a logged in customer and administrator
		If logged in as admin then display customer selection drop down list
		Upon selection of customer, customer current and previous orders are displayed
		
Invoice Page
	Allows selection of invoice by invoice number
		After update displays all the line items in the invoice
	Must be modifiable
*Receipt Page

Order Cancellation Page

Sign-In Page

Maintenance: Product List Page
	All product fields must be modifiable
	Allows for additions, modifications, and deletions of product records
	Must use Gridview and Detailsview controls which are linked together for a master/detail view of data

Maintenance: Customer Order History
	

Maintenance: Category Items Page
	Allows for additions, modifications, and deletions of categories records
	Products must be related to a category

Maintenance: Customer Page


Site Navigation Page


_______________________________________________________________________
Database
-----------------------------------------------------------------------
A Customer can have many Invoices.
An Invoice can have only one Customer.
A Product can have only one Category.
A Cart can only belong to one Customer.

Customers
	CustomerID, Name, Address, City, State, ZIP, Contact Info, Credit Card Info
Invoices
	InvoiceID, CustomerID
Products
	ProductID, CategoryID
Categories
	CategoryID
Cart
	CartID, CustomerID
