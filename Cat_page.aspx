<%@ Page Title="" Language="C#" MasterPageFile="~/User_page.master" AutoEventWireup="true" CodeFile="Cat_page.aspx.cs" Inherits="Cat_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style20 {
            height: 948px;
        }
        .auto-style14 {
            width: 100%;
            height: 502px;
        }
        .auto-style15 {
            width: 311px;
            font-family: "Bahnschrift SemiBold Condensed";
            font-weight: bold;
            font-size: x-large;
            color: #006666;
        height: 45px;
    }
        .auto-style24 {
        width: 465px;
        height: 45px;
    }
    .auto-style25 {
        height: 45px;
    }
        .auto-style18 {
        width: 465px;
    }
        .auto-style22 {
            width: 311px;
            font-family: "Bahnschrift Light Condensed";
            font-size: large;
            color: #008080;
            text-decoration: underline;
        }
        .auto-style27 {
        font-family: "Bahnschrift Light";
        color: #3399FF;
        font-size: medium;
    }
    .auto-style31 {
        width: 100%;
        height: 0px;
    }
        .auto-style21 {
            font-family: "Bahnschrift Light Condensed";
            color: #008080;
            text-decoration: underline;
        }
        .auto-style26 {
        font-family: "Bahnschrift Light";
        color: #008080;
    }
    .auto-style30 {
        font-family: Bahnschrift;
        color: #008000;
    }
        .auto-style23 {
            font-family: "Bahnschrift Condensed";
            color: #006666;
            text-transform: uppercase;
        }
    .auto-style33 {
        width: 76px;
    }
    .auto-style34 {
        font-family: "Bahnschrift SemiBold Condensed";
        font-weight: bold;
        font-size: x-large;
        color: #006666;
        height: 45px;
    }
        .auto-style48 {
            font-family: "Bahnschrift SemiBold Condensed";
            font-weight: bold;
            font-size: medium;
            color: #006666;
            height: 37px;
        }
        .auto-style49 {
            font-size: 75px;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style31">
            <tr>
                <td class="auto-style48" colspan="2">
                    <asp:Button ID="Button6" runat="server" BackColor="White" OnClick="Button6_Click" Text="Вернуться назад" Width="196px" />
                </td>
                <td class="auto-style49"></td>
            </tr>
            <tr>
                <td class="auto-style34" colspan="2">Страница котика</td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style33" rowspan="2">
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="100px" Width="100px" AutoGenerateRows="False" DataSourceID="SqlDataSource1">
                        <Fields>
                            <asp:ImageField DataImageUrlField="Фото" ShowHeader="False">
                                <ControlStyle Height="300px" Width="300px" />
                                <FooterStyle Height="300px" Width="300px" />
                                <HeaderStyle Height="300px" Width="300px" />
                            </asp:ImageField>
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td class="auto-style18" rowspan="2"><span class="auto-style21">Описание котика:</span><br />
                    <asp:DetailsView ID="DetailsView2" runat="server" Height="16px" Width="306px" AutoGenerateRows="False" DataSourceID="SqlDataSource1" CssClass="auto-style26" OnPageIndexChanging="DetailsView2_PageIndexChanging">
                        <Fields>
                            <asp:BoundField DataField="Имя" HeaderText="Имя" SortExpression="Имя" />
                            <asp:BoundField DataField="Порода" HeaderText="Порода" SortExpression="Порода" />
                            <asp:BoundField DataField="Возраст" HeaderText="Возраст" SortExpression="Возраст" />
                            <asp:BoundField DataField="Окрас" HeaderText="Окрас" SortExpression="Окрас" />
                            <asp:BoundField DataField="Пол" HeaderText="Пол" SortExpression="Пол" />
                            <asp:BoundField DataField="Размер" HeaderText="Размер" SortExpression="Размер" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CAT_SHOPConnectionString %>" SelectCommand="SELECT * FROM [Cat1] WHERE ([IDCat] = @IDCat)">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="0" Name="IDCat" SessionField="IDC" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" BackColor="#CBFEFE" CssClass="auto-style30" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CAT_SHOPConnectionString %>" SelectCommand="SELECT * FROM [Cat1] WHERE ([IDCat] = @IDCat)">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="0" Name="IDCat" SessionField="IDC" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <strong>
                    <asp:Button ID="Button4" runat="server" BackColor="#00FF99" CssClass="auto-style23" Height="60px" Text="Забрать котика" Width="284px" OnClick="Button4_Click" />
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                    </strong>
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34" colspan="2">Характер котика:</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34" colspan="3">
                    <asp:DetailsView ID="DetailsView3" runat="server" Height="20px" Width="708px" AutoGenerateRows="False" DataSourceID="SqlDataSource2" CssClass="auto-style27">
                        <Fields>
<asp:BoundField DataField="Характер" SortExpression="Характер"></asp:BoundField>
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CAT_SHOPConnectionString %>" SelectCommand="SELECT * FROM [Cat1] WHERE ([IDCat] = @IDCat)">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="0" Name="IDCat" SessionField="IDC" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
<p class="auto-style20">
        <table class="auto-style14">
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style24"></td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
<p>
    &nbsp;</p>
</asp:Content>

