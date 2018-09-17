using System;
using System.Data;
using System.Web;
using System.Data.SqlClient;
using System.Collections.Generic;


/// <summary>
/// Summary description for Shopping
/// This contains the dataobjects defining a CartItem and
/// a ShoppingCArt in which is maintained the list of CartItems 
/// of which the shopping cart is composed.
/// </summary>

namespace Wrox.Commerce
{
    [Serializable]
    public class CartItem
    {
        private int _productID;
        private string _productName;
        private string _productImageURL;
        private int _quantity;
        private double _price;
        private double _lineTotal;

        public void New()
        {
        }

        public void New(int ProductId, string ProductName, string ProductImageURL, int quantity, double price)
        {
            _productID = ProductId;
            _productName = ProductName;
            _productImageURL = ProductImageURL;
            _quantity = quantity;
            _price = price;
            _lineTotal = quantity * price;

        }

        public int ProductID
        {
            get
            {
                return _productID;
            }
            set
            {
                _productID = value;
            }
        }

        public string ProductName
        {
            get
            {
                return _productName;
            }
            set
            {
                _productName = value;
            }
        }
        public string ProductImageURL
        {
            get
            {
                return _productImageURL;
            }
            set
            {
                _productImageURL = value;
            }
        }
        public int Quantity
        {
            get
            {
                return _quantity;
            }
            set
            {
                _quantity = value;
            }
        }
        public double Price
        {
            get
            {
                return _price;
            }
            set
            {
                _price = value;
            }
        }
        public double LineTotal
        {
            get
            {
                return _quantity * _price;
            }
        }
    }

    [Serializable]
    public class ShoppingCart
    {
        private DateTime _dateCreated;
        private DateTime _lastUpdated;
        private List<CartItem> _items;

        public ShoppingCart()
        {
            if (this._items == null)
            {
                this._items = new List<CartItem>();
                this._dateCreated = DateTime.Now;
            }
        }

        public List<CartItem> Items
        {
            get
            {
                return _items;
            }
            set
            {
                _items = value;
            }
        }

        public void Insert(int ProductID, double Price, int Quantity, string ProductName, string ProductImageURL)
        {
            int ItemIndex = ItemIndexOfID(ProductID);
            if (ItemIndex == -1)
            {
                CartItem NewItem = new CartItem();
                NewItem.ProductID = ProductID;
                NewItem.Quantity = Quantity;
                NewItem.Price = Price;
                NewItem.ProductName = ProductName;
                NewItem.ProductImageURL = ProductImageURL;
                _items.Add(NewItem);
            }
            else
            {
                _items[ItemIndex].Quantity += 1;
            }
            _lastUpdated = DateTime.Now;
        }

        public void Update(int RowID, int ProductID, int Quantity, int Price)
        {
            CartItem Item = _items[RowID];
            Item.ProductID = ProductID;
            Item.Quantity = Quantity;
            Item.Price = Price;
            _lastUpdated = DateTime.Now;
        }

        public void DeleteItem(int RowID)
        {
            _items.RemoveAt(RowID);
            _lastUpdated = DateTime.Now;
        }

        private int ItemIndexOfID(int ProductID)
        {
            int index = 0;
            foreach (CartItem item in _items)
            {
                if (item.ProductID == ProductID)
                {
                    return index;
                }
                index += 1;
            }
            return -1;
        }

        public double Total
        {
            get
            {
                double t = 0;
                if (_items == null)
                {
                    return 0;
                }
                foreach (CartItem Item in _items)
                {
                    t += Item.LineTotal;
                }
                return t;
            }
        }
    }
}
