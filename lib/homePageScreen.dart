import 'package:flutter/material.dart';
import 'package:vanillacontacts_course/contactBook.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBook = ContactBook();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade600,
        title: const Text("Vanilla Contacts"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contactBook.length,
        itemBuilder: (context, index) {
          final contact = contactBook.contact(atIndex: index);
          return ListTile(
            title: Text(contact!.name),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey.shade600,
        child: const Icon(Icons.add),
      ),
    );
  }
}
