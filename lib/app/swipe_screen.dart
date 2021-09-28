import 'package:flutter/material.dart';
import 'package:startapp/constants/constatnts.dart';
import 'package:startapp/widgets/swap_card.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class SwipeScreen extends StatefulWidget {
  const SwipeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SwipeScreenState createState() => _SwipeScreenState();
}

class _SwipeScreenState extends State<SwipeScreen> {
  final List<SwipeItem> _swipeItems = <SwipeItem>[];
  late MatchEngine _matchEngine;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  final List<String> _images = [
    'assets/programmer.jpeg',
    'assets/jabascript.jpeg',
    'assets/hussar.png',
    'assets/anton_pizza.png',
    'assets/кисель.png',
  ];
  final List<String> _title = [
    'Баекэндэр',
    'Фрэнтенд',
    'Hussar',
    'Bidlo',
    'Кисель'
  ];

  final List<List<String>> _description = [
    ['Go', 'Java', 'Penis', 'Python'],
    ['Писать дичь', 'Jabascrэпт', 'Говно жрать'],
    ['ootska', 'Dirochka', 'экоnomica', 'vils'],
    ['Вязать', 'Вязка', 'Связки', 'Вязание'],
    ['КОТасться', 'Два мальчика', 'Стены'],
  ];

  final List<String> _age = [
    '76',
    '4',
    'Вечен',
    '46',
    'Сдох бля лмао',
  ];

  @override
  void initState() {
    for (int i = 0; i < _images.length; i++) {
      _swipeItems.add(SwipeItem(
          content: Content(
            image: _images[i],
            title: _title[i],
            description: _description[i],
            age: _age[i],
          ),
          likeAction: () {
            _scaffoldKey.currentState!.showSnackBar(SnackBar(
              content: Text("Liked $_images[i]}"),
              duration: const Duration(milliseconds: 500),
            ));
          },
          nopeAction: () {
            _scaffoldKey.currentState!.showSnackBar(SnackBar(
              content: Text("Nope $_images[i]}"),
              duration: const Duration(milliseconds: 500),
            ));
          },
          superlikeAction: () {
            _scaffoldKey.currentState!.showSnackBar(SnackBar(
              content: Text("Superliked $_images[i]}"),
              duration: const Duration(milliseconds: 500),
            ));
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        key: _scaffoldKey,
        appBar: NewGradientAppBar(
            title: Text(widget.title),
            centerTitle: true,
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: Constants.primary_cyan,
                ),
            gradient: const LinearGradient(colors: [
              Constants.primary_purple,
              Constants.primary_lightblue,
              Constants.primary_purple,
            ])),
        body: Container(
            color: Constants.primary_blue,
            child: Column(children: [
              SizedBox(
                height: 550,
                child: SwipeCards(
                  matchEngine: _matchEngine,
                  itemBuilder: (BuildContext context, int index) {
                    return SwapCard(
                      image: _swipeItems[index].content.image,
                      title: _swipeItems[index].content.title,
                      description: _swipeItems[index].content.description,
                      age: _swipeItems[index].content.age,
                      size: size,
                    );
                  },
                  onStackFinished: () {
                    // ignore: deprecated_member_use
                    _scaffoldKey.currentState!.showSnackBar(const SnackBar(
                      content: Text("Stack Finished"),
                      duration: Duration(milliseconds: 500),
                    ));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _matchEngine.currentItem!.nope();
                    },
                    child: const Text(
                      "Nope",
                      style: TextStyle(color: Color(0xff431C53)),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Constants.primary_pink,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _matchEngine.currentItem!.superLike();
                    },
                    child: const Text(
                      "Superlike",
                      style: TextStyle(color: Color(0xff431C53)),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Constants.primary_pink),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _matchEngine.currentItem!.like();
                    },
                    child: const Text(
                      "Like",
                      style: TextStyle(color: Constants.primary_purple),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Constants.primary_pink,
                    ),
                  ),
                ],
              )
            ])));
  }
}

class Content {
  final String? image;
  final String? title;
  final List<String>? description;
  final String? age;

  Content({this.image, this.title, this.description, this.age});
}
