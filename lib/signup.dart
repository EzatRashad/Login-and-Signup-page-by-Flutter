import 'package:flutter/material.dart';
import 'package:login_signup/login.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);


  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var emailcontrol = TextEditingController();
  var passwordlcontrol = TextEditingController();
  var namelcontrol = TextEditingController();
  var phonelcontrol = TextEditingController();

  var formkey = GlobalKey<FormState>();
  bool passvis=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      color: Color(0xFF3C486B),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
                  ),
                  child:  Column(children: const [
                    Text(
                      "WELCOME",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFF0F0F0),
                      ),

                    ),
                    Text(
                      "SIGNUP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFF0F0F0),
                      ),

                    ),
                    Text(
                      "NOW",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFF0F0F0),
                      ),

                    ),
                  ],)
                ),
                const SizedBox(height: 10,),
                Form(
                  key: formkey,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: namelcontrol,
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
                            labelText: "Name",
                            labelStyle: const TextStyle(
                              color: Color(0xFF3C486B),
                              fontSize: 25,
                            ),
                            //border: OutlineInputBorder(),
                            prefixIcon: const Icon(
                              Icons.person_outline,
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
                        TextFormField(
                          controller: phonelcontrol,
                          keyboardType: TextInputType.emailAddress,
                          maxLength: 11,
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
                            labelText: "Phone Number",
                            labelStyle: const TextStyle(
                              color: Color(0xFF3C486B),
                              fontSize: 25,
                            ),
                            //border: OutlineInputBorder(),
                            prefixIcon: const Icon(
                              Icons.phone,
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
                        TextFormField(
                          controller: emailcontrol,
                          keyboardType: TextInputType.emailAddress,
                          maxLength: 30,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
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
                            //fillColor: Colors.cyan,
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
                            labelStyle: const TextStyle(
                              color: Color(0xFF3C486B),
                              fontSize: 25,
                            ),
                            filled: true,
                            fillColor: Colors.white,
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
                        const SizedBox(height: 30),
                        Container(
                          width: 150,
                          decoration:  BoxDecoration(
                            color: const Color(0xFF3C486B),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0xFF3C486B),width: 3),

                          ),
                          child: MaterialButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Login(),));
                              },
                              child: const Text(
                                "SIGNUP",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Have account ",
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
                                      builder: (context) => const Login()),
                                );
                              },
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFF45050),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
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
      ),
    );
  }
}
