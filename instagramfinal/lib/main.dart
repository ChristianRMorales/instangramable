import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:instagramfinal/state/auth/backend/authenticator.dart';
import 'firebase_options.dart';

import 'dart:developer' as devtools show log;

extension Log on Object {
  void log() => devtools.log(toString());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        indicatorColor: Colors.blueGrey,
      ),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('homepage'),
      ),
      body: Column(children: [
        TextButton(
            onPressed: () async {
              final result = await Authenticator().loginWithGoogle();
              result.log();
            },
            child: const Text('sign in google')),
        TextButton(
            onPressed: () async {
              final result = await Authenticator().loginWithFacebook();
              result.log();
            },
            child: const Text('sign in facebook')),
      ]),
    );
  }
}
