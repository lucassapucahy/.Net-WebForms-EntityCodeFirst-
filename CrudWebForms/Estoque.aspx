<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Estoque.aspx.cs" Inherits="CrudWebForms.Estoque" %>

<%@ Register Src="~/Shared/ucAlertas.ascx" TagPrefix="uc1" TagName="ucAlertas" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <h1>Estoque</h1>
    <br />
    <uc1:ucAlertas runat="server" ID="ucAlertas" />
    <br />
    <a class="btn btn-danger offset-md-11" id="btnadicionar" href="javascript:$('#divAdicionaEstoque').show();$('#divGridEstoque').hide();$('#btnadicionar').hide();">Adicionar</a>
    <br />
    <br />

    <div class="row" id="divGridEstoque">
        <div class="col-md-12">
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <asp:GridView runat="server" HeaderStyle-HorizontalAlign="Center" ShowHeaderWhenEmpty="true" EmptyDataText="Sem registros" CssClass="table table-hover" ClientIDMode="Static" GridLines="None" AutoGenerateColumns="false" ID="gridEstoque">
                        <Columns>
                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Id" HeaderText="ID" />
                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Nome" HeaderText="Nome" />
                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Quantidade" HeaderText="Quantidade" />
                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Descricao" HeaderText="Descrição" />
                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Categoria.Nome" HeaderText="Categoria" />
                            <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnDeletar" OnClick="btnDeletar_Click" CommandArgument='<%# Eval("ID") %>' runat="server"><i class="far fa-trash-alt"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>

    <div id="divAdicionaEstoque">
        <div class="row">
            <div class="col-md-6">
                <label>Nome:</label>
                <asp:TextBox runat="server" ID="txtNome" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-md-6">
                <label>Categoria:</label>
                <asp:DropDownList runat="server" ID="dpdCategoria" CssClass="form-control"></asp:DropDownList>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <label>Quantidade:</label>
                <input type="number" runat="server" class="form-control" id="txtQuantidade" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <label>Descrição:</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtDescricao" TextMode="MultiLine" Rows="5"></asp:TextBox>
            </div>
        </div>
        <br />

        <div class="row">
            <div class="col-md-2">
                <asp:Button Text="Adiconar" OnClick="btnAdicionaItem_Click" CssClass="btn btn-success" ID="btnAdicionaItem" runat="server" />
            </div>
        </div>
    </div>


    <script>
        $(function () {
            $('#divAdicionaEstoque').hide();
            $('#divGridEstoque').show();

            $('#gridEstoque').DataTable({
                "scrollX": true,
                "language": {
                    "sEmptyTable": "Nenhum registro encontrado",
                    "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
                    "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
                    "sInfoFiltered": "(Filtrados de _MAX_ registros)",
                    "sInfoPostFix": "",
                    "sInfoThousands": ".",
                    "sLengthMenu": "_MENU_ resultados por página",
                    "sLoadingRecords": "Carregando...",
                    "sProcessing": "Processando...",
                    "sZeroRecords": "Nenhum registro encontrado",
                    "sSearch": "Pesquisar",
                    "oPaginate": {
                        "sNext": "Próximo",
                        "sPrevious": "Anterior",
                        "sFirst": "Primeiro",
                        "sLast": "Último"
                    },
                    "oAria": {
                        "sSortAscending": ": Ordenar colunas de forma ascendente",
                        "sSortDescending": ": Ordenar colunas de forma descendente"
                    }
                }
            });
        });

    </script>
</asp:Content>
