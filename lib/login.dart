import 'package:flutter/material.dart';
import 'package:login_signup/signup.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailcontrol = TextEditingController();
  var passwordlcontrol = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool passvis=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                padding: const EdgeInsets.all(45),
                decoration: const BoxDecoration(
                  color: Color(0xFF3C486B),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                ),
                child: const Text(
                  "LOGIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 90,
                    color: Color(0xFFF0F0F0),
                  ),

                ),
              ),
              const SizedBox(height: 50,),
              Form(
                key: formkey,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: emailcontrol,
                        keyboardType: TextInputType.emailAddress,
                        maxLength: 30,
                        decoration: InputDecoration(
                          enabled: true,
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.redAccent,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF3C486B),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:  const BorderSide(
                              color: Color(0xFF3C486B),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          labelText: "E-mail",
                          labelStyle: const TextStyle(
                            color: Color(0xFF3C486B),
                            fontSize: 25,
                          ),
                          //border: OutlineInputBorder(),
                          prefixIcon: const Icon(
                            Icons.email_outlined,
                            color: Color(0xFFF45050),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "is empty";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 50),
                      TextFormField(
                        controller: passwordlcontrol,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: passvis,
                        obscuringCharacter: '#',
                        maxLength: 20,
                        decoration: InputDecoration(
                          enabled: true,
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF3C486B),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF3C486B),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          labelText: "Password",
                          filled: true,
                          fillColor: Colors.white,
                          labelStyle: const TextStyle(
                            color: Color(0xFF3C486B),
                            fontSize: 25,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passvis = !passvis;
                              });
                            },
                            icon: Icon(
                              passvis ? Icons.visibility : Icons.visibility_off,
                              color: Color(0xFF3C486B),
                              size: 25,
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock_outline_rounded,
                            color: Color(0xFFF45050),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "is empty";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 35),
                      Container(
                        width: 150,
                        decoration:  BoxDecoration(
                          color: const Color(0xFF3C486B),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFF3C486B),width: 3),

                        ),
                        child: MaterialButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
                            },
                            child: const Text(
                              "LOGIN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            )),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don\'t have an account ",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 4,
                            height: 20,
                            color: Colors.black38,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Signup()),
                              );
                            },
                            child: const Text(
                              "Signup",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFF45050),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                        MaterialButton(
                          onPressed:(){},
                          child:const Image(
                            image: AssetImage('images/f.png',),
                            width: 45,
                          ) ,
                        ),
                        MaterialButton(
                          onPressed:(){},
                          child:const Image(
                            image: AssetImage('images/t.png',),
                            width: 45,
                          ) ,
                        ),
                        MaterialButton(
                          onPressed:(){},
                          child:const Image(
                            image: AssetImage('images/g.png',),
                            width: 45,
                          ) ,
                        ),


                      ],)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
