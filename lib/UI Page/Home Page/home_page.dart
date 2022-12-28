import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../Constant Data/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> Tile = [
    'images/america.jpg',
    'images/america.jpg',
    'images/china.jpg',
    'images/japan.jpg',
    'images/pakistan.jpg',
    'images/uae.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 24.0, right: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello, Welcome 👋',
                          style: TextStyle(
                              color: AppColor.subTitleColor, fontSize: 14),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Albert Stevan',
                          style: TextStyle(
                              color: AppColor.subTitleColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: const DecorationImage(
                              image: AssetImage('images/assit.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                    hintText: 'Search clothes. . . ',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    iconColor: Colors.green,
                    focusColor: Colors.green,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff878787),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ButtonsTabBar(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    height: 60,
                    labelSpacing: 10,
                    backgroundColor: Colors.black,
                    unselectedBackgroundColor: Colors.grey[300],
                    unselectedLabelStyle: const TextStyle(color: Colors.black),
                    labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    tabs: const [
                      Tab(
                        icon: Icon(
                          IconlyLight.category,
                          size: 30,
                        ),
                        text: "All Items",
                      ),
                      Tab(
                        icon: Icon(FontAwesomeIcons.childDress, size: 30),
                        text: "Dresses",
                      ),
                      Tab(
                        icon: FaIcon(FontAwesomeIcons.hatCowboySide, size: 30),
                        text: 'Hat',
                      ),
                      Tab(
                        icon: Icon(Icons.watch, size: 30),
                        text: 'Watch',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      GridView.custom(
                        gridDelegate: SliverWovenGridDelegate.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          pattern: [
                            const WovenGridTile(6 / 6),
                            const WovenGridTile(
                              5 / 8,
                              crossAxisRatio: 0.9,
                              alignment: AlignmentDirectional.center,
                            ),
                          ],
                        ),
                        childrenDelegate: SliverChildBuilderDelegate(
                          childCount: Tile.length,
                          (context, index) => Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                                image: DecorationImage(
                                    image: AssetImage(Tile[index]),
                                    fit: BoxFit.fill)),
                            height: 700,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'data',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        'data',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(left: 70),
                                  child: Container(
                                    color: Colors.black,
                                    child: Column(
                                      children: [
                                        Text(
                                          'data',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'data',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'data',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GridView.custom(
                        gridDelegate: SliverWovenGridDelegate.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          pattern: [
                            const WovenGridTile(1),
                            const WovenGridTile(
                              5 / 7,
                              crossAxisRatio: 0.9,
                              alignment: AlignmentDirectional.centerEnd,
                            ),
                          ],
                        ),
                        childrenDelegate: SliverChildBuilderDelegate(
                          childCount: 6,
                          (context, index) => Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      GridView.custom(
                        gridDelegate: SliverWovenGridDelegate.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          pattern: [
                            const WovenGridTile(1),
                            const WovenGridTile(
                              5 / 7,
                              crossAxisRatio: 0.9,
                              alignment: AlignmentDirectional.centerEnd,
                            ),
                          ],
                        ),
                        childrenDelegate: SliverChildBuilderDelegate(
                          childCount: 6,
                          (context, index) => Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      GridView.custom(
                        gridDelegate: SliverWovenGridDelegate.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          pattern: [
                            const WovenGridTile(1),
                            const WovenGridTile(
                              5 / 7,
                              crossAxisRatio: 0.9,
                              alignment: AlignmentDirectional.centerEnd,
                            ),
                          ],
                        ),
                        childrenDelegate: SliverChildBuilderDelegate(
                          childCount: 6,
                          (context, index) => Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
