<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucAlertas.ascx.cs" Inherits="CrudWebForms.Shared.ucAlertas" %>
<div class="row">
    <div class="col-md-12" style="background-color:lightyellow" runat="server" id="divAlerta">
        <asp:Literal id="labelAlerta" runat="server" />
    </div>
</div>
<div class="row">
    <div class="col-md-12" style="background-color:lightcoral" runat="server" id="divErro">
        <asp:Literal id="labelErro" runat="server" />

    </div>
</div>
<div class="row">
    <div class="col-md-12" runat="server" style="background-color:lightgreen" id="divsucesso">
        <asp:Literal id="labelSucesso" runat="server" />

    </div>
</div>