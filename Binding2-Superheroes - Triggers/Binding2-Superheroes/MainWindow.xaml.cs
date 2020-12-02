using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Binding2_Superheroes
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        int contador = 0;
        Superheroe superheroe;
        List<Superheroe> listaSuper = Superheroe.GetSamples();

        public MainWindow()
        {
            InitializeComponent();

            Mostrar(contador);
        }

        private void Aceptar_Button_Click(object sender, RoutedEventArgs e)
        {
            superheroe = (Superheroe)this.Resources["superheroe"];
            listaSuper.Add(superheroe);
            this.Resources.Remove("superheroe");
            this.Resources.Add("superheroe", new Superheroe { Heroe=true});
            MessageBox.Show("Superheroe añadido con exito.","Superheroes", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void Limpiar_Button_Click(object sender, RoutedEventArgs e)
        {
            nombreHeroeTextBox.Text = "";
            imagenTextBox.Text = "";
            heroeRadio.IsChecked = false;
            villanoRadio.IsChecked = false;
            vengadorCheckBox.IsChecked = false;
            xmenCheckBox.IsChecked = false;

        }
        public void Mostrar(int num)
        {
            elementosTextBlock.Text = (num+1) + "/" + listaSuper.Count;

            backgroundDock.DataContext = listaSuper[num];
        }
        private void posteriorImage_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (contador < listaSuper.Count-1)
            {
                contador++;
                Mostrar(contador);
            }
        }

        private void anteriorImage_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (contador > 0)
            {
                contador--;
                Mostrar(contador);
            }
        }

        private void TabControl_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Mostrar(contador);
        }
    }
}
