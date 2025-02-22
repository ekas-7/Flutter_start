import 'package:flutter/material.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lime),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  void myMessage(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grocery Store"),
        backgroundColor: Colors.redAccent,
        titleSpacing: 30,
        toolbarHeight: 50,
        toolbarOpacity: 1,
        elevation: 10,
        actions: [
          IconButton(
            onPressed: () => myMessage("This is the home Icon", context),
            icon: const Icon(Icons.account_balance),
          ),
          IconButton(
            onPressed: () => myMessage("Yo ekas", context),
            icon: const Icon(Icons.access_alarm_outlined),
          ),
          IconButton(
            onPressed: () => myMessage("Yo agam", context),
            icon: const Icon(Icons.ac_unit_rounded),
          ),
          IconButton(
            onPressed: () => myMessage("Yo ekas 2", context),
            icon: const Icon(Icons.add_call),
          ),
        ],
      ),
    );
  }
}
