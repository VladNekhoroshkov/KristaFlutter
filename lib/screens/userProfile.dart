import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/models/profileModel.dart';
//import 'package:online_shop/screens/detailScreen.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen() : super();
  
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<ProfileModel> models = new List<ProfileModel>();

  @override
  void initState() {
    models.add(new ProfileModel("Vlad", "Orlov", "22.10.1998", "student...", "https://sun1-94.userapi.com/54cPQ4ekBY_Pusn_FoLW1qDQMfnegodbYXa1-w/_-cTvjPgFJ8.jpg"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      //appBar: AppBar(
      //  title: Text("Страничка пользователя"),
      //),
      body: Column(
        children: [
          Text("Страничка пользователя"),
          Image.network("https://sun1-94.userapi.com/54cPQ4ekBY_Pusn_FoLW1qDQMfnegodbYXa1-w/_-cTvjPgFJ8.jpg"),
          //Placeholder(fallbackHeight: 240,),
          Text("Orlov Vlad"),
          Text("Дата рождения: 22.10.1998"),
          Text("Общая информация: Студент..."),

        ],
      ),
     
    );
  }
}