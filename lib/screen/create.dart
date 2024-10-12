import 'package:bismillah/constant.dart';
import 'package:bismillah/screen/home/product_overview.dart';
import 'package:bismillah/screen/home_screen.dart';
import 'package:bismillah/screen/singal_product.dart';
import 'package:bismillah/widget/add_resep.dart';
import 'package:bismillah/widget/update_resep.dart';
import 'package:flutter/material.dart';

class create1State extends StatefulWidget {
  const create1State({super.key});

  @override
  State<create1State> createState() => _create1State();
}

class _create1State extends State<create1State> {

    deleteResep(id){
    print("Resep Deleted $id");
  }
@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: kPrimaryColor,
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('List Resep', style: TextStyle(color: kDarkColor),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => addResep1()));
            }, 
            child: Text('Add', style: TextStyle(fontSize: 20.0),),
            style: ElevatedButton.styleFrom(primary: kDarkColor),
            )
          ],
        ),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, 
          child: Table(border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth> {
            1: FixedColumnWidth(140),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                TableCell(child: Container(
                  color: kPrimaryColor,
                  child: Center(
                    child: Text ("Name",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
                ),
                TableCell(child: Container(
                  color: kPrimaryColor,
                  child: Center(
                    child: Text ("Kalori",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
                ),
                TableCell(child: Container(
                  color: kPrimaryColor,
                  child: Center(
                    child: Text ("Action",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(child: Center(
                  child: Text("Pasta", style: TextStyle(
                    fontSize: 18.0,
                  ),),
                )),
                TableCell(child: Center(
                  child: Text("120 Kalori", style: TextStyle(
                    fontSize: 18.0,
                  ),),
                )),
                TableCell(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => updateResep1()))
                    }, icon: Icon(Icons.edit, color: Colors.orange,)),
                    IconButton(onPressed: () => {deleteResep(1)}, icon: Icon(Icons.delete, color: kRedColor))
                  ],
                ),
                ),
              ]
            ),
          ],
          ),
        ),
        ),
        Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => HomeScreen()));
                  }, child:  Text(
                    "Home",
                    style: TextStyle(fontSize: 18.0),
                    ),
                    style: ElevatedButton.styleFrom(primary: kDarkColor),
                    ),
                ],
              ),
            ),
        ],
      ),
    ),
  
  );
}
}