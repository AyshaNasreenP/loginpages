import 'package:flutter/material.dart';
class report extends StatefulWidget {
  const report({super.key});

  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_left),
        title: Text("Report"),
      ),
       body: 
       
       ListView(
         children:  [
           Text("REPORT"),
           Card(
             child:ListTile(
                 leading: Icon(Icons.person),
                 title: Text("Report 1"),
                 trailing: Icon(Icons.arrow_right)
            )
           ),
           Card(
             child: ListTile(
               leading: Icon(Icons.person),
               title: Text("Report 2"),
               trailing: Icon(Icons.arrow_right),
             ),
           ),
           Text("Hello"),
           Card(
             child: ListTile(
               leading: Icon(Icons.key),
               title: ElevatedButton(onPressed: (){ }, child: Text("LOGIN")),
               trailing: Icon(Icons.arrow_right),

             ),
           )




         ],
       ),
      


      
    );
  }
}
