import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

void main() {
 
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor  : Color.fromARGB(255, 10, 66, 221)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    ),);
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password  = TextEditingController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register')
        ),
        body: Column(
          children: [
          TextField
          (
            controller: _email,
            autocorrect: false,
            enableSuggestions: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Email daal apna'
            ),
            ),
          TextField
          (
            controller: _password,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
              hintText: 'Uska password tera baap daalega ??'
            ),
            ),
          TextButton(
            onPressed: () async 
            {
              await Firebase.initializeApp(
              options: DefaultFirebaseOptions.currentPlatform, );

              final email = _email.text;
              final password = _password.text;
              final UserCredential= await FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email, 
                password: password
                );
                print(UserCredential);
            },
            child: const Text('Register'),
              ),
          ],
        ),
    );
  }
}


