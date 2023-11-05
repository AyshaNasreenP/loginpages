import 'package:flutter/material.dart';
import 'package:login/Bottomnav.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}
class _loginState extends State<login> {
  final _formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  //alignment: Alignment.center,
                  //margin: const EdgeInsets.all(80.0),
                    height: 400,
                    //width: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black12
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [

                            const CircleAvatar(
                              backgroundImage: AssetImage("assets/icon.jpeg"),radius: 50,
                            ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                                validator: (value)
                              {
                                if(value==null || value.isEmpty || value.length<3|| !RegExp(r"^[a-zA-Z ]").hasMatch(value!))
                                {
                                  return "Check Username";
                                }
                              },
                              decoration:
                              InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                labelText: "Username",
                                // hintText: "Enter Username",
                                border:OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              validator: (value){
                                if(value==null || value.isEmpty||value.length<8|| !RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value!))
                                {
                                  return "Check password";
                                }
                              },
                              decoration:  InputDecoration(
                                  prefixIcon: Icon(Icons.key),
                                  labelText:"Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  )

                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: TextButton(
                          //       onPressed: (){},
                          //       child: Text(
                          //         "Forgot password",
                          //         style: TextStyle(color: Colors.cyan),
                          //       )),
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: (){


                               if(_formkey.currentState!.validate())
                               {
                                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                                 Navigator.push(context,
                                   MaterialPageRoute(builder:
                                       (context) => batomnav()),
                                 );
                               }

                              },
                              child: const Text("Login",),

                            ),
                          ),

                        ],
                      ),
                    )
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}
