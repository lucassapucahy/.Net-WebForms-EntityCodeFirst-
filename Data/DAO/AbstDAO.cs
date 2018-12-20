using Data.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAO
{
    public abstract class AbstDAO
    {
        public EstoqueWebFormsContext Db { get; set; }

        public AbstDAO()
        {
            Db = new EstoqueWebFormsContext();
        }

        public void Commit() {
            Db.SaveChanges();
        }

        public void Dispose() {
            Db.Dispose();
        }
    }
}
