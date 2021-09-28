import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:startapp/provider/firebase_auth_provider.dart';
import 'package:startapp/provider/login_page_provider.dart';

class LoginPage extends ConsumerWidget {
  void updateEmail(WidgetRef ref, String email) {
    ref.read(emailProvider).state = email;
  }

  void updatePassword(WidgetRef ref, String password) {
    ref.read(passwordProvider).state = password;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = ref.watch(emailProvider).state;
    final password = ref.watch(passwordProvider).state;
    final _auth = ref.watch(authServicesProvider);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          TextField(
            onChanged: (value) => updateEmail(ref, value),
            decoration: InputDecoration(
              hintText: 'Email',
            ),
          ),
          TextField(
            onChanged: (value) => updatePassword(ref, value),
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
          RaisedButton(
            onPressed: () {
              if (email != null && password != null) {
                _auth.signIn(email: email, password: password);
              }
            },
            child: Text('Sign-in'),
          ),
          RaisedButton(
            onPressed: () {
              if (email != null && password != null) {
                _auth.register(email: email, password: password);
              }
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}
