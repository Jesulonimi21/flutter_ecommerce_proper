import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_proper/main.dart';
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
        title: InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>Homepage()));
            },
            child: Text("Nimis Shop App")),
        actions: <Widget>[
          IconButton(
            icon:Icon(Icons.search,
            color:Colors.white,
            ),
            onPressed: (){},
          ),

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
            footer: Container(
              color: Colors.white70,
              child: ListTile(
                leading: Text(widget.product_detail_name,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(widget.product_detail_old_price,style: TextStyle(color:Colors.grey,decoration: TextDecoration.lineThrough),),
                    ),
                    Expanded(
                      child: Text(widget.product_detail_price,style:TextStyle(color:Colors.red,fontWeight:FontWeight.bold)),
                    ),

                  ],
                ),
              ),
            ),
          ),
          ),
  // the first buttons
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  color: Colors.white,
                  textColor: Colors.grey,
                  onPressed: (){
                   showDialog(context: context,builder: (_){
                return AlertDialog(
              title: Text(
                "Size"
              ),
                  content: Text("Choose the size"),
                  actions: <Widget>[
                    MaterialButton(
                      child: Text("close"),
                      onPressed: (){
                        Navigator.pop(context);
                      },

                    )
                  ],
                );
                   });
                  },
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),

                      )
                    ],
                  ),

                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.white,
                  textColor: Colors.grey,
                  onPressed: (){
                    showDialog(context: context,builder:(BuildContext context){
                      return AlertDialog(
                        title: Text("Color"),
                        content: Text("Choose your desired color"),
                        actions: <Widget>[
                          MaterialButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text("close"),
                          )
                        ],
                      );
                    } );
                  },
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),

                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: Colors.white,
                  textColor: Colors.grey,
                  onPressed: (){
                    showDialog(
                      context: context, builder: (BuildContext context){
                        return AlertDialog(
                          title: Text("Quantity"),
                          content: Text("Choose the quantity"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              child: Text(
                                "close"
                              ),
                            ),
                          ],
                        );
                    }
                    );
                  },
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),

                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed:(){},
                  color:Colors.red,
                  textColor:Colors.white,
                  elevation:0.2,
                  child:(Text("Buy now"))
                ),
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart,color: Colors.red,),
                onPressed: (){},

              ),
              IconButton(

                icon: Icon(Icons.favorite_border,color:Colors.red),
                onPressed: (){},
              )
            ],
          ),
    Divider(),
    ListTile(
      title: Text("Product Details"),
      subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets"),
    ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product name",style:TextStyle(
                  color: Colors.grey
                )),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name,),
              ),

            ],
          ),
          // THE PEODUCT BRAND
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product Brand",),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("Brand x",),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text("Product condition",),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Good",
                ),
              )
            ],
          ),
          // SIMILAR PRODUCTS
          Divider(),
          Padding(
            padding: EdgeInsets.all(8.0),
              child: Text("Similar Products")),
          Container(
            height: 360,
            child: SimilarProducts(),
          )
        ],
      )
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  List<Map<String, dynamic>> product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": "#35000",
      "price": "#20000"
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": "#45000",
      "price": "#25000"
    },
    {
      "name": "black dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": "#45000",
      "price": "#25000"
    },
    {
      "name": "dark Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": "#45000",
      "price": "#25000"
    },
    {
      "name": "hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": "#45000",
      "price": "#25000"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            product_name: product_list[index]["name"],
            product_old_price: product_list[index]["old_price"],
            product_price: product_list[index]["price"],
            product_picture: product_list[index]["picture"],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_price;
  final product_old_price;

  Similar_single_prod(
      {this.product_name,
        this.product_picture,
        this.product_old_price,
        this.product_price});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
          child: Hero(
            tag: product_name,
            child: Material(
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductDetails(
                      product_detail_name: product_name,
                      product_detail_picture: product_picture,
                      product_detail_price: product_price,
                      product_detail_old_price: product_old_price,
                    ))),
                child: GridTile(
                  child: Image.asset(
                    product_picture,
                    fit: BoxFit.cover,
                  ),
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        product_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        product_price,
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        product_old_price,
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

