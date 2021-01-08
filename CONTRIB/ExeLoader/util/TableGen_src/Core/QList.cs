using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App {
    public class QList<T> {
        private List<T> _items;
        private int index;

        public int Count
        {
            get
            {
                return _items.Count;
            }
        }

        public T Last
        {
            get
            {
                return _items[index];
            }
        }

        public QList()
        {
            index = -1;
            _items = new List<T>();
        }

        public void Enqueue(T item)
        {
            _items.Add(item);
            index++;
        }

        public T Dequeue()
        {
            T i = _items[_items.Count-1];
            _items.RemoveAt(_items.Count-1);
            index--;
            return i;
        }

        public T Peek()
        {
            return _items[0];
        }
    }
}
