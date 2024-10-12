import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddResepPage extends StatefulWidget {
  AddResepPage({Key? key}) : super(key: key);

  @override
  _AddResepPageState createState() => _AddResepPageState();
}

class _AddResepPageState extends State<AddResepPage> {
  final _formKey = GlobalKey<FormState>();

  var name = "";
  var kalori = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final nameController = TextEditingController();
  final kaloriController = TextEditingController();
  
  get resep => null;

  @override
  void dispose() {
    nameController.dispose();
    kaloriController.dispose();
    super.dispose();
  }

  clearText() {
    nameController.clear();
    kaloriController.clear();
  }

  // Adding Resep
  CollectionReference Resep =
      FirebaseFirestore.instance.collection('resep');

  Future<void> addResep() {
    return resep
        .add({'name': name, 'kalori': kalori});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Resep"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Name: ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Name';
                    }
                    return null;
                  },
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
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: kaloriController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Kalori';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            name = nameController.text;
                            kalori = kaloriController.text;
                          });
                        }
                      },
                      child: Text(
                        'Create',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {clearText()},
                      child: Text(
                        'Reset',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
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
