using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Cat_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        long IDU, IDCat;
        IDU = Convert.ToInt32(Session["IDU"]);//получили из сессии код контента
        IDCat = Convert.ToInt32(Session["IDC"]);//получили из сессии код котика
                                                //проверка авторизации
        if (IDU == 0)
        {
            Label9.Text = "Для покупки котика необходимо зарегироваться";
        }
        else
        {
            //пользователь авторизован, можно оформлять продажу
            //=================  бронирование
            string СтрокаПодключения = "Data Source=TANYGINAA-ZENBO; Initial Catalog=CAT_SHOP; Integrated Security=True";
            var Подключение = new SqlConnection(СтрокаПодключения);
            try
            {
                //Открытие подключения
                Подключение.Open();
            }
            catch (Exception ex1)
            {
                //Вывод в метку сообщения об ошибке
                Label9.Text = ex1.Message;
                Подключение.Close();
                return;
            }
            string sqlQ;
            sqlQ = "INSERT INTO Sale (IDCat, IDUser ) VALUES (" + IDCat + ", " + IDU + ")";
            //вывод запроса в метку(только во время отладки программы)
            Label10.Text = sqlQ;
            var Команда = new SqlCommand();
            Команда.CommandText = sqlQ;
            Команда.Connection = Подключение;

            try
            {
                //выполнение команды SQL
                Команда.ExecuteNonQuery();
                Label9.Text = "Продано";
                //++++++++++++++++++++++++++++++++++++ Получение номера договора
                //Пример запроса, получающего номер последнего (текущего) заказа
                sqlQ = "SELECT IDDogovor FROM Sale WHERE IDUser=" + IDU + " ORDER BY IDDogovor DESC";

                Команда.CommandText = sqlQ;
                Команда.Connection = Подключение;
                try
                {
                    //выполнение команды sql
                    SqlDataReader Чтение;
                    Чтение = Команда.ExecuteReader();

                    if (Чтение.Read() == true)
                    {
                        var idDog = Чтение.GetValue(0);
                        //временный вывод в метку номера продажи, только во время отладки
                        Label10.Text = Convert.ToString(idDog);
                        //все в порядке можно отобразить данные о продаже
                        //на новой странице About_Sale.aspx
                        Session["idDog"] = idDog;
                        Session["idDog"] = Session["IDC"];
                        Response.Redirect("Buy_cat.aspx");
                    }
                }
                catch (Exception ex1)
                {
                    //вывод в метку сообщения об ошибке
                    Label9.Text = ex1.Message;
                    Подключение.Close();
                    return;
                }
                //+++++++++++++++++++++++++++++++++
            }
            catch (Exception ex1)
            {
                //Вывод в метку сообщения об ошибке
                Label9.Text = ex1.Message;
                Подключение.Close();
                return;
            }
            //==================
        }//конец if
    }//конец программы


    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Find_cat.aspx");
    }

    protected void DetailsView2_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}

