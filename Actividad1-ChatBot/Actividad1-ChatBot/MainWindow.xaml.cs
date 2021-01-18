using Microsoft.Win32;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Actividad1_ChatBot
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ObservableCollection<Mensaje> lista = new ObservableCollection<Mensaje>();
        public MainWindow()
        {
            InitializeComponent();
            listItemsControl.DataContext = lista;
        }

        private void CommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            MessageBox.Show("Conexión correcta con el servidor del Bot", "Comprobar conexión",MessageBoxButton.OK,MessageBoxImage.Information);
        }

        private void CommandBinding_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = true;
        }

        private void CommandBinding_Executed_Borrar(object sender, ExecutedRoutedEventArgs e)
        {
            lista.Clear();      
        }

        private void CommandBinding_CanExecute_CanBorrar(object sender, CanExecuteRoutedEventArgs e)
        {
            if (lista.Count > 0)
            {
                e.CanExecute = true;
            } else
            {
                e.CanExecute = false;
            }   
        }
        private void CommandBinding_Executed_Guardar(object sender, ExecutedRoutedEventArgs e)
        {
            string conversacion = "";
            for (int i = 0; i < lista.Count; i++)
            {
                conversacion += lista[i].Usuario + ":"+lista[i].MensajeU+"\n";
            }
            
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "Text file (*.txt)|*.txt|C# file (*.cs)|*.cs";
            
            if (saveFileDialog.ShowDialog() == true)
            {
                File.WriteAllText(saveFileDialog.FileName, conversacion);
            }
        }

        private void CommandBinding_CanExecute_Guardar(object sender, CanExecuteRoutedEventArgs e)
        {
            if (lista.Count > 0)
            {
                e.CanExecute = true;
            } else
            {
                e.CanExecute = false;
            }
        }
        private void CommandBinding_Executed_Salir(object sender, ExecutedRoutedEventArgs e)
        {
            App.Current.Shutdown();
        }

        private void CommandBinding_CanExecute_Salir(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = true;
        }

        private void CommandBinding_CanExecute_Enviar(object sender, CanExecuteRoutedEventArgs e)
        {
            if (mensajeTextBox != null && mensajeTextBox.Text != "")
            {
                e.CanExecute = true;
            } else
            {
                e.CanExecute = false;
            }
            
        }

        private void CommandBinding_Executed_Enviar(object sender, ExecutedRoutedEventArgs e)
        {
            Mensaje usuario = new Mensaje(mensajeTextBox.Text, "Usuario");
            Mensaje robot = new Mensaje("Lo siento, estoy un poco cansado para hablar", "Robot");

            lista.Add(usuario);
            lista.Add(robot);

            mensajeTextBox.Text = "";
            barraScroll.ScrollToEnd();
        }
    }
}
