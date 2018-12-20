using Data.DAO;
using Domain.Enities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service
{
    public class CategoriaService
    {
        private CategoriaDAO categoriaDAO;

        public CategoriaService()
        {
            categoriaDAO = new CategoriaDAO();
        }

        public List<Categoria> Select()
        {
            return categoriaDAO.Select();
        }

        public void Insert(Categoria categoria)
        {
            categoriaDAO.Insert(categoria);
        }
    }
}
