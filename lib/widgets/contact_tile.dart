import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final String name, address;
  const ContactTile({Key? key, required this.name, required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        dense: true,
          title: Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            address,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
        trailing: const Icon(Icons.more_vert),
      ),
    );
  }
}
