import 'package:bismillah/config/colors.dart';
import 'package:bismillah/constant.dart';
import 'package:flutter/material.dart';

class Overview extends StatefulWidget {
  final String foodImage;
  final String foodName;
  final String foodKalori;
  Overview({required this.foodImage, required this.foodName, required this.foodKalori,});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  Widget bonntonNavigatorBar({
    required Color iconColor ,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
    }){
      return Expanded(
        
        child: Container(
          padding: EdgeInsets.all(20),
          color: backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 17,
                color: iconColor,
              ),
              SizedBox(width: 5,
              ),
              Text(
                title,
                style: TextStyle(
                  color: color,
                  ),
              ),
            ],
          ),
        )
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkGreyColor,
      bottomNavigationBar: Row(
        children: [
            bonntonNavigatorBar(
            backgroundColor: kPrimaryColor, 
            color:  kDarkColor, 
            iconColor: kDarkColor,
            title: "Add to Favorite", 
            iconData: Icons.favorite_outline,
            ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: kDarkColor),
        title: Text("Food Overview",
        style: TextStyle(color: kDarkColor),
        ),
      ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                ListTile(
                  title: Text(widget.foodName, style: TextStyle(color: Colors.white, fontSize: 25),),
                  subtitle: Text(widget.foodKalori, style: TextStyle(color: Colors.white),),
                ),
                Container(
                  height: 250,
                  padding: EdgeInsets.all(40),
                  child: Image.network(widget.foodImage),
                ),
              ],)
        ),
        ),
        
      Expanded(child: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Resep",
                style: TextStyle(color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 10,),
              Text("Langkah 1 \nSiapkan bahannya \nLangkah 2 \nTelur ayam kocok lepas \nLangkah 3 \nCuci bersih bawang putih dan bawang bombay. Cincang halus \nLangkah 4 \nSiapkan wadah. Masukkan daging, telur, tepung roti, lada, gula, garam, penyedap rasa dan bumbu cincang. Aduk hingga tercampur rata \nLangkah 5 \nGunakan sarung tangan/plastik. Ambil adonan daging 1-1,5 sdm lalu bulatkan dan lempengkan. Padatkan. Untuk ukuran sesuai selera ya. Ulangi hingga bahan habis \nLangkah 6 \nPanaskan 2 sdm minyak goreng di teflon. Gunakan api kecil. Panggang beef patty hingga matang kecoklatan. Bolak-balik kedua sisinya \nLangkah 7 \nCuci bersih asparagus, potong bagian pangkal yang keras. Panaskan 1 sdm minyak di teflon lalu grill asparagus dengan api kecil. Taburkan 1 jumput garam \nLangkah 8 \nTaburkan 1 jumput lada, 1 jumput bawang putih bubuk dan 1 jumput rosemary \nLangkah 9 \nBolak balik agar bumbu meresap. Grill hingga layu dan batang asparagus sudah tidak kaku. Angkat dan sisihkan. Untuk sayuran bisa juga menggunakan kentang, wortel/buncis \nLangkah 10 \nUntuk saosnya. Panaskan teflon. Masukkan 1 sdm minyak goreng. Masukkan 10 sdm saos black pepper. Tambahkan bawang bombay. Aduk rata hingga mendidih. Angkat \nLangkah 11 \nSiapkan plating. Tata daging dan asparagus. Siram daging dengan saos black pepper \nLangkah 12 \nSiap disajikan. Selamat Mencoba"
                ,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ))
      ],
    ),
    );
  }
}