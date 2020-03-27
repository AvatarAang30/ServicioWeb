using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSumar_Click(object sender, EventArgs e)
        {
            WSPrueba.WebService1SoapClient webService1Soap = new WSPrueba.WebService1SoapClient();
            Resultado.Text = webService1Soap.Sumar(int.Parse(txtNumero1.Text), int.Parse(txtNumero2.Text)).ToString();
        }
    }
}