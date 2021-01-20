import 'package:flutter/material.dart';
import 'package:online_shop/screens/product.dart';
import 'package:online_shop/screens/catalog.dart';
import 'package:online_shop/screens/cart.dart';
import 'package:online_shop/screens/profile.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: MyHomePage(title: 'Интернет-магазин'),
        );
    }
}

class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);
    final String title;
    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    var _currentIndex = 0;
    @override

    Widget build(BuildContext context) {
        return Scaffold(
            body: IndexedStack(
                index: _currentIndex,
                children: [Catalog(), Cart(), Profile()],
            ),
            bottomNavigationBar: BottomNavigationBar(
                onTap: (selectedIndex){
                    setState((){
                        _currentIndex = selectedIndex;
                    });
                },
                currentIndex: _currentIndex, 
                items: [
                    BottomNavigationBarItem(icon: Icon(Icons.category), label: "Каталог"),
                    BottomNavigationBarItem(icon: Icon(Icons.list), label: "Корзина"),
                    BottomNavigationBarItem(icon: Icon(Icons.people), label: "Профиль"),
                ],
            ), //BottomNavigationBar
        );
    }
}
