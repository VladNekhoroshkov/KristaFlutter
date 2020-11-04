import 'package:flutter/material.dart';
import 'package:online_shop/models/productModel.dart';

class DetailScreen extends StatefulWidget {
  final ProductModel model;
  DetailScreen(this.model) : super();

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.model.title),
      ),
      body: Column(
        children: [
          Image.network(widget.model.imgUrl),
          //Placeholder(fallbackHeight: 240,),
          Text(widget.model.subtitle),
          Text(widget.model.info),
        ],
      ),
    );
  }
}