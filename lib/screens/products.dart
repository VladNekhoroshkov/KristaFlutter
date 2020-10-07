import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/models/productModel.dart';
import 'package:online_shop/screens/detailScreen.dart';

class ProductsScreen extends StatefulWidget {
  ProductsScreen() : super();
  
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<ProductModel> models = new List<ProductModel>();

  @override
  void initState() {
    models.add(new ProductModel("Ботнки", "Почти новые", "20 usd"));
    models.add(new ProductModel("Тапки", "Драные", "3 usd"));
    models.add(new ProductModel("Берцы", "Новые", "35 usd"));
    models.add(new ProductModel("Сапоги резиновые", "Новые", "12 usd"));
    models.add(new ProductModel("Кросовки", "Потрепанные", "8 usd"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: ListView.builder(
          itemCount: models.length,
          itemBuilder: (BuildContext context, int index){
            return  ListTile(
                title: Text(models[index].title),
                leading: Icon(Icons.shop),
                subtitle: Text(models[index].subtitle),
                trailing: Text(models[index].price),
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => DetailScreen(models[index])));
                });
          }
      ),

      //body: Text("ProductsScreen"),
    );
  }
}