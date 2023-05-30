import 'package:flutter/material.dart';
import 'package:parking_flutter/comp/my_textfield.dart';
import 'package:parking_flutter/comp/my_button.dart';
import 'package:parking_flutter/comp/square_title.dart';
class LoginPage extends StatelessWidget{
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
    // SIGN USER in
    void signUserIn(){}
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:SafeArea(
        child :Center(

      child :Column(children:  [
         const SizedBox(height: 50),
        //Parking Logo
         Icon(Icons.local_parking_sharp,
        size: 100,
        
        ),
        const SizedBox(height: 50),


        //welcome back
      Text('Your Way To A Better Parking Expereiance',
      style: TextStyle(fontSize: 16,
      color: Color.fromRGBO(97, 97, 97, 1)),
      ),
      const  SizedBox(height:25 ),
        //user name and Password textfield
        MyTextField(
         controller: usernameController,
         hintText: 'Username',
         obsecureText: false,

        ),
        const SizedBox(height: 10),

        MyTextField(
          controller: passwordController,
          hintText: 'Password',
          obsecureText: true,
        ),
        //forgot passwrod ?
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),

        //sign in button
        MyBtn(onTap: signUserIn),
        const SizedBox(height: 50),

        
        //continue with 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0 ),
          child: Row(
            children: [
              Expanded(child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("Or Continue With",
                style: TextStyle(color: Colors.grey[700]),
                ),
              ),
              Expanded(child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              )
              )
            ],
          ),
        ),
        const SizedBox(height: 40),
        //googel or facebook login
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareTile(imagePath: 'lib/images/google.png'),
            const SizedBox(width: 25),
            SquareTile(imagePath: 'lib/images/facebook.png')
          ],
        ),
        const SizedBox(height: 20),
        //Register
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text('Dont have An Account?',style: TextStyle(color: Colors.grey[700]),),
        const SizedBox(width: 4),
        Text('Register Now',
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
  ),

],
        )


      ],
      
      )
      )
    )
    );
  }
}