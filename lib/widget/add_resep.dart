import 'package:bismillah/constant.dart';
import 'package:bismillah/widget/create_resep.dart';
import 'package:flutter/material.dart';

class addResep1 extends StatefulWidget {
  const addResep1({super.key});

  @override
  State<addResep1> createState() => _addResep1State();
}

class _addResep1State extends State<addResep1> {
  final _formKey = GlobalKey<FormState>();

  var name = "";
  var kalori = "";
  var image = "";
  
  final nameController = TextEditingController();
  final kaloriController = TextEditingController();
  final imageController = TextEditingController();

   @override
   void dispose(){
    nameController.dispose();
    kaloriController.dispose();
    imageController.dispose();
    super.dispose();
   }

   ClearText(){
    nameController.clear();
    kaloriController.clear();
    imageController.dispose();
   }

   addResep(){
    print("Resep Added");
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Add Resep"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: TextFormField(
                autofocus: false,
                decoration: InputDecoration(
                  labelText: 'Name: ',
                  labelStyle: TextStyle(fontSize: 20.0),
                  border: OutlineInputBorder( ),
                  errorStyle: TextStyle(
                    color: kRedColor, fontSize: 15,
                  )
                ),
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Name';
                  }
                  return null;
                } ,
              ),
            ),
           
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: TextFormField(
                autofocus: false,
                decoration: InputDecoration(
                  labelText: 'Kalori: ',
                  labelStyle: TextStyle(fontSize: 20.0),
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(
                    color: kRedColor, fontSize: 10.0,
                  ),
                ),
                controller: kaloriController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Kalori';
                  }
                  return null;
                } ,
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => create1ResepState()));
                  }, child:  Text(
                    "Create",
                    style: TextStyle(fontSize: 18.0),
                    ),
                    style: ElevatedButton.styleFrom(primary: kDarkColor),
                    ),
                     
                  // ElevatedButton(onPressed: (){
                  //   if (_formKey.currentState!.validate()){
                  //     setState((){
                  //       name = nameController.text;
                  //       image = imageController.text;
                  //       kalori = kaloriController.text;
                  //       addResep();
                  //       ClearText();
                  //     });
                  //   }
                  // }, child: Text(
                  //   "Create",
                  //   style: TextStyle(fontSize: 18.0),
                  //   ),
                  //   style: ElevatedButton.styleFrom(primary: kDarkColor),
                  //   ),
                    ElevatedButton(onPressed: () => {ClearText()}, 
                    child: Text(
                    "Reset",
                    style: TextStyle(fontSize: 18.0, ),
                    ),
                    style: ElevatedButton.styleFrom(primary: kDarkColor),
                    ),
                ],
              ),
            )
          ],
        ),
        ),
      ),
    );
  }

}