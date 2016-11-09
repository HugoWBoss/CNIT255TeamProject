using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reservation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!IsPostBack)
        {
            txtArrival.Text = System.DateTime.Today.ToString();

            ddlNumOfAdults.Items.Add(new ListItem("1", "1"));
            ddlNumOfAdults.Items.Add(new ListItem("2", "2"));
            ddlNumOfAdults.Items.Add(new ListItem("3", "3"));
            ddlNumOfAdults.Items.Add(new ListItem("4", "4"));

            ddlNumOfChildren.Items.Add(new ListItem("0", "0"));
            ddlNumOfChildren.Items.Add(new ListItem("1", "1"));
            ddlNumOfChildren.Items.Add(new ListItem("2", "2"));
            ddlNumOfChildren.Items.Add(new ListItem("3", "3"));
            ddlNumOfChildren.Items.Add(new ListItem("4", "4"));

            rblRooms.SelectedIndex = 0;
            rblBeds.SelectedIndex = 0;
        }
    }
    protected void imgCalendar_Click(object sender, ImageClickEventArgs e)
    {
        calCalendar.Visible = true;
        imgCalendar.Visible = false;
    }
    protected void calCalendar_SelectionChanged(object sender, EventArgs e)
    {
        calCalendar.Visible = false;
        imgCalendar.Visible = true;
        txtArrival.Text = calCalendar.SelectedDate.ToString();
    }
}