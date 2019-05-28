import "package:flutter/material.dart";

class Cart_products extends StatefulWidget{
    State createState(){
      return Cart_productsState();
    }
}
class Cart_productsState extends State<Cart_products>{
  var products_on_the_cart=[

    {
      "name": "Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": "#45000",
      "color":"red",
      "size":"M",
      "quantity":1,
      "price": "#25000"
    },
    {
      "name": "black Skirt",
      "picture": "images/products/skt2.jpeg",
      "price": "#25000",
          "color":"red",
      "size":"M",
      "quantity":1,
    },
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "color":"red",
      "size":"M",
      "quantity":1,
      "price": "#25000"
    }
  ];
  @override
  Widget build(BuildContext context){
     return  ListView.builder(itemBuilder: (BuildContext context, int index){
       return Single_cart_product(
         cart_prod_color: products_on_the_cart[index]['color'],
         cart_prod_name: products_on_the_cart[index]['name'],
         cart_prod_picture: products_on_the_cart[index]['picture'],
         cart_prod_quantity: products_on_the_cart[index]['quantity'],
         cart_prod_price: products_on_the_cart[index]['price'],
         cart_prod_size: products_on_the_cart[index]['size'],
       );
     },itemCount: products_on_the_cart.length,);


  }
}

class Single_cart_product extends StatelessWidget{
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_quantity;
  final cart_prod_size;
  final cart_prod_color;

  Single_cart_product({this.cart_prod_name,this.cart_prod_picture,this.cart_prod_price,this.cart_prod_quantity,this.cart_prod_size,this.cart_prod_color});
  @override
  Widget build(BuildContext context){
      return
        Card(

          child: ListTile(

            //==========LEADING SECTION

            leading:Image.asset(cart_prod_picture,width: 80.0,height: 90.0,),

            //========THE TITLE SECTION
            title: Text(cart_prod_name),
            //==========THE SUBTITLE SECTION
            subtitle: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    //==========This section is for the size
                  Padding(
                    padding:EdgeInsets.all(0.0),
                    child: Text("Size:"),

                  ),
                  Padding(
                    padding:EdgeInsets.all(4.0),
                    child: Text(cart_prod_size,style: TextStyle(color:Colors.red),),
                  ),

                    //====================This section is for the color
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                      child: Text("Color"),
                    ),
                  Padding(
                    padding:EdgeInsets.all(4.0),
                    child: Text(cart_prod_color,style: TextStyle(color: Colors.red),),

                  ),
                  ],
                ),

            Container(
                alignment:Alignment.topLeft,
                child: Text(cart_prod_price,style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold,color: Colors.red),))

              ],
            ),

            trailing: Container(
              child: Column(
                children: <Widget>[
                Expanded(child: IconButton(icon: Icon(Icons.arrow_drop_up,),onPressed: (){},)),
                Expanded(child: Text("1"),),
                Expanded(child: IconButton(icon: Icon(Icons.arrow_drop_down,),onPressed: (){},)),

                ],
              ),
            ),
          ),
        );

  }
}