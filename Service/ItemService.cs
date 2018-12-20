using Data.DAO;
using Domain.Enities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Service
{
    public class ItemService
    {
        private ItemDAO itemDAO;

        public ItemService()
        {
            itemDAO = new ItemDAO();
        }

        public List<Item> Select() {
            return itemDAO.Select();
        }

        public void Insert(Item item) {
            itemDAO.Insert(item);
        }

        public void Delete(int itemId)
        {
            itemDAO.Delete(itemId);
            itemDAO.Commit();
        }
    }
}
