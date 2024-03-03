import 'package:flutter/material.dart';

void main() {
  runApp(const loginPage());
}

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //debugShowCheckedModeBanner: false;
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
        color: Color(0xFF3b5998)
    ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    body: _page(),
    ),
    ),
    );
  }

  Widget _page(){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const SizedBox(height: 150,),
              _logo(),
              const SizedBox(height: 10,),
              _inputField("Email or phone number", usernameController),
              _inputField("Password", passwordController,isPassword: true),
              const SizedBox(height: 15,),
              _loginbtn(),
              const SizedBox(height: 120,),
              _extraText("Sign Up for Facebook"),
              const SizedBox(height: 35,),
              _extraText("Need Help?")
            ],
          )
      ),
    );
  }

  Widget _logo(){
    return const Text("facebook",style: TextStyle(fontSize: 60,color: Colors.white,fontFamily: 'facebook'));
  }

  Widget _inputField(String fieldval,TextEditingController controller,{isPassword = false}){
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.white)
    );

    return TextField(
      style: const TextStyle(color: Colors.black,),
      controller: controller,
      decoration: InputDecoration(
          hintText: fieldval,
          hintStyle: const TextStyle(color: Color(0xFFb6b6b6)),
          fillColor: Colors.white,
          filled: true
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginbtn(){
    return ElevatedButton(
      onPressed: (){
        debugPrint("Username : "+usernameController.text);
        debugPrint("Password : "+passwordController.text);

      },
      child: const SizedBox(
          width: double.infinity,
          child: Text("Log In",textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Roboto-Medium',fontSize: 18,color: Colors.white),
          )),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        backgroundColor: const Color(0xFF5069a2),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget _extraText(String strval){
    return Text(strval,textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Roboto-Medium',color: Colors.white, fontSize: 17),);
  }
}

