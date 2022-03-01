import 'package:delivery/presentation/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentIndex= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: currentIndex,
            )
          ),
          NavigationBare(),
        ],
      ),
    );
  }
}

class NavigationBare extends StatelessWidget {
  //final int index;
  //NavigationBare({Key? index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
              ),
               IconButton(
                onPressed: () {},
                icon: Icon(Icons.store),
              ),
              CircleAvatar(
                backgroundColor: DeliveryColors.purple,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_basket),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
