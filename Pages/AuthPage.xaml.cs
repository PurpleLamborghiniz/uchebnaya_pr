using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using PracticSemenov.Components;

namespace PracticSemenov.Pages
{
    /// <summary>
    /// Логика взаимодействия для AuthPage.xaml
    /// </summary>
    public partial class AuthPage : Page
    {
        public AuthPage()
        {
            InitializeComponent();
            ///BtnControl(false);
        }

        private void EnterBtn_Click(object sender, RoutedEventArgs e)
        {
            string login = LoginTb.Text.Trim();
            var User = App.db.Employee.Where(x => x.TabNumber.ToString() == login).FirstOrDefault();
            if(User != null)
            {
                if(User.IdPost == 1)
                {
                    Navigation.NextPage(new PageComponent(new CafedraList(), "Кафедры"));
                }
                else if (User.IdPost == 2)
                {
                    Navigation.NextPage(new PageComponent(new ExamList(), "Экзамены"));
                }
                else if (User.IdPost == 3)
                {
                    Navigation.NextPage(new PageComponent(new EmployeeList(), "Сотрудники"));
                }
            }
            else
            {
                Navigation.NextPage(new PageComponent(new DiciplineList(), "Дисциплина"));
            }
            
            
            
        }

        
    }
}
