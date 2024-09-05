import 'package:flutter/material.dart';

class StatusTransferWidget extends StatelessWidget {
  const StatusTransferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Chip(
        iconTheme: const IconThemeData(color: Colors.white),
        avatar: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF).withOpacity(0.20),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.check, color: Colors.white),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Colors.transparent),
        ),
        label: const Text('Completada'),
        backgroundColor: const Color(0xFF3AAA35),
        labelStyle: const TextStyle(color: Colors.white),
        padding: const EdgeInsets.all(5),
      ),
    );
  }
}
