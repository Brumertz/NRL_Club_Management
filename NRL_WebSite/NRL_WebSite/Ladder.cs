//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NRL_WebSite
{
    using System;
    using System.Collections.Generic;
    
    public partial class Ladder
    {
        public int LadderID { get; set; }
        public int ClubID { get; set; }
        public int Position { get; set; }
        public int Played { get; set; }
        public int Points { get; set; }
        public int Win { get; set; }
        public int Draw { get; set; }
        public int Lost { get; set; }
        public int Byes { get; set; }
        public int For { get; set; }
        public int Against { get; set; }
        public int Diff { get; set; }
    
        public virtual Club Club { get; set; }
    }
}
