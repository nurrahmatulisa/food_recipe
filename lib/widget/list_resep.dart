import 'package:bismillah/constant.dart';
import 'package:bismillah/screen/home/product_overview.dart';
import 'package:bismillah/screen/singal_product.dart';
import 'package:flutter/material.dart';

class list1Resep extends StatefulWidget {
  const list1Resep({super.key});

  @override
  State<list1Resep> createState() => _list1ResepState();
}

class _list1ResepState extends State<list1Resep> {

   @override
   Widget _buildLuncRecipe(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Overview(
                        foodImage:
                    'https://dewailmu.id/wp-content/uploads/2018/03/makaroni.png',
                foodName: "Pasta",
                foodKalori: "120 Kalori"
                      )));
                },
                foodImage:
                    'https://dewailmu.id/wp-content/uploads/2018/03/makaroni.png',
                foodName: "Pasta",
                foodKalori: "120 Kalori",
              ),
              // SingalProduct(
              //   onTap: () {
              //     Navigator.of(context)
              //         .push(MaterialPageRoute(builder: (context) => Overview(
              //           foodImage:
              //       'https://dewailmu.id/wp-content/uploads/2018/03/makaroni.png',
              //   foodName: "Pasta",
              //   foodKalori: "120 Kalori"
              //         )));
              //   },
              //   foodImage:
              //       'https://dewailmu.id/wp-content/uploads/2018/03/makaroni.png',
              //   foodName: "Pasta",
              //   foodKalori: "120 Kalori",
              // ),
            ],
          ),
        ),
      ],
    );
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kDarkColor),
        title: Text(
          'My Resep',
          style: TextStyle(
            color: kDarkColor,
            fontSize: 17,
          ),
        ),
        backgroundColor: kAccentColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            _buildLuncRecipe(context),
          ],
        ),
      ),
    );
  }
}


