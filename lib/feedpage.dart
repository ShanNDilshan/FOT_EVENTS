import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  final CollectionReference organizations =
      FirebaseFirestore.instance.collection('organizations');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Organizations")),
      body: StreamBuilder(
        stream: organizations.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());

          final docs = snapshot.data!.docs;

          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context, index) {
              final data = docs[index].data() as Map<String, dynamic>;
              return Card(
                child: ListTile(
                  leading: Image.network(data['orgDp']),
                  title: Text(data['orgName']),
                  subtitle: Text(data['orgDiscription']),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
