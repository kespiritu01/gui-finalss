import 'package:flutter/material.dart';
import 'button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 217, 240, 240),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color.fromARGB(255, 13, 13, 13),
            width: 2,
          ),
        ),
        height: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                  color: const Color.from(alpha: 1, red: 0.89, green: 0.91, blue: 0.294),
                ),
                const SizedBox(width: 8),
                MyButton(
                  text: "Cancel",
                  onPressed: onCancel,
                  color: const Color.fromARGB(255, 209, 118, 118),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}