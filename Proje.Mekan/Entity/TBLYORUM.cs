//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Proje.Mekan.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBLYORUM
    {
        public int YORUMID { get; set; }
        public string ADSOYAD { get; set; }
        public string MAIL { get; set; }
        public string YORUMBILGI { get; set; }
        public Nullable<int> YORUMMEKAN { get; set; }
    
        public virtual TBLMEKAN TBLMEKAN { get; set; }
    }
}
