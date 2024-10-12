import 'package:bismillah/constant.dart';
import 'package:bismillah/screen/home/product_overview.dart';
import 'package:bismillah/screen/home_screen.dart';
import 'package:bismillah/screen/singal_product.dart';
import 'package:bismillah/widget/add_resep.dart';
import 'package:bismillah/widget/home_screen.dart';
import 'package:bismillah/widget/update_resep.dart';
import 'package:flutter/material.dart';

class create11State extends StatefulWidget {
  const create11State({super.key});

  @override
  State<create11State> createState() => _create11State();
}

class _create11State extends State<create11State> {

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
                // TableCell(child: Center(
                //   child: Text("120", style: TextStyle(
                //     fontSize: 18.0,
                //   ),),
                // )),
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
            // TableRow(
            //   children: [
            //     TableCell(child: Center(
            //       child: Text("Pasta", style: TextStyle(
            //         fontSize: 18.0,
            //       ),),
            //     )),
            //     TableCell(child: Center(
            //       child: Image.network('https://dewailmu.id/wp-content/uploads/2018/03/makaroni.png'),
            //     )),
            //     TableCell(child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         IconButton(onPressed: () => {
            //           Navigator.push(context, MaterialPageRoute(builder: (context) => updateResep()))
            //         }, icon: Icon(Icons.edit, color: Colors.orange,)),
            //         IconButton(onPressed: () => {deleteResep(1)}, icon: Icon(Icons.delete, color: kRedColor))
            //       ],
            //     ),
            //     ),
            //   ]
            // ),
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
                      .push(MaterialPageRoute(builder: (context) => HomeScreen1()));
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