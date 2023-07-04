<%@ Page Title="" Language="C#" MasterPageFile="~/User_page.master" AutoEventWireup="true" CodeFile="Main_page.aspx.cs" Inherits="Main_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 100%;
            height: 1319px;
        }
        .auto-style14 {
            height: 106px;
        font-style: italic;
    }
        .auto-style15 {
            height: 53px;
        }
        .auto-style16 {
            height: 533px;
        }
        .auto-style17 {
            width: 100%;
            height: 519px;
        }
        .auto-style19 {
            height: 184px;
            width: 326px;
        }
        .auto-style21 {
        font-family: "Bahnschrift Light Condensed";
        color: #008080;
        font-style: normal;
        font-size: large;
        text-indent: 46px;
        line-height: 150%;
        margin-left: 20px;
        margin-right: 20px;
    }
    .auto-style22 {
        width: 100%;
    }
    .auto-style24 {
        height: 76px;
    }
    .auto-style25 {
        height: 211px;
        width: 661px;
    }
        .auto-style29 {
            font-family: "Bahnschrift SemiBold Condensed";
            color: #006699;
        }
        .auto-style32 {
            width: 326px;
            height: 98px;
        }
        .auto-style33 {
            height: 184px;
            width: 324px;
        }
        .auto-style35 {
            height: 184px;
            width: 423px;
        }
        .auto-style38 {
        height: 47px;
        width: 183px;
    }
        .auto-style51 {
        height: 73px;
    }
        .auto-style52 {
            font-size: large;
        }
        .auto-style53 {
            width: 100%;
            height: 29px;
        }
        .auto-style54 {
            height: 184px;
        }
        .auto-style58 {
            font-size: medium;
            font-family: "Bahnschrift Light";
            color: #006666;
        }
        .auto-style59 {
            width: 852px;
            height: 36px;
            text-align: right;
        }
        .auto-style62 {
            width: 1199px;
            font-size: 75px;
        }
        .auto-style63 {
            height: 33px;
            width: 1199px;
            font-size: 75px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style12" style="font-size: medium">
        <tr>
            <td class="auto-style38" style="font-family: 'Bahnschrift SemiBold'; font-size: x-large; font-weight: bold; color: #6666FF; text-align: center;">
                <asp:Label ID="Label3" runat="server" Text="Добро пожаловать в магазин котиков!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <p class="auto-style21">
                    Здесь вы окунетесь в удивительный мир милых и пушистых созданий, которые подарят вам бесконечное счастье и радость. 
                    Наш сайт является идеальным местом для всех любителей кошачьей грации и непревзойденной милоты.
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style53" style="text-align: center; font-family: 'Bahnschrift Light'; font-size: x-large; font-weight: bolder; color: #006699;">
                <asp:Label ID="Label4" runat="server" Text="Наши котики:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <table class="auto-style17" style="border-style: double">
                    <tr>
                        <td class="auto-style19" style="vertical-align: middle; text-align: center">
                            <asp:Image ID="Image3" runat="server" Height="300px" ImageUrl="~/img/Starwars/cat_chewbacca.jpeg" Width="300px" />
                        </td>
                        <td class="auto-style33" style="vertical-align: middle; text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/img/Starwars/cat_skywalker.jpeg" Width="300px" />
                        </td>
                        <td class="auto-style35" style="vertical-align: middle; text-align: center">
                            <asp:Image ID="Image4" runat="server" Height="300px" ImageUrl="~/img/Starwars/cat_veider.jpeg" Width="300px" />
                        </td>
                        <td class="auto-style54" style="vertical-align: middle; text-align: center">
                            <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl="~/img/Starwars/cat_yoda.jpeg" Width="300px" />
                        </td>
                    </tr>
                    <tr class="auto-style52">
                        <td class="auto-style19" style="vertical-align: top; text-align: center">
                            <asp:Label ID="Label5" runat="server" Text="Котик-Чубакка" CssClass="auto-style29"></asp:Label>
                        </td>
                        <td style="vertical-align: top; text-align: center" class="auto-style33">
                            <asp:Label ID="Label6" runat="server" Text="Котик-Скайвокер" CssClass="auto-style29"></asp:Label>
                        </td>
                        <td style="vertical-align: top; text-align: center" class="auto-style35">
                            <asp:Label ID="Label7" runat="server" Text="Котик-Вейдер" CssClass="auto-style29"></asp:Label>
                        </td>
                        <td style="vertical-align: top; text-align: center" class="auto-style54">
                            <asp:Label ID="Label8" runat="server" Text="Котик-Йода" CssClass="auto-style29"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style51">
                <table class="auto-style59" style="text-align: center">
                    <tr>
                        <td class="auto-style63" style="font-family: 'Bahnschrift Light Condensed'; color: #00CC99; text-align: right; white-space: normal; letter-spacing: inherit;">
                            <asp:Label ID="Label9" runat="server" Text="Не нашли подходящего котика выше?" CssClass="auto-style58"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style62" style="font-family: 'Bahnschrift Light Condensed'; color: #00CC99; text-align: right; white-space: normal; letter-spacing: inherit;">
                            <asp:Button ID="Button4" runat="server" BackColor="#66FFCC" Text="Поиск котика" Width="410px" OnClick="Button4_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Bahnschrift Light Condensed'; vertical-align: text-bottom; text-align: center">Больше о нашем магазине<br />
                <asp:Button ID="Button5" runat="server" BackColor="#CCFFFF" Text="О нас" Width="177px" OnClick="Button5_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

