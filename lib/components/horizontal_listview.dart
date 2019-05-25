import 'package:flutter/material.dart';
class HorizontalList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 100.0,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
         Category("images/cats/tshirt.png","shirt"),
         Category("images/cats/dress.png","dress"),
         Category("images/cats/jeans.png","jean"),
         Category("images/cats/formal.png","formal"),
         Category("images/cats/informal.png","informal"),
         Category("images/cats/shoe.png","shoe"),
         Category("images/cats/accessories.png","accessories"),

        ],
      ) ,
    );
  }
}
class Category extends StatelessWidget{
  final String image_location;
  final String image_caption;
  Category(this.image_location,this.image_caption);
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,width: 100.0,height:80.0 ,),
            subtitle:Container(
              alignment: Alignment.topCenter,
                child: Text(image_caption),),
          ),
        ),
      ),
    );
  }
}