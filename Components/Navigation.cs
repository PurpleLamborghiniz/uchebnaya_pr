using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using PracticSemenov.Pages;

namespace PracticSemenov.Components
{   
    public class Navigation
    {
        public static MainWindow mainWindow;
        public static List<PageComponent> listPage = new List<PageComponent>();

        public static void NextPage(PageComponent pageComponent)
        {
            listPage.Add(pageComponent);
            mainWindow.MainFrame.Navigate(pageComponent.Page);
        }


        public static void BackPage()
        {
            Page page = mainWindow.MainFrame.Content as Page;
            PageComponent p = listPage.Where(x => x.Page == page).FirstOrDefault() as PageComponent;
            if (p.NamePage != "Экзамены" && p.NamePage != "Дисциплина" && p.NamePage != "Кафедры" && p.NamePage != "Сотрудники")
                mainWindow.MainFrame.GoBack();

        }

        public static void ClearHistory()
        {
            listPage = null;
        }
    }

    public class PageComponent
    {

        public Page Page { get; set; }
        public string NamePage { get; set; }

        public PageComponent(Page _page, string _namePage)
        {
            Page = _page;
            NamePage = _namePage;
        }
    }
}
