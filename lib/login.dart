

import 'package:flutter/material.dart';
import 'package:myapplictn/Register.dart';
void main(){
  runApp(MaterialApp(home: LogingPage(),));
}

class LogingPage extends StatelessWidget {
  const LogingPage({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Container (
            margin: const EdgeInsets.all(24),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                header(context),
                inputField(context),
                // forgotpassword(context),
                Signup(context),
              ],
            ),
          ),
        )

    );
  }
  header(context){
    return const Column(
      children: [
        Text("Welcome Back",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 26,0, 1))),
        SizedBox(height: 2,),
        Text("Enter Your Credential to login",style: TextStyle(color: Color.fromRGBO(26, 26,0, 1),))
      ],
    );
  }

  inputField(context){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.person,color:Color.fromRGBO(26, 26,0, 1))
          ),
        ),
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
              hintText: "password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
              ),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.lock_outline_rounded,color:Color.fromRGBO(26, 26,0, 1)),
            suffixIcon: Icon(Icons.remove_red_eye_sharp,color:Color.fromRGBO(26, 26,0, 1))
          ),
          obscureText: true,
        ),
        SizedBox(height: 20,),
        ElevatedButton(

          onPressed: (){},
          child: Text('Login',style: TextStyle(fontSize: 20),),
          style: ElevatedButton.styleFrom(shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Color.fromRGBO(24, 96,73, 1)
          ),

        ),
        SizedBox(height: 15,),
    TextButton(onPressed: (){},
    child: Text("forgot a password"))
      ],
    );
  }
  Signup(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        const Text("Dont have a account"),
        TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Register()));

        },
            child: Text('SingUp'))
      ],
    );
  }
}
