import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:startapp/constants/constatnts.dart';
import 'package:startapp/model/user_form.dart';
import 'package:startapp/widgets/swap_card.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SwipeScreen extends ConsumerStatefulWidget {
  const SwipeScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SwipeScreenState createState() => _SwipeScreenState();
}

class _SwipeScreenState extends ConsumerState<SwipeScreen> {
  final List<SwipeItem> _swipeItems = <SwipeItem>[];
  late MatchEngine _matchEngine;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  //List<QueryDocumentSnapshot<UserForm>>? _userForms;

  Future<String>? builder() async {
    await FirebaseFirestore.instance
        .collection('user_forms')
        .withConverter<UserForm>(
          fromFirestore: (snapshot, _) => UserForm.fromJson(snapshot.data()!),
          toFirestore: (userForm, _) => userForm.toJson(),
        )
        .get()
        .then((QuerySnapshot userFormQuerySnapshot) {
      for (var _userForms in userFormQuerySnapshot.docs) {
        _swipeItems.add(SwipeItem(
          content: Content(
            age: _userForms.get('age'),
            name: _userForms.get('name'),
            picture: _userForms.get('picture'),
            tags: _userForms.get('tags'),
            uuid: _userForms.get('uuid'),
          ),
          likeAction: () {
            _scaffoldKey.currentState!.showSnackBar(const SnackBar(
              content: Text("Liked Poo"),
              duration: Duration(milliseconds: 500),
            ));
            print("Sent like to backend");
          },
          nopeAction: () {
            _scaffoldKey.currentState!.showSnackBar(const SnackBar(
              content: Text("Liked Poo"),
              duration: Duration(milliseconds: 500),
            ));
            print("Sent like to backend");
          },
          superlikeAction: () {
            _scaffoldKey.currentState!.showSnackBar(const SnackBar(
              content: Text("Liked Poo"),
              duration: Duration(milliseconds: 500),
            ));
            print("Sent like to backend");
          },
        ));
      }
    });
    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    return 'Good';
  }

  @override
  initState() {
    _swipeItems.add(SwipeItem(
        content: Content(
      age: '12',
      name: 'burger',
      picture: 'assets/кисель.png',
      tags: ['Bruh', 'Mrah'],
      uuid: '12',
    )));
    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return DefaultTextStyle(
      style: Theme.of(context).textTheme.headline2!,
      textAlign: TextAlign.center,
      child: FutureBuilder<String>(
          future: builder(),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
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
                                age: _swipeItems[index].content.age,
                                name: _swipeItems[index].content.name,
                                picture: _swipeItems[index].content.picture,
                                tags: _swipeItems[index].content.tags,
                                size: size,
                              );
                            },
                            onStackFinished: () {
                              _scaffoldKey.currentState!
                                  .showSnackBar(const SnackBar(
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
                                style:
                                    TextStyle(color: Constants.primary_purple),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Constants.primary_pink,
                              ),
                            ),
                          ],
                        )
                      ])));
            } else {
              return Container(child: const Text('Wait a bit'));
            }
          }),
    );
  }
}

class Content {
  final String age;
  final String name;
  final String picture;

  final List<dynamic> tags;
  final String uuid;

  Content(
      {required this.age,
      required this.name,
      required this.picture,
      required this.tags,
      required this.uuid});
}
