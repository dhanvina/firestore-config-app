import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firestore Test'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            checkFirestoreConnection();
          },
          child: Text('Test Firestore Connection'),
        ),
      ),
    );
  }

  void checkFirestoreConnection() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      var snapshot = await firestore.collection('test-collection').get();
      if (snapshot.docs.isNotEmpty) {
        print('Firestore is connected and data fetched successfully.');
      } else {
        print('Firestore is connected but no data found.');
      }
    } catch (e) {
      print('Error connecting to Firestore: $e');
    }
  }
}
