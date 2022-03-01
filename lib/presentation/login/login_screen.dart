import 'package:delivery/presentation/home/home_screen.dart';
import 'package:delivery/presentation/theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final moreWidth = 50;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              children: [
                Positioned(
                    left: -50 / 2,
                    right: -50 / 2,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: deliveryGradients
                            ),
                          color: Colors.red,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(size.width / 2))),
                    )),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: CircleAvatar(
                      
                      radius: 40,
                      backgroundColor:Theme.of(context).canvasColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.food_bank_outlined,
                          size: 50,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Login',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Username',
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Theme.of(context).iconTheme.color,
                            ),
                          hintText: 'username'
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Password',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                       TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.password,
                            color: Theme.of(context).iconTheme.color,
                            ),
                          hintText: 'password'
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: deliveryGradients
                  ),
                  color: Colors.black,
                ),
                height: 50,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Colors.white
                    ),
                    ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
