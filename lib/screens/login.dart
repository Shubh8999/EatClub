  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_app/resuable_widgets/bottom_navigate.dart';

  class Login extends StatefulWidget {
    const Login({Key? key}) : super(key: key);

    @override
    State<Login> createState() => _LoginState();
  }

  class _LoginState extends State<Login> {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    final scaffoldKey = new GlobalKey<ScaffoldState>();
    final formKey = new GlobalKey<FormState>();

    late String _email, _pass;

    showSnackbar() {
      var snackBar = new SnackBar(content: Text("Login Successful"));

      // scaffoldKey.currentState.showSnackbar(snackBar);
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SafeArea(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  // AppBar(
                  //   title: Align(
                  //       alignment: Alignment.topLeft,
                  //       child: Text(
                  //         'Login SignUp',
                  //         style: TextStyle(color: Colors.black),
                  //       )),
                  //   backgroundColor: Colors.white,
                  // ),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'EatClub',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      )
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      )
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (val) =>
                          !val!.contains("@") ? "Email Id is not Valid" : null,
                          onSaved: (val) => _email = val!,
                          decoration: InputDecoration(
                              icon: const Icon(Icons.email, color: Colors.black,),
                              border: OutlineInputBorder(),
                              labelText: "Email", hintText: "Enter Email"),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        TextFormField(
                          onSaved: (val) => _pass = val!,
                          validator: (val) => val!.length < 6
                              ? "Password length should be Greater than 6"
                              : null,
                          decoration: InputDecoration(
                              icon: const Icon(Icons.password, color: Colors.black,),
                              border: OutlineInputBorder(),
                              labelText: "Password", hintText: "Enter Password"),
                        ),
                        TextButton(
                          onPressed: () {
                            //forgot password screen
                          },
                          child: const Text('Forgot Password', style: TextStyle(color: Colors.black, fontSize: 16),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ElevatedButton(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 20),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                            ),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (_) => BottomNavig(),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            const Text('Does not have account?', style: TextStyle(fontSize: 16)),
                            TextButton(
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(color: Colors.black,fontSize: 20),
                              ),
                              onPressed: () {
                                //signup screen
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      );
    }
  }
