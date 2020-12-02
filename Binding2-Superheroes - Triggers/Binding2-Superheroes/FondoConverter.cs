using System;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Media;

namespace Binding2_Superheroes
{
    class FondoConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if ((Boolean)value == true)
            {
                return new SolidColorBrush(Colors.PaleGreen);
            }
            return new SolidColorBrush(Colors.IndianRed);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
