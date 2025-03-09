import 'package:flutter/material.dart';

class UiGoError extends StatelessWidget {
  final Exception? error;
  final Function()? onPressed;

  const UiGoError({super.key, required this.error, this.onPressed});

  @override
  Widget build(BuildContext context) {
    // Obtener el tema actual
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icono de error
              Icon(
                Icons.error_outline,
                size: 80,
                color: isDarkMode ? Colors.red[300] : Colors.red[700],
              ),
              const SizedBox(height: 20),
              // Título del error
              Text(
                '¡Ups! Algo salió mal',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              // Mensaje de error
              // Text(
              //   error?.toString() ?? 'Error desconocido',
              //   style: theme.textTheme.bodyMedium?.copyWith(
              //     color: isDarkMode ? Colors.grey[400] : Colors.grey[700],
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              const SizedBox(height: 30),
              // Botón de refresh
              ElevatedButton.icon(
                onPressed: onPressed,
                icon: Icon(
                  Icons.refresh,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                label: const Text('Refresh'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      isDarkMode ? Colors.blue[800] : Colors.blue[500],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
