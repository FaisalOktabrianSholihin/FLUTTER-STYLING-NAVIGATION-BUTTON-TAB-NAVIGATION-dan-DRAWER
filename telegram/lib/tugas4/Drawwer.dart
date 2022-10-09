import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_3/main.dart';
import 'package:flutter_application_3/tugas4/login.dart';
class DrawwerScreen extends StatefulWidget {
  

  @override
  State<DrawwerScreen> createState() => _DrawwerScreenState();
}

class _DrawwerScreenState extends State<DrawwerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
     child: ListView(
       children: <Widget>[
         UserAccountsDrawerHeader(
           accountName: Text("Faisal Oktabrian Sholihin"),
           currentAccountPicture: CircleAvatar( backgroundImage:AssetImage("image/faisal.jpg"),
           ),
           accountEmail: Text("faisalokta08@gmail.com"),
           ),
           DrawerLisTile(
             iconData : Icons.group,
             title : "Grup Baru",
             OnTilePressed: (){},
           ),
           DrawerLisTile(
             iconData : Icons.contacts,
             title : "Kontak",
             OnTilePressed: (){},
           ),
           DrawerLisTile(
             iconData : Icons.call,
             title : "Panggilan",
             OnTilePressed: (){},
           ),
           DrawerLisTile(
             iconData : Icons.contact_phone_rounded,
             title : "Pengguna Sekitar",
             OnTilePressed: (){},
           ),
           DrawerLisTile(
             iconData : Icons.bookmark,
             title : "Pesan tersimpan",
             OnTilePressed: (){},
           ),
           DrawerLisTile(
             iconData : Icons.settings,
             title : "Pengaturan",
             OnTilePressed: (){},
           ),
           DrawerLisTile(
             iconData : Icons.add_call,
             title : "Undang Teman",
             OnTilePressed: (){},
           ),
           DrawerLisTile(
             iconData : Icons.question_mark,
             title : "Fitur Telegram",
             OnTilePressed: (){},
           ),
           DrawerLisTile(
             iconData : Icons.logout,
             title : "Logout",
             OnTilePressed: (){
              Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => login()));
             },
           ),
       ],
     )
     );
  }
}

class  DrawerLisTile extends StatelessWidget {
 final IconData iconData;
 final String title;
 final VoidCallback OnTilePressed;

const DrawerLisTile({required this.iconData, required this.title, required this.OnTilePressed});
  @override
  Widget build(BuildContext context) {
  return ListTile(
    onTap: OnTilePressed,
    dense : true,
    leading: Icon(iconData),
    title: Text(title,style:TextStyle(fontSize: 16),),
  );    
  }
}
