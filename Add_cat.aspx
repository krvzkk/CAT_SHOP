<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_page.master" AutoEventWireup="true" CodeFile="Add_cat.aspx.cs" Inherits="Add_cat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style36 {
            width: 915px;
        }
    .auto-style37 {
        text-align: left;
        width: 467px;
    }
    .auto-style38 {
        font-family: "Bahnschrift Condensed";
        font-size: large;
        color: #006666;
        text-align: center;
    }
    .auto-style39 {
        font-family: "Bahnschrift Light Condensed";
        font-size: medium;
        color: #008080;
    }
    .auto-style40 {
            width: 915px;
            font-family: "Bahnschrift Light Condensed";
            font-size: medium;
            color: #008080;
        }
    .auto-style41 {
        margin-left: 0px;
        font-family: "Bahnschrift Light Condensed";
        font-size: medium;
        color: #008080;
    }
    .auto-style42 {
        font-family: "Bahnschrift Light Condensed";
        font-size: medium;
        color: #008080;
        width: 467px;
    }
        .auto-style43 {
            font-family: "Bahnschrift Light Condensed";
            font-size: medium;
            color: #008080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style38" colspan="2"><strong>Добавить нового котика</strong></td>
    </tr>
    <tr>
        <td class="auto-style40">Введите имя</td>
        <td class="auto-style37">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style41" Width="1165px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style40">Введите пол</td>
        <td class="auto-style37">
            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style43" Width="354px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Пол" DataValueField="IDSex">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CAT_SHOPConnectionString %>" SelectCommand="SELECT * FROM [Sex]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style40">Введите породу</td>
        <td class="auto-style37">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style41" Width="1157px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style40">Введите размер</td>
        <td class="auto-style37">
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style43" Width="358px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Размер" DataValueField="IDSize">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CAT_SHOPConnectionString %>" SelectCommand="SELECT * FROM [Size]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style40">Введите возраст</td>
        <td class="auto-style37">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style41" Width="1150px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style40">Введите окрас</td>
        <td class="auto-style37">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style41" Width="1147px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style40">Введите характер</td>
        <td class="auto-style37">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style41" Width="1144px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style40">Выберите изображение</td>
        <td class="auto-style37">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style43" Width="460px" />
            <asp:Label ID="Label6" runat="server" CssClass="auto-style39"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style40">Введите цену</td>
        <td class="auto-style37">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style41" Width="1144px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style36">&nbsp;</td>
        <td class="auto-style42">
            <asp:Button ID="Button8" runat="server" BackColor="White" CssClass="auto-style43" Text="Добавить котика" OnClick="Button8_Click" Width="343px" />
            <asp:Label ID="Label4" runat="server" CssClass="auto-style39"></asp:Label>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style39"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style36">
            &nbsp;</td>
        <td class="auto-style42">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style36">
            <br />
        </td>
    </tr>
</table>
</asp:Content>

