import 'package:bismillah/auth/sign_in.dart';
import 'package:bismillah/auth1/login_screen.dart';
import 'package:bismillah/constant.dart';
import 'package:bismillah/providers/product_provider.dart';
import 'package:bismillah/screen/home/drawer.dart';
import 'package:bismillah/screen/home/product_overview.dart';
import 'package:bismillah/screen/home/profil.dart';
import 'package:bismillah/screen/singal_product.dart';
import 'package:bismillah/widget/create.dart';
import 'package:bismillah/widget/drawer.dart';
import 'package:bismillah/widget/list_resep.dart';
import 'package:bismillah/widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}


class _HomeScreen1State extends State<HomeScreen1> {
late ProductProvider productProvider;

 @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.fatchDinnerProductData();
    // productProvider.fatchLunchProductData();
    super.initState();
  }
  
  Widget _buildDinnerRecipe(context) {
    // final productProvider = Provider.of<ProductProvider>(context,listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dinner Recipe',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productProvider.getDinnerProductDataList
                .map(
                  (DinnerProductDataList) {
                    return  SingalProduct(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Overview(
                    foodImage: DinnerProductDataList.foodImage,
                    foodName: DinnerProductDataList.foodName,
                    foodKalori: DinnerProductDataList.foodKalori,

                  )));
                },
                foodImage:DinnerProductDataList.foodImage,
                foodName: DinnerProductDataList.foodName,
                foodKalori:DinnerProductDataList.foodKalori,
              );
                    },
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildBreakfestRecipe(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dinner Recipe',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productProvider.getLunchProductDataList
                .map(
                  (LunchProductDataList) {
                    return  SingalProduct(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Overview(
                    foodImage: LunchProductDataList.foodImage,
                    foodName: LunchProductDataList.foodName,
                    foodKalori: LunchProductDataList.foodKalori,

                  )));
                },
                foodImage:LunchProductDataList.foodImage,
                foodName: LunchProductDataList.foodName,
                foodKalori:LunchProductDataList.foodKalori,
              );
                    },
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildLuncRecipe(context) {
    final productProvider = Provider.of<ProductProvider>(context,listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Lunch Recipe',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
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
              SingalProduct(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Overview(
                        foodImage:'https://goldenlamian.com/assets/img/items/sidedishes/menu-sidedishes-siomay.png',
                      foodName: "Siomay",
                      foodKalori: "120 Kalori",
                      )));
                },
                foodImage:
                    'https://goldenlamian.com/assets/img/items/sidedishes/menu-sidedishes-siomay.png',
                foodName: "Siomay",
                foodKalori: "120 Kalori",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Overview(
                        foodImage:
                    'https://pngimage.net/wp-content/uploads/2018/06/gado-gado-png-2.png',
                foodName: "Sate",
                foodKalori: "120 Kalori",
                      )));
                },
                foodImage:
                    'https://pngimage.net/wp-content/uploads/2018/06/gado-gado-png-2.png',
                foodName: "Sate",
                foodKalori: "120 Kalori",
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Overview(
                        foodImage:
                    'https://pngimage.net/wp-content/uploads/2018/06/gado-gado-png-2.png',
                foodName: "Sate",
                foodKalori: "120 Kalori",
                      )));
                },
                foodImage:
                    'https://pngimage.net/wp-content/uploads/2018/06/gado-gado-png-2.png',
                foodName: "Sate",
                foodKalori: "120 Kalori",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // final ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider = Provider.of(context);
    productProvider.fatchDinnerProductData();
    productProvider.fatchLunchProductData();
    return Scaffold(
      backgroundColor: kDarkGreyColor,
      drawer: DrawerSide1(

      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: kDarkColor),
        title: Text(
          'Home',
          style: TextStyle(
            color: kDarkColor,
            fontSize: 17,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: kPrimaryColor,
            child: Icon(
              Icons.search,
              size: 17,
              color: kDarkColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: kPrimaryColor,
              child: Icon(
                Icons.favorite,
                size: 17,
                color: kRedColor,
              ),
            ),
          )
        ],
        backgroundColor: kAccentColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://tse2.mm.bing.net/th?id=OIP.RqhBWdMXolpPUZ19_wb9OAHaFP&pid=Api&P=0')),
                color: kRedColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      // color: Colors.black,
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 120, bottom: 10),
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: kAccentColor,
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(50),
                                      bottomLeft: Radius.circular(50),
                                    )),
                                child: Center(
                                  child: Text(
                                    'Recipe',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                          color: kBottomColor,
                                          blurRadius: 10,
                                          offset: Offset(3, 3),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '30% ff',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'On all Food Recipe',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundButton(title: "Create Resep", 
                         onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => create11State()));
                        },),
                        
                        RoundButton(title: "My Resep", 
                         onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => list1Resep()));
                        },),]
          ),
            _buildDinnerRecipe(context),
            _buildBreakfestRecipe(context),
            _buildLuncRecipe(context),
          ],
        ),
      ),
    );
  }

}
