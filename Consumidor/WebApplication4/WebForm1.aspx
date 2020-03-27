<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Consumir servicio desde ASP.NET</h1>
            <asp:Label ID="Numero1" Text="Numero 1:" runat="server"/>
            <asp:TextBox ID="txtNumero1" runat="server" />
            <hr />
            <asp:Label ID="Numero2" Text="Numero 2:" runat="server"/>
            <asp:TextBox ID="txtNumero2" runat="server" />
            <hr />
            <asp:Button ID="btnSumar" Text="Sumar" runat="server" OnClick="btnSumar_Click"/>
            <hr />
            <asp:Label ID="Resultado" runat="server" />
        </div>
    </form>
</body>
</html>
