   M S B A M L   `   `   `  ����I  EPracticLatypov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:PracticSemenov.PagesPracticSemenov.Pages  5      -    'PracticSemenov.Pages.AddEditCafedraPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:PracticSemenov.Pages     5        N� Title$  AddEditExamPage��5	      .��5      �  � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6   .+�5   
   �� $��15q�6   .+�5      �� $��30(�6   $��Center=�6&   Кафедра6L   �� 5       �� Orientation$ 
Horizontal=�6   $��10q�62   .+�5      �� $
��15 0q�6   $	��100��6*   
Шифр6<   �� 5      -   5         ��Name$ ShifrTb��5   O   $	��200��6   {�.   �� 	MaxLength$ 2��6`   ��68   �� *Shifr+6p   5      �� 5      $ 
Horizontal=�6   $��
10 0 10 10q�62   .+�5      �� $
��15 0q�6   $	��100��6*   Кафедра6?   �� 5      -   5        $ NameCafedraTb��5   W   $	��200��6   {�.  ��69   �� *NameCafedra+6p   5      �� 5      $ 
Horizontal=�6   $��
10 0 10 10q�62   .+�5      �� $
��15 0q�6   $	��100��6*   Абривиатура6C   �� 5      -   5        $ AbriviationTb��5   C   $	��200��6   {�.  ��6&   �� *Abriviation+6n   5       �� 5"      $ 
Horizontal=�6   $��
10 0 10 10q�62   .+�5#      �� $
��15 0q�6   $	��100��6*   Факультет6A   �� 5$      -   5         ��Name$ NameFacultetCb��5$   I   $	��200��6    �� DisplayMemberPath$ NameFacultet��6'   {�.  6�   5%      �� 5'      -   5         ��Name$ SaveBtn��5'   !   $��15q�6   
����i��.��6]   Сохранить6h   5)      �� 5*   
   -   5         ��Name$ DisciplineSp��5*   %   $��1��6   .+�5+      �� -   5        	 ��Name$	 CafedraDisciplineList��5+   �   $��5 15 5 7q�6   $	��380��6*   $	��Top=�67   $��Visible=�6O   
 �� View
 5,      �� 5-      P�5.      �� 5/      $��Код��6)    �� Width$ 60��66    �� DisplayMemberBinding 6A   �� *Kod+6h   �� 50      $1��+Нименование дисциплины��6-   $	 190��6M    6Y   �� *NameDiscipline+6�   �� 51      $��
Объем��6-   $ 80��6<    6G   �� *Volume+6q   �� 52      $��Шифр��6-   $ 60��6;    6F   �� *Shifr+6o   54      56      �� 58      $ 
Horizontal=�6   $��35��62   $��Center=�6>   .+�59      �� -   5        $ AddStudentBtn��59   ?   $
��10 0q�6   $��30��6'   $	��170��63   .��6u   '%Добавить дисциплину6�   �� 5:      -	   5        $ DeleteStudentBtn��5:   1   $��30��6   $	��170��6%   .��6m   %#Удалить дисциплину6�   5;      5<      5=      5>      