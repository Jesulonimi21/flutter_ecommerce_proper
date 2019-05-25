import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget{
  final product_detail_name;
  final product_detail_price;
  final product_detail_old_price;
  final product_detail_picture;
  ProductDetails({this.product_detail_name,this.product_detail_price,this.product_detail_old_price,this.product_detail_picture});
    State createState(){
      return ProductDetailsState();
    }
}

class ProductDetailsState extends State<ProductDetails>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("Product Details"),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search,
            color:Colors.white,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon:Icon(Icons.shopping_cart, color: Colors.white),

            onPressed: (){},
          )
        ],
      ),
      body:ListView(
        children: <Widget>[
          Container(
            height: 300,
          child: GridTile(
            child: Container(
              color: Colors.white,
              child: Image.asset(widget.product_detail_picture),
            ),
          ),
          )
        ],
      )
    );
  }
}