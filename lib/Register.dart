import 'package:flutter/material.dart';
import 'package:myapplictn/login.dart';
// void main(){
//   runApp(MaterialApp(home: Register(),));
// }
class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            margin: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                header(context),
                inputfile(context),
                login(context),
              ],
            ),
          ),



        ));
  }
  header(context){
    return const Column(
      children: [
        Text("Signup",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Color.fromRGBO(26, 26,0,  1))),
        // Text("Create an Account",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600)),

      ],
    );
  }
  inputfile(context){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CircleAvatar(
          backgroundColor: Colors.green[800],
          radius: 60,
          child: Image.network("https://imagedelivery.net/5MYSbk45M80qAwecrlKzdQ/c4e32576-626f-496d-9a8c-01118f26b300/thumbnail?v=2023101215"),

        ),
        SizedBox(height: 20,),
        TextField( decoration: InputDecoration(
          hintText: "Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
            prefixIcon: Icon(Icons.person)
        ),),
        SizedBox(height: 10,),
        TextField( decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.email_outlined)
        ),),SizedBox(height: 10,),
        TextField( decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.lock_outline),
            suffixIcon: Icon(Icons.remove_red_eye_sharp)
        ),),SizedBox(height: 10,),
        TextField( decoration: InputDecoration(
            hintText: "Conform password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25)
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.lock_outline),
          suffixIcon: Icon(Icons.remove_red_eye_sharp)
        ),),
        SizedBox(height: 30,),

        ElevatedButton(onPressed: (){}, child: Text("Signup",style: TextStyle(fontSize: 20),),
          style: ElevatedButton.styleFrom(shape: StadiumBorder(),backgroundColor: Color.fromRGBO(24, 96,73, 1),
            padding: EdgeInsets.symmetric(vertical: 16),),

        )
      ],);
  }
  login(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(" already have an account"),
        TextButton(onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogingPage()));

        },
            child: Text('Login'))
      ],
    );
  }

}
