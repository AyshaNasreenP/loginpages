//Now this is the Pagefor Dashboard

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/dashboard.dart';

import 'Bottomnav.dart';
class correction extends StatefulWidget {
  const correction({super.key});

  @override
  State<correction> createState() => _correctionState();
}

class _correctionState extends State<correction> {
  final _formkey =GlobalKey <FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:  Container(
          height:1000,
          //width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.jpeg"),
                fit: BoxFit.fill,

              )
          ),

          child: Column(

            children: [
              SizedBox(height: 50,),

              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage("assets/picl2.jpeg"),
                              alignment: Alignment.topCenter,
                              fit: BoxFit.fitWidth,

                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("ABC"),


                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 160,

                      decoration: BoxDecoration(
                        border: Border.all(),
                        // border: Border.all(),
                        borderRadius: BorderRadius.circular(20),


                        image: DecorationImage(image:



                        AssetImage("assets/picl2.jpeg"),
                          alignment: Alignment.topCenter,
                          fit:BoxFit.fitWidth,


                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text("ABC"),



                      ),
                    ),

                  )
                ],
              ),

              SizedBox(height: 50,),

              Container(


                  height:400,
                  width: 500,
                  decoration: BoxDecoration(


                      image: DecorationImage(
                        image: AssetImage("assets/picl1.jpg"),
                        fit: BoxFit.fill,
                      ),

                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 5,
                          sigmaY: 5),
                      child: Column(
                        children: [
                          Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                // GestureDetector(
                                //   onTap: ()
                                //   {
                                //     Navigator.push(context, MaterialPageRoute(builder: (context) => dashboard()));
                                //   },
                                //   child: CircleAvatar(
                                //     backgroundImage: AssetImage("assets/picl3.png") ,
                                //     radius: 50,
                                //   ),
                                // ),

                                CircleAvatar(
                                  backgroundImage: AssetImage("assets/picl3.png") ,
                                  radius: 50,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    validator: (value)
                                    {
                                      if(value==null || value.isEmpty || value.length<3|| !RegExp(r"^[a-z A-Z").hasMatch(value!))
                                      {
                                        return "Check Username";
                                      }
                                    },
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        labelText: "Enter your name",
                                        prefixIcon: const Icon(Icons.person)
                                    ),
                                  ),
                                ),
                                ElevatedButton(onPressed: (){
                                  if(_formkey.currentState!.validate())
                                  {
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                                    Navigator.push(context,
                                      MaterialPageRoute(builder:
                                          (context) => batomnav()),);
                                  }



                                }, child: Text("Login"))



                              ],
                            ),

                          )

                        ],
                      ),
                    ),
                  )




              ),
            ],
          ),


        ),
      )


    );
  }
}
