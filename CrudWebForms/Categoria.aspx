<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Categoria.aspx.cs" Inherits="CrudWebForms.Categoria" %>

<%@ Register Src="~/Shared/ucAlertas.ascx" TagPrefix="uc1" TagName="ucAlertas" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <br />
    <h1>Categorias</h1>
    <uc1:ucAlertas runat="server" ID="ucAlertas" />
    <br />
    <a class="btn btn-danger offset-md-11" id="btnDivAdicionaCategoria" href="javascript:$('#divAdicionaCategoria').show();$('#divGridCategoria').hide();$('#btnDivAdicionaCategoria').hide();">Adicionar</a>
    <br />
    <br />
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="row" id="divGridCategoria">
                <div class="col-md-12">
                    <asp:GridView runat="server" ShowHeaderWhenEmpty="true" EmptyDataText="Sem registros" HeaderStyle-HorizontalAlign="Center" CssClass="table table-hover" ClientIDMode="Static" GridLines="None" AutoGenerateColumns="false" ID="gridCategoria">
                        <Columns>
                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Id" HeaderText="ID" />
                            <asp:BoundField ItemStyle-HorizontalAlign="Center" DataField="Nome" HeaderText="Nome" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnAdicionaCategoria" />
        </Triggers>
    </asp:UpdatePanel>
    <div id="divAdicionaCategoria">
        <div class="row">
            <div class="col-md-6">
                <label>Nome:</label>
                <asp:TextBox runat="server" ID="txtNomeCategoria" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-2">
                <asp:Button CssClass="btn btn-success" OnClick="btnAdicionaCategoria_Click" ID="btnAdicionaCategoria" runat="server" Text="Adicionar" />
            </div>
        </div>
    </div>



    <script>
        $(function () {
            $('#divAdicionaCategoria').hide();
            $('#divGridCategoria').show();

            $('#gridCategoria').DataTable({
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
