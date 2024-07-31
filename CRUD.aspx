<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="Premium.CRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
    <asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Student ID is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
       <p>
    <asp:Label ID="Label2" runat="server" Text="Student Name"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Student Name is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
        <p>
    <asp:Label ID="Label3" runat="server" Text="Student Age"></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Student Age is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Age must be greater than 18." Type="Integer" MinimumValue="18" MaximumValue="5000" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
</p>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create" Width="56px" />
         &nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" />
        &nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" />
        <p>
        &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>