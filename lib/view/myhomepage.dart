import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:provider/provider.dart';
import 'package:rvonlineshoppingdemo/view/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(
            "asset/pngfind.com-logo-de-instagram-png-2171074.svg",
            color: Colors.white,
            width: 100,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat_outlined),
              color: Colors.white,
            )
          ],
        ),
        body: RefreshIndicator(
          onRefresh: onRefresh,
          child: SingleChildScrollView(
            child: Column(children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        9,
                        (index) => Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage: AssetImage(
                                        "asset/instagram_3955024.png"),
                                    child: CircleAvatar(
                                      radius: 32,
                                      backgroundImage:
                                          AssetImage(profileImage[index]),
                                    ),
                                  ),
                                  Text(
                                    profileName[index],
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white70),
                                  )
                                ],
                              ),
                            ))),
              ),
              Column(
                  children: List.generate(
                      9,
                      (index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: CircleAvatar(
                                      radius: 14,
                                      backgroundImage: AssetImage(
                                          "asset/instagram_3955024.png"),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundImage:
                                            AssetImage(profileImage[index]),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    profileName[index],
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white70),
                                  ),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert))
                                ],
                              ),
                              Image.asset(post[index]),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.favorite_outline)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.chat_bubble_outline)),
                                  IconButton(
                                      onPressed: () {},
                                      icon:
                                          Icon(Icons.label_important_outline)),
                                  Spacer(),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.bookmark_border))
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w300),
                                              children: [
                                            TextSpan(text: "Liked by "),
                                            TextSpan(
                                                text: likedBy[index],
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            TextSpan(text: " and "),
                                            TextSpan(
                                                text: "others",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ])),
                                      RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                              children: [
                                            TextSpan(text: profileName[index]),
                                            TextSpan(text: ": "),
                                            TextSpan(
                                                text: postMessage[index],
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w300)),
                                          ])),
                                      Text(
                                        viewcmds[index],
                                        style: TextStyle(color: Colors.white30),
                                      )
                                    ]),
                              )
                            ],
                          )))
            ]),
          ),
          
        ),backgroundColor: Colors.black,);
  }

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 1));
  }
}
