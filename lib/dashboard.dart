import 'dart:ui';

import 'package:flutter/material.dart';
class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
        //height: double.infinity,
        //width: double.infinity,
        decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/bg.jpeg"),
          fit: BoxFit.fill,
          
        ) 
        ),

        child: Column(

          children: [
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Container(
                          height: 120,
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
                        height: 120,
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
            ),

            Container(

              height: 300,
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

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage("assets/picl3.png") ,
                                  radius: 50,
                                ),
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

                              }, child: Text("Login"))
                            ],
                          ),
                        ),
              )




            ),
      ],
      ),


    ),
    );
  }
}
