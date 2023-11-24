using System;
using System.Collections.Generic;
using System.Data;
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
using PracticSemenov.Windows;

namespace PracticSemenov.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddEditExamPage.xaml
    /// </summary>
    public partial class AddEditEmployeePage : Page
    {
        private Employee employee;
        public AddEditEmployeePage(Employee _employee)
        {
            InitializeComponent();
            employee = _employee;
            this.DataContext = employee;
            NameCafedraCb.ItemsSource = App.db.Cafedra.ToList();
            NameCafedraCb.SelectedItem = employee.Cafedra;
            NamePostCb.ItemsSource = App.db.Post.ToList();
            NamePostCb.SelectedItem = employee.Post;
            ShefCb.ItemsSource = App.db.Employee.ToList();
            ShefCb.SelectedItem = App.db.Employee.Where(x => x.TabNumber == employee.Shef).FirstOrDefault() as Employee;
            NameTitleCb.ItemsSource = App.db.Title.ToList();
            NameTitleCb.SelectedItem = employee.Title;
            EnginerSpecialityCb.ItemsSource= App.db.EnginerSpeciality.ToList();
            EnginerSpecialityCb.SelectedItem = employee.EnginerSpeciality;
            PostSelect();
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            string StringData = TabNumberTb.Text;
            bool result = true;
            StringBuilder error = new StringBuilder();
            foreach(char a in StringData)
            {
                if (Char.IsDigit(a) == false)
                {
                    error.AppendLine("В табельный номер можно ввести только цифры");
                    result = false;
                }
                    
            }
            if (result)
            {
                int TabNum1 = Convert.ToInt32(StringData);
                if(TabNum1 > 99999 || TabNum1 < 0)
                    error.AppendLine("В табельный номер должен быть не меньше 0 и не больше 99999");
            }
            if (error.Length > 0)
            {
                MessageBox.Show(error.ToString());
                return;
            }

            if (FullNameTb.Text == "" || FullNameTb.Text == null)
                error.AppendLine("У сотрудника должна быть фамилия");
            if (error.Length > 0)
            {
                MessageBox.Show(error.ToString());
                return;
            }

            if (NamePostCb.SelectedItem == null)
                error.AppendLine("У сотрудника должна быть выбрана должность");
            if (error.Length > 0)
            {
                MessageBox.Show(error.ToString());
                return;
            }

            string input = OkladTb.Text;
            int index = input.IndexOf(".");
            if (index >= 0)
                input = input.Substring(0, index);



            if (error.Length > 0)
            {
                MessageBox.Show(error.ToString());
                return;
            }

            if(ExpirienceTb.Text != "")
            {
                StringData = ExpirienceTb.Text;
                foreach (char a in StringData)
                {
                    if (Char.IsDigit(a) == false)
                    {
                        error.AppendLine("В стаж можно ввести только цифры");
                        result = false;
                    }

                }
                if (result)
                {
                    int TabNum1 = Convert.ToInt32(StringData);
                    if (TabNum1 > 99 || TabNum1 < 0)
                        error.AppendLine("В стаж должен быть не меньше 0 и не больше 99");
                }
                if (error.Length > 0)
                {
                    MessageBox.Show(error.ToString());
                    return;
                }
            }
            var _employee = App.db.Employee.Where(x => x.TabNumber == employee.TabNumber).FirstOrDefault();
            
            if (ExpirienceTb.Text.Trim() == "")
            {
                MessageBox.Show("Поле 'Стаж' должно быть обязательно заполнено.");
                return;
            }
            
            else if(_employee != null)
            {
                
                if (_employee != null)
                {
                    _employee.TabNumber = Convert.ToInt32(TabNumberTb.Text);
                    Cafedra cafedra = NameCafedraCb.SelectedItem as Cafedra;
                    _employee.Shifr = (cafedra == null ? null : cafedra.Shifr);
                    _employee.FullName = FullNameTb.Text;
                    _employee.IdPost = (NamePostCb.SelectedItem as Post).IdPost;
                    EnginerSpeciality en = EnginerSpecialityCb.SelectedItem as EnginerSpeciality;
                    if (en != null)
                        _employee.idEnginerSpeciality = en.idEnginerSpeciality;
                    _employee.Oklad = Convert.ToDecimal(OkladTb.Text);
                    Employee _em = ShefCb.SelectedItem as Employee;
                    if (_em != null)
                        _employee.Shef = _em.Shef;
                    if (ExpirienceTb.Text != "")
                        _employee.Expirience = Convert.ToInt32(ExpirienceTb.Text);
                    Title title = NameTitleCb.SelectedItem as Title;
                    if (title != null)
                        _employee.IdTitle = title.IdTitle;
                    MessageBox.Show("Запись успешно сохранена");
                    App.db.SaveChanges();
                    Navigation.NextPage(new PageComponent(new EmployeeList(), "Сотрудники"));
                }

            }
            else
            {
                employee.TabNumber = Convert.ToInt32(TabNumberTb.Text);
                Cafedra cafedra = NameCafedraCb.SelectedItem as Cafedra;
                employee.Shifr = (cafedra == null? null : cafedra.Shifr);
                employee.FullName = FullNameTb.Text;
                employee.IdPost = (NamePostCb.SelectedItem as Post).IdPost;
                EnginerSpeciality en = EnginerSpecialityCb.SelectedItem as EnginerSpeciality;
                if(en != null)
                    employee.idEnginerSpeciality = en.idEnginerSpeciality;
                employee.Oklad = Convert.ToInt32(OkladTb.Text);
                Employee _em = ShefCb.SelectedItem as Employee;
                if (_em != null)
                    employee.Shef = _em.Shef;
                if (ExpirienceTb.Text != "")
                    employee.Expirience = Convert.ToInt32(ExpirienceTb.Text);
                Title title = NameTitleCb.SelectedItem as Title;
                if (title != null)
                    employee.IdTitle = title.IdTitle;
                App.db.Employee.Add(employee);
                App.db.SaveChanges();
                MessageBox.Show("Запись сохранена");
                Navigation.NextPage(new PageComponent(new EmployeeList(), "Сотрудники"));

            }
            

        }

        private void NamePostCb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            PostSelect();
        }
        private void PostSelect()
        {
            Post post = NamePostCb.SelectedItem as Post;
            if(post != null)
            {
                if (post.IdPost == 1)
                    ExpirienceSp.Visibility = Visibility.Visible;
                else
                    ExpirienceSp.Visibility = Visibility.Collapsed;


                if (post.IdPost == 2)
                    NameTitleSp.Visibility = Visibility.Visible;
                else
                    NameTitleSp.Visibility = Visibility.Collapsed;


                if (post.IdPost == 3)
                    EnginerSpecialitySp.Visibility = Visibility.Visible;
                else
                    EnginerSpecialitySp.Visibility = Visibility.Collapsed;
            }
            
        }
    }
}
