using Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using Domain.Enities;
using System.Web.UI.WebControls;

namespace CrudWebForms
{
    public partial class Categoria : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PreencheGridEstoque();
                ucAlertas.Limpa();
            }
        }

        public void PreencheGridEstoque()
        {
            gridCategoria.DataSource = new CategoriaService().Select();
            gridCategoria.DataBind();
            gridCategoria.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btnAdicionaCategoria_Click(object sender, EventArgs e)
        {
            if (txtNomeCategoria.Text != "")
            {
                new CategoriaService().Insert(new Domain.Enities.Categoria() { Nome = txtNomeCategoria.Text });
                ucAlertas.showSucesso("Adicionado com sucesso!");
                PreencheGridEstoque();
            }
            else
            {
                ucAlertas.showErro("- Favor preencher a categoria.");
                PreencheGridEstoque();
            }

        }
    }
}