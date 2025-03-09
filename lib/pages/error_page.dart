import 'package:flutter/material.dart';

class UiGoError extends StatelessWidget {
  final Exception? error;
  final Function()? onPressed;
  final String title;
  final String message;
  final String buttonText;

  const UiGoError({
    super.key,
    required this.error,
    this.onPressed,
    required this.title,
    required this.message,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 80,
                color: isDarkMode ? Colors.red[300] : Colors.red[700],
              ),
              const SizedBox(height: 20),
              Text(
                message,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: onPressed,
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                label: Text(buttonText,
                    style: const TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
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
