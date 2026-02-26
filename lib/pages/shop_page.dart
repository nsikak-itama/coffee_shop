import 'package:coffee_shop/components/coffeeTile.dart';
import 'package:coffee_shop/const.dart';
import 'package:coffee_shop/models/coffee.dart';
import 'package:coffee_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCart(Coffee coffee){
    Provider.of<CoffeeShop>(context, listen: false).addItem(coffee);

    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text("Successfully added to cart"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Consumer<CoffeeShop>(builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0), 
          child: Column(
            children: [
              Text("How would you life your coffee", style: TextStyle(fontSize: 20),),
              SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: (context, index){ 
                    Coffee eachCoffee = value.coffeeShop[index];

                    return CoffeeTile(coffee: eachCoffee, onPressed:() =>  addToCart(eachCoffee), icon: Icon(Icons.add),);
                  })
              )
            ],
          ),
        ),
      ),)
    );
  }
}