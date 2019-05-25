import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_proper/pages/product_details.dart';

class Products extends StatefulWidget {
  State createState() {
    return ProductsState();
  }
}

class ProductsState extends State<Products> {
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
    {
      "name": " colorful hills",
      "picture": "images/products/hills2.jpeg",
      "old_price": "#45000",
      "price": "#25000"
    },
    {
      "name": "Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": "#45000",
      "price": "#25000"
    },
    {
      "name": "black Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": "#45000",
      "price": "#25000"
    },
    {
      "name": "Pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": "#45000",
      "price": "#25000"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            product_name: product_list[index]["name"],
            product_old_price: product_list[index]["old_price"],
            product_price: product_list[index]["price"],
            product_picture: product_list[index]["picture"],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_price;
  final product_old_price;

  Single_prod(
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
