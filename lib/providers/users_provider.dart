import 'package:bismillah/model/prodyc_model.dart';
import 'package:bismillah/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier{
    late UserModel userModel;
  List<UserModel> userList = [];

  get currentUserData => null;
  
  UserData() async{
    List<UserModel> newList = [];

  QuerySnapshot value =  await FirebaseFirestore.instance.collection("users").get();

  value.docs.forEach((element) { 
    print(element.data());
    userModel = UserModel(
      uid: element.get("uid"), 
      email: element.get("email"),
      Name:element.get("Name"),
      Password:element.get("Password"),
      ConfirmPassword:element.get("ConfirmPassword"),
    );
      newList.add(userModel);
      },
  );
  userList = newList;
  notifyListeners();
  }
  List<UserModel>get getUserDataList{
    return userList;
  }
}