//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NRL_Club_Management_WebSide
{
    using System;
    using System.Collections.Generic;
    
    public partial class Ladder
    {
        public int LadderID { get; set; }
        public int ClubID { get; set; }
        public int Position { get; set; }
        public int Points { get; set; }
        public int GamesWon { get; set; }
        public int GamesLost { get; set; }
    
        public virtual Club Club { get; set; }
    }
}