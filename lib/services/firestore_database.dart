import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:startapp/common/utils.dart';
import 'package:startapp/model/user_form.dart';

class FirestoreDatabase {
  final userFormRef = FirebaseFirestore.instance
      .collection('user_forms')
      .withConverter<UserForm>(
        fromFirestore: (snapshot, _) => UserForm.fromJson(snapshot.data()!),
        toFirestore: (userForm, _) => userForm.toJson(),
      );
  Future<void> addUserForm(UserForm form) async {
    userFormRef.add(form);
  }

  Future<List<QueryDocumentSnapshot<UserForm>>?> getUserForms() async {
    await userFormRef.get().then((snapshot) => snapshot.docs);
  }
}
