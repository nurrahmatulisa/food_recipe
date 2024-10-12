import 'package:bismillah/model/prodyc_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier{
    late ProductModel productModel;

//////////////////////dinnerProduct/////////////////////
  List<ProductModel> dinnerProductList = [];
  
  fatchDinnerProductData() async{
    List<ProductModel> newList = [];

  QuerySnapshot value =  await FirebaseFirestore.instance.collection("DinnerProduct").get();

  value.docs.forEach((element) { 
    print(element.data());
    productModel = ProductModel(
      foodName: element.get("foodName"), 
      foodImage: element.get("foodImage"),
      foodKalori:element.get("foodKalori"),
      );  
      newList.add(productModel);
      },
  );
  dinnerProductList = newList;
  notifyListeners();
  }

  List<ProductModel>get getDinnerProductDataList{
    return dinnerProductList;
  }

  //////////////////////lunchProduct/////////////////////
  List<ProductModel> lunchProductList = [];
  
  fatchLunchProductData() async{
    List<ProductModel> newList = [];

  QuerySnapshot value =  await FirebaseFirestore.instance.collection("LunchProduct").get();

  value.docs.forEach((element) { 
    print(element.data());
    productModel = ProductModel(
      foodName: element.get("foodName"), 
      foodImage: element.get("foodImage"),
      foodKalori:element.get("foodKalori"),
      );  
      newList.add(productModel);
      },
  );
  lunchProductList = newList;
  notifyListeners();
  }

  List<ProductModel>get getLunchProductDataList{
    return lunchProductList;
  }

}