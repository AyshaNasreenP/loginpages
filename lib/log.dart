import 'package:flutter/material.dart';
class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {

  final _formkey =  GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(

                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                validator: (value){
                  if( value==null || value.isEmpty ||  value.length<3 || !RegExp(r'^[a-zA-Z ]+$').hasMatch(value!)){
                    return "Check your Name";
                  }
              }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                validator: (value){
                  if(value==null || value.isEmpty || value.length<9|| !RegExp(r'(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)').hasMatch(value!))
                    {
                        return "Check you Password";
                    }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                validator: (value){
                  if(value==null||value.isEmpty||value.length!=10|| !RegExp(r'[0-9 ]$').hasMatch(value!))
                  {
                          return "Check you mobile number";
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                validator: (value){
                  if( value==null || value.isEmpty || !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!))
                  {
                    return "Check you email";
                  }
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Phone number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
                validator: (value){
                  if(value==null||value.isEmpty|| !RegExp(r'^[0-9]+$').hasMatch(value!))
                  {
                    return "Check you mobile number";
                  }
                },
              ),
            ),






            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (

                  ){
                if(_formkey.currentState!.validate())
                {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Ok")));
                }
              },
                  child: Text("Login")),
            ),


          ],
        ),

      ),
    );

  }
}
