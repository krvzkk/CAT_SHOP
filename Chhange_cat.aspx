<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page.master" AutoEventWireup="true" CodeFile="Chhange_cat.aspx.cs" Inherits="Chhange_cat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style15 {
        width: 100%;
    }
    .auto-style35 {
        width: 100%;
    }
    .auto-style36 {
        width: 564px;
    }
    .auto-style37 {
        text-align: left;
    }
    .auto-style38 {
        font-family: "Bahnschrift Condensed";
        font-size: x-large;
        color: #006666;
        text-align: center;
            height: 47px;
        }
    .auto-style39 {
        font-family: "Bahnschrift Light";
        color: #9999FF;
    }
    .auto-style40 {
        font-family: "Bahnschrift Light Condensed";
        font-size: medium;
        color: #6666FF;
    }
    .auto-style41 {
        width: 564px;
        font-family: "Bahnschrift Light Condensed";
        font-size: medium;
        color: #6666FF;
    }
    .auto-style42 {
        margin-left: 0px;
        font-family: "Bahnschrift Light Condensed";
        font-size: medium;
        color: #6666FF;
    }
    .auto-style43 {
        width: 564px;
        font-family: "Bahnschrift Light Condensed";
        font-size: medium;
        color: #6666FF;
        height: 39px;
    }
    .auto-style44 {
        text-align: left;
        height: 39px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style15">
    <tr>
        <td class="auto-style38"><strong>Выберите котика, параметры которого вы хотите изменить</strong></td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style39" DataKeyNames="IDCat" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="IDCat" HeaderText="IDCat" SortExpression="IDCat" />
                    <asp:BoundField DataField="Имя" HeaderText="Имя" SortExpression="Имя" />
                    <asp:BoundField DataField="Порода" HeaderText="Порода" SortExpression="Порода" />
                    <asp:BoundField DataField="Возраст" HeaderText="Возраст" SortExpression="Возраст" />
                    <asp:BoundField DataField="Окрас" HeaderText="Окрас" SortExpression="Окрас" />
                    <asp:BoundField DataField="Характер" HeaderText="Характер" SortExpression="Характер" />
                    <asp:BoundField DataField="Пол" HeaderText="Пол" SortExpression="Пол" />
                    <asp:BoundField DataField="Размер" HeaderText="Размер" SortExpression="Размер" />
                    <asp:BoundField DataField="Фото" HeaderText="Фото" SortExpression="Фото" />
                    <asp:BoundField DataField="Цена" HeaderText="Цена" SortExpression="Цена" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CAT_SHOPConnectionString %>" SelectCommand="SELECT * FROM [Cat1]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <table class="auto-style35">
                <tr>
                    <td class="auto-style41">Введите имя</td>
                    <td class="auto-style37">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style42" Width="500px" BackColor="#FFFFCC" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">Введите породу</td>
                    <td class="auto-style37">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style42" Width="500px" BackColor="#FFFFCC"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">Введите размер</td>
                    <td class="auto-style37">
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style42" Width="500px" BackColor="#FFFFCC"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">Введите возраст</td>
                    <td class="auto-style37">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style42" Width="500px" BackColor="#FFFFCC"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">Введите окрас</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style42" Width="500px" BackColor="#FFFFCC"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style43">Введите характер</td>
                    <td class="auto-style44">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style42" Width="500px" BackColor="#FFFFCC"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">Введите цену</td>
                    <td class="auto-style37">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style42" Width="500px" BackColor="#FFFFCC"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style41">Выберите изображение</td>
                    <td class="auto-style37">
                        <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#CCFFCC" CssClass="auto-style40" />
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36">
                        <asp:Button ID="Button8" runat="server" Text="Изменить параметры котика" OnClick="Button8_Click" BackColor="#00FF99" />
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style36">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style36">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

