import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startapp/app/auth/auth_widget.dart';
import 'package:startapp/app/auth/login_page.dart';
import 'package:startapp/app/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:startapp/provider/firebase_auth_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: StartApp()));
}

class StartApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firebaseAuth = ref.watch(authStateChangesProvider);
    return MaterialApp(
      home: AuthWidget(
        nonSignedInBuilder: (_) => Consumer(builder: (context, watch, _) {
          return Container(
            child: LoginPage(),
          );
        }),
        signedInBuilder: (_) => Home(),
      ),
      onGenerateRoute: null,
    );
  }
}
