using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Actividad1_ChatBot
{
    class Mensaje : INotifyPropertyChanged
    {
        private string _mensaje;

        public string MensajeU
        {
            get { return _mensaje; }
            set
            {
                _mensaje = value;
                NotifyPropertyChanged("MensajeU");
            }
        }


        private string _usuario;

        public string Usuario
        {
            get { return _usuario; }
            set
            {
                _usuario = value;
                NotifyPropertyChanged("Usuario");
            }
        }

        public Mensaje(string mensaje, string usuario)
        {
            MensajeU = mensaje;
            Usuario = usuario;
        }

        public Mensaje()
        {
        }
        public event PropertyChangedEventHandler PropertyChanged;

        public void NotifyPropertyChanged(string propertyName)
        {
            this.PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
