import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startapp/provider/firebase_auth_provider.dart';

class SettingScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _auth = ref.watch(authServicesProvider);
    return Center(
      child: Column(
        children: [
          RaisedButton(
            onPressed: () => _auth.signOut(),
            child: Text("Logout"),
          ),
          Text(
            'Пиздуй от суда, тут ничего еще не готово!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
