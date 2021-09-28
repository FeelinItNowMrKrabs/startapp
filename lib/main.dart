import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startapp/app/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:startapp/provider/firebase_auth_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: StartApp()));
}

class StartApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firebaseAuth = ref.watch(authStateChangesProvider);
    return MaterialApp(
      home: Home(),
    );
  }
}
