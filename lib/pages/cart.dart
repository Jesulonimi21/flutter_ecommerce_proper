 import 'package:flutter/material.dart';
// my custom imports
 import 'package:flutter_ecommerce_proper/components/cart_products.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Cart"),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search),
            onPressed: (){},
          ),
        ],
      ),
      body: Cart_products(),
      bottomNavigationBar:Container(
        color:Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("Total"),
                subtitle: Text("\$230"),
              ),
            ),
            Expanded(
              child: MaterialButton(
                color:Colors.red,
                child:Text("Check out",style:TextStyle(color: Colors.white)),
                onPressed: (){},
              ),
            )
          ],
        ),
      )
    );
  }
}
