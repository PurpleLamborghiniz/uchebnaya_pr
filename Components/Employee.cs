//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PracticSemenov.Components
{
    using System;
    using System.Collections.Generic;
    
    public partial class Employee
    {
        public int TabNumber { get; set; }
        public string Shifr { get; set; }
        public string FullName { get; set; }
        public Nullable<int> IdPost { get; set; }
        public Nullable<int> idEnginerSpeciality { get; set; }
        public Nullable<decimal> Oklad { get; set; }
        public Nullable<int> Shef { get; set; }
        public Nullable<int> Expirience { get; set; }
        public Nullable<int> IdTitle { get; set; }
    
        public virtual Cafedra Cafedra { get; set; }
        public virtual EnginerSpeciality EnginerSpeciality { get; set; }
        public virtual Post Post { get; set; }
        public virtual Title Title { get; set; }
    }
}