import 'package:flutter/material.dart';
import 'package:flutter_application_3/tugas4/Drawwer.dart';
import 'package:flutter_application_3/tugas4/Models/chart_model.dart';

class Telegram extends StatefulWidget {
  @override
  State<Telegram> createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Telegram"),
      actions : <Widget>[
        Padding(padding: const EdgeInsets.all(8.0),
        child : Icon(Icons.search),
        )
      ],
      ),
      drawer: DrawwerScreen(),
      body : ListView.separated(
        itemBuilder: (ctx, i){
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage((items[i].profileUrl).toString()),
            ),
            title :Text((items[i].name).toString(),style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text((items[i].message).toString()),
            trailing: Text((items[i].time).toString()),
          );
      },
      separatorBuilder: (ctx,i){
        return Divider();
      },itemCount: items.length
      
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create, color: Colors.white),
        backgroundColor: Color.fromARGB(255, 1, 40, 73),
        onPressed: (){},
      ),
      );
  }
}
