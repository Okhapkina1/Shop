import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
    Profile({Key key}) : super(key: key);

    @override
    _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar( 
                title: Text("Профиль"),
            ),
            body: Column(
                children: <Widget>[
                    Stack(
                        overflow: Overflow.visible,
                        alignment: Alignment.center,
                        children: <Widget>[
                            Image(
                                width: double.infinity,
                                height: MediaQuery.of(context).size.height/3,
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://bipbap.ru/wp-content/uploads/2017/04/0_7c779_5df17311_orig.jpg"
                                ),
                            ),
                            Positioned(
                                bottom: -60.0,
                                child: CircleAvatar(
                                    radius: 80,
                                    backgroundColor: Colors.black,
                                    backgroundImage: NetworkImage(
                                        "https://image.freepik.com/free-vector/cat-summer-play-in-beach-vector-icon-illustration_138676-314.jpg"
                                    ),
                                ),
                            ),
                        ],
                    ), // Stack
                    SizedBox(
                        height: 65,
                    ),
                    ListTile(
                        title: Center( 
                            child: Text(
                                "Охапкина Анастасия Александровна", 
                                style: TextStyle(fontSize: 18), 
                            )
                        ),
                        subtitle: Center( 
                            child: Text("okhapkina_it-21@mail.ru"),
                        ),
                    ),
                    SizedBox(
                        height: 25,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                    FlatButton(
                                        onPressed: () {},
                                        child: Column( 
                                            children: <Widget>[
                                                Icon(
                                                    Icons.favorite_border_outlined,
                                                ),
                                                Text("Избранное",),
                                            ],
                                        ),
                                    ),
                                    FlatButton(
                                        onPressed: () {},
                                        child: Column( 
                                            children: <Widget>[
                                                Icon(
                                                    Icons.history,
                                                ),
                                                Text("Мои заказы",),
                                            ],
                                        ),
                                    ),
                                    FlatButton(
                                        onPressed: () {},
                                        child: Column( 
                                            children: <Widget>[
                                                Icon(
                                                    Icons.card_giftcard ,
                                                ),
                                                Text("Купоны",),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                        ],
                    ),
                ], //Widget
            ), //Column
        );
    }
}