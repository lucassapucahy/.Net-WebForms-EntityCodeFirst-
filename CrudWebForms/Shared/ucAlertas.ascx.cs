using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudWebForms.Shared
{
    public partial class ucAlertas : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            divAlerta.Visible = false;
            divsucesso.Visible = false;
            divErro.Visible = false;
        }

        public void showAlerta(string mensagem)
        {
            divAlerta.Visible = true;
            labelAlerta.Text = mensagem;
        }

        public void showSucesso(string mensagem)
        {
            divsucesso.Visible = true;
            labelSucesso.Text = mensagem;
        }
        public void showErro(string mensagem)
        {
            divErro.Visible = true;
            labelErro.Text = mensagem;
        }

        public void Limpa() {
            divErro.Visible = false;
            divsucesso.Visible = false;
            divAlerta.Visible = false;

            labelErro.Text = "";
            labelSucesso.Text = "";
            labelAlerta.Text = "";
        }
    }
}