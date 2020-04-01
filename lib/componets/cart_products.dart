import 'package:flutter/material.dart';

class Card_products extends StatefulWidget {
  @override
  _Card_productsState createState() => _Card_productsState();
}

class _Card_productsState extends State<Card_products> {
  var Product_on_the_cart = [
    {
      "name": "Blazer man",
      "picture": "images/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "blue",
      "quantity":5,
    },
    {
      "name": "Blazer Women",
      "picture": "images/products/blazer2.jpeg",
      "price": 70,
      "size": "L",
      "color": "Red",
      "quantity":3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Product_on_the_cart.length,
        itemBuilder: (context, index){
          return Single_cart_product(
            cart_product_name: Product_on_the_cart[index]["name"],
            cart_product_color: Product_on_the_cart[index]["color"],
            cart_product_picture: Product_on_the_cart[index]["picture"],
            cart_product_price: Product_on_the_cart[index]["price"],
            cart_product_quantity: Product_on_the_cart[index]["quantity"],
            cart_product_size: Product_on_the_cart[index]["size"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_quantity;

  Single_cart_product({
    this.cart_product_name,
    this.cart_product_picture,
    this.cart_product_price,
    this.cart_product_size,
    this.cart_product_color,
    this.cart_product_quantity,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
//        this section is for image
        leading: new Image.asset(cart_product_picture,width: 80.0,height: 80.0,),
        title: new Text(cart_product_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
//                this section is for the product size
                Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: new Text("Size : "),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: new Text(cart_product_size, style: TextStyle(color: Colors.red),),
                ),

//                this section is for the product color
                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color : "),),
                new Padding(padding: const EdgeInsets.fromLTRB(2.0, 8.0, 8.0, 8.0),
                  child: new Text(cart_product_color, style: TextStyle(color: Colors.red)),),

              ],
            ),
 //                this section is for the product price
            new Container(
              alignment: Alignment.bottomLeft,
              child: new Text("RM ${cart_product_price}", style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        trailing: new FittedBox(
          fit: BoxFit.fill,
          child:
          Column(
            children: <Widget>[
              IconButton(icon: Icon(Icons.arrow_drop_up,color: Colors.red),iconSize: 75.0, onPressed: () {}),
              Text("${cart_product_quantity}",style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),),
              IconButton(icon: Icon(Icons.arrow_drop_down,color: Colors.red
                ,),iconSize: 75.0, onPressed: () {}),

            ],
          ),
        ),
      ),
    );
  }
}

