using Domain.Enities;
using Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudWebForms
{
    public partial class Estoque : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                PreencheGridEstoque();
                PreencheDropCategorias();
            }
        }

        public void PreencheGridEstoque()
        {
            var lista = new ItemService().Select();
            gridEstoque.DataSource = lista;
            gridEstoque.DataBind();
            gridEstoque.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        public void PreencheDropCategorias()
        {
            dpdCategoria.DataSource = new CategoriaService().Select();
            dpdCategoria.DataTextField = "Nome";
            dpdCategoria.DataValueField = "Id";
            dpdCategoria.DataBind();
            dpdCategoria.Items.Insert(0, new ListItem { Text = "Selecione", Value = "0" });

        }

        public void LimparFormulario()
        {
            txtNome.Text = "";
            txtQuantidade.Value = "";
            txtDescricao.Text = "";
            dpdCategoria.SelectedValue = "0";
        }

        protected void btnAdicionaItem_Click(object sender, EventArgs e)
        {
            var mensagemErro = "";
            if (txtNome.Text == "") mensagemErro += "- Favor preencher o nome.,";
            if (txtQuantidade.Value == "") mensagemErro += "- Favor preencher a quantidade.,";
            if (txtDescricao.Text == "") mensagemErro += "- Favor preencher a descrição.,";
            if (dpdCategoria.SelectedValue == "0") mensagemErro += "- Favor selecionar categoria.,";
            if (mensagemErro == "")
            {
                new ItemService().Insert(new Item() { Nome = txtNome.Text, Quantidade = int.Parse(txtQuantidade.Value), Descricao = txtDescricao.Text, CategoriaId = int.Parse(dpdCategoria.SelectedValue) });
                LimparFormulario();
                ucAlertas.showSucesso("Adicionado com sucesso!");
                PreencheGridEstoque();
            }
            else {
                ucAlertas.showErro(mensagemErro.Replace(",", "<br/>"));
                PreencheGridEstoque();
            }
        }

        protected void btnDeletar_Click(object sender, EventArgs e)
        {
            var estoqueId = ((LinkButton)sender).CommandArgument;
            new ItemService().Delete(int.Parse(estoqueId));
            PreencheGridEstoque();
        }
    }
}