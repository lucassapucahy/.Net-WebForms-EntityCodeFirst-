using Domain.Enities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace Data.DAO
{
    public class ItemDAO: AbstDAO
    {
        /// <summary>
        /// Retorna lista de items em estoque
        /// </summary>
        /// <returns></returns>
        public List<Item> Select() {
            return Db.Items.Include(x => x.Categoria).ToList();
        }
        /// <summary>
        /// Insere item passado por parametro no estoque.
        /// </summary>
        /// <param name="item">Item a ser inserido.</param>
        public void Insert(Item item) {
            Db.Items.Add(item);
            Commit();
        }

        public Item GetById(int id) {
            return Db.Items.FirstOrDefault(x => x.Id == id);
        }

        public void Delete(int id) {
            Db.Items.Remove(GetById(id));
            Commit();
        }
    }
}
