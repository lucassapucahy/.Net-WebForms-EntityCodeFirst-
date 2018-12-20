using Domain.Enities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data.DAO
{
    public class CategoriaDAO: AbstDAO
    {
        /// <summary>
        /// Retorna lista de categorias
        /// </summary>
        /// <returns></returns>
        public List<Categoria> Select()
        {
            return Db.Categorias.ToList();
        }

        /// <summary>
        /// Insere categoria passado por parametro.
        /// </summary>
        /// <param name="item">categoria a ser inserida.</param>
        public void Insert(Categoria categoria)
        {
            Db.Categorias.Add(categoria);
            Commit();
        }
    }
}
