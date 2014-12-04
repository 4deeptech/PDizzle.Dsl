using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FourDeep.PDizzle
{
    public partial class Property
    {
        //List<NameType> _nameTypeListClassParams = new List<NameType>();
        string _value = null;
        public string GetTypeValue()
        {
            return _value;
        }
        public void SetTypeValue(string value)
        {
            if (value != null)
                _value = value;
        }
    }
}
