import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Message')
      ),
      body: const Center(
        child: Text('Message Screen'),
      ),
    
    );
  }
}