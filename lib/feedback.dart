import 'package:flutter/material.dart';

class FeedbackOverlayScreen extends StatelessWidget {
  const FeedbackOverlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'provide your feedback here!',
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 50),

          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              elevation: 30,
              backgroundColor: Colors.white,
              minimumSize: const Size(300, 300),
              foregroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            icon: const Icon(Icons.mic, size: 200),
            label: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ta to Record Feedback', // Changed label text
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
