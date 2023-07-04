<%@ Page Title="" Language="C#" MasterPageFile="~/User_page.master" AutoEventWireup="true" CodeFile="Buy_cat.aspx.cs" Inherits="Buy_cat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style47 {
            font-family: "Bahnschrift Light Condensed";
            color: #008080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style15">
        <tr>
            <td><span class="auto-style47">Поздравляем! Вы приобрели котика породы </span>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="auto-style47" DataSourceID="SqlDataSource1" Height="21px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="315px">
                    <Fields>
                        <asp:BoundField DataField="Порода" SortExpression="Порода" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CAT_SHOPConnectionString %>" SelectCommand="SELECT * FROM [Cat1] WHERE ([IDCat] = @IDCat)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="IDCat" SessionField="IDC" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style47">В течение часа наши менеджеры свяжутся с вами для подтверждения покупки, способе оплаты и месте встречи для передачи котика. Хорошего для!</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

