import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startapp/model/user_form.dart';
import 'package:startapp/provider/firebase_auth_provider.dart';
import 'package:startapp/provider/firestore_provider.dart';
import 'package:startapp/services/firestore_database.dart';

class SettingScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _auth = ref.watch(authServicesProvider);
    final _firestore = ref.watch(firestoreProvider);
    CollectionReference thing =
        FirebaseFirestore.instance.collection('user_forms');

    return Center(
      child: Column(
        children: [
          Container(
            height: 300,
          ),
          RaisedButton(
            onPressed: () async {
              await _firestore.addUserForm(UserForm(
                  '12', 'Yousif', 'poopis', ['cunt', 'bunt'], '12931'));
              //_auth.signOut();
            },
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
