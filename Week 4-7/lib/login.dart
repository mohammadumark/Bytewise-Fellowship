import 'package:flutter/material.dart';
import 'package:login/Forgotpwd.dart';
import 'package:login/Signup.dart';
import 'package:login/chat.dart';
import 'package:login/homepage.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child:
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/Login.jpg'),fit: BoxFit.fill)
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 480,
                      width: 325,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  [
                          const SizedBox(height: 28,),
                          const Text('Login',
                            style: TextStyle(
                              color: Colors.black,fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),),
                          const SizedBox(height: 12,),
                          const Text('',
                            style: TextStyle(
                              color: Colors.black,fontSize: 8,
                            ),),
                          const SizedBox(height: 25,),
                          Container(
                            width: 250,
                            child: const TextField(
                              decoration: InputDecoration(
                                  labelText: 'MobileNo or email',
                                  labelStyle: TextStyle(fontSize: 14),
                                  prefixIcon: Icon(Icons.person, size: 14,)

                              ),
                            ),
                          ),
                          Container(
                            width: 250,
                            child: const TextField(
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(fontSize: 14),
                                  prefixIcon: Icon(Icons.lock,size: 14,)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 40, 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(builder:
                                          (context)=>ForgetPasswordScreen()),
                                    );
                                  },
                                  child: Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      color: Colors.orangeAccent[700],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => ChattingAppHomeScreen()) ,
                              );
                            },
                            child:Container(
                                alignment: Alignment.center,
                                width: 250,
                                decoration: BoxDecoration(
                                  color:
                                  Colors.green,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text('Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),)
                            ),

                          ) ,
                          const SizedBox(height: 20,),
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => Signup()) ,
                              );
                            },
                            child:Container(
                                alignment: Alignment.center,
                                width: 250,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.green
                                  ),
                                  color:
                                  Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text('Create new account',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),)
                            ),

                          ) ,



                        ],

                      ),
                    ),
                  )


                ],
              ),
            ),
          ) //   // ),
      ), // ),
    );

  }
}