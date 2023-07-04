<%@ Page Title="" Language="C#" MasterPageFile="~/User_page.master" AutoEventWireup="true" CodeFile="Find_cat.aspx.cs" Inherits="Find_cat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style13 {
        width: 100%;
        height: 815px;
    }
    .auto-style14 {
        height: 236px;
    }
    .auto-style15 {
        width: 766px;
    }
    .auto-style18 {
        height: 85px;
        font-family: "Bahnschrift SemiBold Condensed";
        font-weight: bold;
        font-size: x-large;
        color: #006666;
    }
        .auto-style25 {
            text-align: center;
            font-family: "Bahnschrift Light Condensed";
            font-size: x-large;
            color: #006666;
        }
        .auto-style26 {
            font-family: "Bahnschrift Light Condensed";
            color: #9999FF;
        }
    .auto-style27 {
        width: 12px;
    }
        .auto-style47 {
            text-align: center;
            font-family: "Bahnschrift Light Condensed";
            font-size: large;
            color: #006666;
            height: 34px;
        }
        .auto-style48 {
            font-family: "Bahnschrift Light Condensed";
            color: #9999FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style13">
    <tr>
        <td class="auto-style18" colspan="2" style="text-align: center">Здесь вы можете найти подходящего вам котика</td>
    </tr>
    <tr>
        <td colspan="2">
        </td>
    </tr>
    <tr>
        <td colspan="2" class="auto-style47"><strong>Выберите понравившегося котика:</strong></td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style48" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1244px" DataKeyNames="IDCat">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Имя" HeaderText="Имя" SortExpression="Имя" />
                    <asp:BoundField DataField="Порода" HeaderText="Порода" SortExpression="Порода" />
                    <asp:BoundField DataField="Возраст" HeaderText="Возраст" SortExpression="Возраст" />
                    <asp:BoundField DataField="Окрас" HeaderText="Окрас" SortExpression="Окрас" />
                    <asp:BoundField DataField="Характер" HeaderText="Характер" SortExpression="Характер" />
                    <asp:BoundField DataField="Пол" HeaderText="Пол" SortExpression="Пол" />
                    <asp:BoundField DataField="Размер" HeaderText="Размер" SortExpression="Размер" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CAT_SHOPConnectionString %>" SelectCommand="SELECT * FROM [Cat1]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style15">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
        <td class="auto-style27">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style14" colspan="2" style="text-align: center">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

