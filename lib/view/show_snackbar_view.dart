import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShowSnackbarView extends StatefulWidget {
  const ShowSnackbarView({super.key});

  @override
  State<ShowSnackbarView> createState() => _ShowSnackbarViewState();
}

class _ShowSnackbarViewState extends State<ShowSnackbarView> {
  _showSnackbar() {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      backgroundColor: Colors.green,
      content: Text('You have been logged out'),
      duration: Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
    )
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: () => _showSnackbar(), child: const Text('Show SnackBar')),
          ElevatedButton(onPressed: () => _showSnackbar(), child: const Text('Show SnackBar')),
        ],
      )
    );
  }
}