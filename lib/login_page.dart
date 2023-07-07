import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text("Login Page"),
      ),


      drawer: Drawer(),
      
      body: Column(
        children: [


          Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover
          ),

          SizedBox(
            height: 20.0,
          ),


          Text("|| Swaagatam ||",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey
          )
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 52.0),
            child: Column(
              children: [
                TextFormField(
              
              decoration: InputDecoration(
                hintText: "Useername daalo",
                labelText: "Username"
              ),
            ),
          
            TextFormField(
              obscureText: true,
              autocorrect: false,
              decoration: InputDecoration(
                hintText: "Password daalo",
                labelText: "Password",
              ),
            )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('JAY SHREE RAM, Swaagat hai aapka');
            }, 
            child: Text("Login"),
            style: TextButton.styleFrom(),
            ),
        ],
      )
    ); 

    
  }
}