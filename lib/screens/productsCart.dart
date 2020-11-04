import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/models/profileModel.dart';
//import 'package:online_shop/screens/detailScreen.dart';

class ProductsCart extends StatefulWidget {
  ProductsCart() : super();
  
  @override
  _ProductsCartState createState() => _ProductsCartState();
}

class _ProductsCartState extends State<ProductsCart> {
  List<ProfileModel> models = new List<ProfileModel>();

  //@override
  //void initState() {
  //  models.add(new ProfileModel("Vlad", "Orlov", "22.10.1998", "student...", "https://sun1-94.userapi.com/54cPQ4ekBY_Pusn_FoLW1qDQMfnegodbYXa1-w/_-cTvjPgFJ8.jpg"));
  //  super.initState();
  //} Потом подчищу

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      //appBar: AppBar(
      //  title: Text("Корзина пользователя"),
      //),
      body: Column(
        children: [
          Text("Корзина пользователя"), 
          Image.network("https://aikea.by/u/2017/04/risatorp-korzina-sinij-25x26x18-sm-403-514-92-1.jpg"),
          //Placeholder(fallbackHeight: 240,),
          Text("Здесь будет корзина пользователя"),
          Text("И можно будет удалять все товары"),
          Text("А так же все приобрести"),

        ],
      ),
     
    );
  }
}