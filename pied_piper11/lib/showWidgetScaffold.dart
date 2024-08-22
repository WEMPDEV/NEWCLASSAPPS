import 'package:flutter/material.dart';
class showWidgetScaffold extends StatelessWidget {
  const showWidgetScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar
      (title: const Text("LOGGED OUT"),
      centerTitle: true,
      backgroundColor: Colors.teal,
    ),
      backgroundColor: Colors.teal.shade600,
    );
  }
}
