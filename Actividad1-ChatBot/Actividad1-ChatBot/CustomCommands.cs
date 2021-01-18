using System.Windows.Input;

namespace Actividad1_ChatBot
{
    class CustomCommands
    {
        public static readonly RoutedUICommand Comprobar = new RoutedUICommand
            (
                "Comprobar",
                "Comprobar",
                typeof(CustomCommands),
                new InputGestureCollection()
                {
                    new KeyGesture(Key.O, ModifierKeys.Control)
                }
            );
        public static readonly RoutedUICommand BorrarConversacion = new RoutedUICommand
            (
                "BorrarConversacion",
                "BorrarConversacion",
                typeof(CustomCommands),
                new InputGestureCollection()
                {
                    new KeyGesture(Key.N, ModifierKeys.Control)
                }
            );
        public static readonly RoutedUICommand GuardarConversacion = new RoutedUICommand
            (
                "Guardar",
                "Guardar",
                typeof(CustomCommands),
                new InputGestureCollection()
                {
                    new KeyGesture(Key.G, ModifierKeys.Control)
                }
            );
        public static readonly RoutedUICommand Salir = new RoutedUICommand
            (
                "Salir",
                "Salir",
                typeof(CustomCommands),
                new InputGestureCollection()
                {
                    new KeyGesture(Key.S, ModifierKeys.Control)
                }
            );
        public static readonly RoutedUICommand Enviar = new RoutedUICommand
            (
                "Enviar",
                "Enviar",
                typeof(CustomCommands),
                null
            );
    }
}
