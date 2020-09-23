using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectExcercise
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblPay.Visible = false;
        }

        protected void btnPay_Click(object sender, EventArgs e)
        {
            lblPay.Visible = true;
            lblPay.Text = "Thank you for the payment";
        }
    }
}