import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfilePage extends StatelessWidget {
  final User user;

  const ProfilePage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder<DocumentSnapshot>(
              future: FirebaseFirestore.instance.collection('users').doc(user.uid).get(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                }

                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                final userData = snapshot.data?.data() as Map<String, dynamic>?;

                if (userData == null) {
                  return const Text('No user data found');
                }

                final email = userData['email'] ?? '';
                final name = email.split('@')[0];

                return Column(
                  children: [
                    CircleAvatar(
                      child: Text(email[0]),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(20),
                      color: Colors.grey[200],
                      child: Text('Name: $name\nEmail: $email'),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
