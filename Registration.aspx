<%@ Page Title="" Language="C#" MasterPageFile="~/User_page.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        width: 100%;
        height: 502px;
    }
    .auto-style11 {
        width: 366px;
    }
    .auto-style12 {
        width: 420px;
    }
    .auto-style14 {
        width: 522px;
        height: 83px;
    }
    .auto-style15 {
        height: 83px;
    }
    .auto-style16 {
        font-family: "Bahnschrift Light SemiCondensed";
        font-size: large;
        color: #FFFFFF;
    }
        .auto-style17 {
            font-family: "Bahnschrift Light Condensed";
            color: #008080;
            text-transform: uppercase;
            text-decoration: overline;
        }
        .auto-style18 {
        width: 422px;
        font-size: medium;
        color: #008080;
        text-transform: uppercase;
        text-decoration: overline;
        font-family: "Bahnschrift Light Condensed";
    }
        .auto-style19 {
            width: 522px;
            font-size: 75px;
        }
        .auto-style20 {
        width: 422px;
        font-size: medium;
        color: #FFFFFF;
        text-transform: uppercase;
        text-decoration: overline;
        font-family: "Bahnschrift Light SemiCondensed";
    }
        .auto-style21 {
            width: 422px;
            height: 83px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
    <tr>
        <td class="auto-style18" style="border-style: none; text-align: right; font-variant: normal;">
            <asp:Label ID="Label8" runat="server" Text="Логин    :"></asp:Label>
        </td>
        <td class="auto-style19">
            <asp:TextBox ID="TextBox1" runat="server" BackColor="#009999" ForeColor="White" Height="48px" Width="391px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="Ввод логина обязателен"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style18" style="border-style: none; text-align: right; font-variant: normal;">
            <asp:Label ID="Label9" runat="server" Text="Email    :"></asp:Label>
        </td>
        <td class="auto-style19">
            <asp:TextBox ID="TextBox2" runat="server" BackColor="#009999" ForeColor="White" Height="48px" Width="391px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="Ввод email обязателен"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="Не верен формат email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style18" style="border-style: none; text-align: right; font-variant: normal;">
            <asp:Label ID="Label10" runat="server" Text="Пароль    :"></asp:Label>
        </td>
        <td class="auto-style19">
            <asp:TextBox ID="TextBox3" runat="server" BackColor="#009999" ForeColor="White" Height="48px" Width="391px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" EnableClientScript="False" ErrorMessage="Ввод пароля обязателен"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style21" style="border-style: none; text-align: right; font-variant: normal;">
            <asp:Label ID="Label11" runat="server" Text="Подтверждение пароля    :" CssClass="auto-style17"></asp:Label>
        </td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox4" runat="server" BackColor="#009999" ForeColor="White" Height="48px" Width="391px"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="Пароль не совпадает"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style20">&nbsp;</td>
        <td class="auto-style19">
            <asp:Button ID="Button4" runat="server" BackColor="#66CCFF" CssClass="auto-style16" Text="Зарегестрироваться" Width="393px" OnClick="Button4_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20">
            <asp:Label ID="Label12" runat="server" ForeColor="#66CCFF"></asp:Label>
        </td>
        <td class="auto-style19">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style20">
            <asp:Label ID="Label13" runat="server" ForeColor="#66CCFF"></asp:Label>
        </td>
        <td class="auto-style19">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

