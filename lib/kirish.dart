import 'package:darslar/currency/get_currey.dart';
import 'package:flutter/material.dart';

class Kirish extends StatefulWidget {
  const Kirish({super.key});

  @override
  State<Kirish> createState() => _KirishState();
}

class _KirishState extends State<Kirish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Work With API"),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            title: Text("Hello$index"),
          );
        }),
        itemCount: 24,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await GetCurrencyService().getCurrency();
        },
        child: const Text("GET CURRENCY"),
      ),
    );
  }
}
