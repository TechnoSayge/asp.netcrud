<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="asp.netcrud.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<asp:hiddenfield ID="hfContactID" runat="server"></asp:hiddenfield>
        <table>
            <tr>
                <td> 
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td><!-- END Column 1 -->
                <td colspan="2"> 
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td><!-- END Column 2 -->
            </tr>
            <tr>
                <td> 
                    <asp:Label ID="Label2" runat="server" Text="Mobile"></asp:Label>
                </td><!-- END Column 1 -->
                <td colspan="2"> 
                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                </td><!-- END Column 2 -->
            </tr>
            <tr>
                <td> 
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td><!-- END Column 1 -->
                <td colspan="2"> 
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td><!-- END Column 2 -->
            </tr>

              <tr>
                <td> 
                </td><!-- END Column 1 -->

                <td colspan="2"> 
                    <asp:Button ID="btnSave" runat="server" Text="Save" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                </td><!-- END Column 2 -->
            </tr>
            <tr>
                <td> 
                </td><!-- END Column 1 -->

                <td colspan="2"> 
                    <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td><!-- END Column 2 -->
            </tr>
            <tr>
                <td> 
                </td><!-- END Column 1 -->

                <td colspan="2"> 
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td><!-- END Column 2 -->
            </tr>
        </table>
        <br />
        <asp:GridView ID="gvContact" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                <asp:BoundField DataField="Address" HeaderText="Address" />

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CommandArgument=' <%# Eval("ContactID") %> '>View</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>


         </div>
    </form>
</body>
</html>
