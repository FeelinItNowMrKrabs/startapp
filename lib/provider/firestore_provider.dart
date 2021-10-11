import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startapp/services/auth_service.dart';
import 'package:startapp/services/firestore_database.dart';

final firestoreProvider =
    Provider<FirestoreDatabase>((ref) => FirestoreDatabase());
