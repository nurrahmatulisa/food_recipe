import 'package:bismillah/auth/sign_in.dart';
import 'package:bismillah/config/colors.dart';
import 'package:bismillah/constant.dart';
import 'package:bismillah/providers/users_provider.dart';
import 'package:bismillah/screen/home/profil.dart';
import 'package:bismillah/screen/home_screen.dart';
import 'package:bismillah/screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';


class DrawerSide extends StatefulWidget {
  UserProvider userProvider;
  DrawerSide({required this.userProvider});
  @override
  _DrawerSideState createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  Widget listTile({required String title, required IconData iconData, required Function onTap}) {
    return Container(
      height: 50,
      child: ListTile(
        // onTap: onTap(),
        leading: Icon(
          iconData,
          size: 28,
        ),
        title: Text(
          title,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var userData = widget.userProvider.currentUserData;
    return Drawer(
      child: Container(
          color: kPrimaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 43,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Welcome Ica"),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 30,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyProfile()));
                            },
                            child: Text("My Profile"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                
              ),
              listTile(iconData: Icons.home_outlined, title: 'Home',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              }, ),
              listTile(iconData: Icons.person_outlined, title: 'My Profile',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyProfile(),
                  ),
                );
              },),
              listTile(iconData: Icons.favorite_outlined, title: 'Favorite',
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              }, ),
              SizedBox(
                height: 280,
              ),
              Container(
                height: 350,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Contact Support"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Call us:"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("085812306316")
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text("Mail us:"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("contact@gmail.com")
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }}