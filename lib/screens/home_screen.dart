import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/colors.dart';
import '../widgets/big_text.dart';
import '../widgets/bottom_navigation_bar_item.dart';
import '../widgets/crypto_tile.dart';
import '../widgets/currency_status.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/icon_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;
  late ScrollDirection _scrollDirection;

  double appBarSizeHeight = 85;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _scrollDirection = ScrollDirection.idle;
    super.initState();
  }

  _scrollListener() {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      setState(() {
        _scrollDirection = ScrollDirection.reverse;
      });
    } else if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      setState(() {
        _scrollDirection = ScrollDirection.forward;
      });
    } else {
      setState(() {
        _scrollDirection = ScrollDirection.idle;
      });
    }

    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        appBarSizeHeight = 32;
      });
    }
    if (_scrollController.offset <=
            _scrollController.position.minScrollExtent &&
        !_scrollController.position.outOfRange) {
      setState(() {
        appBarSizeHeight = 85;
      });
    }
  }

  _onStartScroll(ScrollMetrics metrics, ScrollDirection scrollDirection) {}

  _onUpdateScroll(ScrollMetrics metrics, ScrollDirection scrollDirection) {
    if (scrollDirection == ScrollDirection.forward) {
      if (appBarSizeHeight < 85) appBarSizeHeight += 0.4;
    } else if (scrollDirection == ScrollDirection.reverse) {
      if (appBarSizeHeight > 32) appBarSizeHeight -= 0.4;
    }
  }

  _onEndScroll(ScrollMetrics metrics, ScrollDirection scrollDirection) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollStartNotification) {
            _onStartScroll(scrollNotification.metrics, _scrollDirection);
          } else if (scrollNotification is ScrollUpdateNotification) {
            _onUpdateScroll(scrollNotification.metrics, _scrollDirection);
          } else if (scrollNotification is ScrollEndNotification) {
            _onEndScroll(scrollNotification.metrics, _scrollDirection);
          }
          return true;
        },
        child: Stack(
          children: [
            CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 85,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FaIcon(FontAwesomeIcons.user),
                            FaIcon(FontAwesomeIcons.qrcode),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '£ 15.61',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w500),
                      ),
                      const Center(
                        child: CurrencyStatus(
                          color: kGreenColor,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            IconHome(
                              name: 'Buy',
                              icon: FaIcon(FontAwesomeIcons.plus),
                            ),
                            IconHome(
                              name: 'Sell',
                              icon: FaIcon(FontAwesomeIcons.minus),
                            ),
                            IconHome(
                              name: 'Exchange',
                              icon:
                                  FaIcon(FontAwesomeIcons.arrowRightArrowLeft),
                            ),
                            IconHome(
                              name: 'Receive',
                              icon: FaIcon(FontAwesomeIcons.download),
                            ),
                            IconHome(
                              name: 'More',
                              icon: FaIcon(FontAwesomeIcons.listUl),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const BigText(
                              text: 'Asset',
                            ),
                            TextButton(
                                onPressed: () {}, child: const Text('See all'))
                          ],
                        ),
                      ),
                      ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: const [
                          CryptoTile(
                            title: 'Bitcoin',
                            leading: FaIcon(
                              FontAwesomeIcons.bitcoin,
                              color: Color(0xFFFF9B22),
                            ),
                          ),
                          CryptoTile(
                            title: 'Bitcoin',
                            leading: FaIcon(
                              FontAwesomeIcons.bitcoin,
                              color: Color(0xFFFF9B22),
                            ),
                          ),
                          CryptoTile(
                            title: 'Bitcoin',
                            leading: FaIcon(
                              FontAwesomeIcons.bitcoin,
                              color: Color(0xFFFF9B22),
                            ),
                          ),
                          CryptoTile(
                            title: 'Bitcoin',
                            leading: FaIcon(
                              FontAwesomeIcons.bitcoin,
                              color: Color(0xFFFF9B22),
                            ),
                          ),
                          CryptoTile(
                            title: 'Bitcoin',
                            leading: FaIcon(
                              FontAwesomeIcons.bitcoin,
                              color: Color(0xFFFF9B22),
                            ),
                          ),
                          CryptoTile(
                            title: 'Bitcoin',
                            leading: FaIcon(
                              FontAwesomeIcons.bitcoin,
                              color: Color(0xFFFF9B22),
                            ),
                          ),
                          CryptoTile(
                            title: 'Bitcoin',
                            leading: FaIcon(
                              FontAwesomeIcons.bitcoin,
                              color: Color(0xFFFF9B22),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              child: CustomPaint(
                painter: CAppBar(
                  mycolors: const [Color(0xFF862FB6), Color(0xFFF60598)],
                  radius: 50.0,
                ),
                child: AnimatedContainer(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  duration: const Duration(milliseconds: 100),
                  height: appBarSizeHeight,
                  child: appBarSizeHeight >= 85
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: const [
                                    FaIcon(
                                      FontAwesomeIcons.cube,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    BigText(
                                      text: 'Account',
                                      size: 24,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 20,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              ],
                            ),
                            const BigText(
                                text: 'DeFi Wallet',
                                size: 25,
                                color: Colors.white30),
                          ],
                        )
                      : SizedBox(
                          width: double.infinity,
                          height: appBarSizeHeight,
                        ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 40),
                width: 150,
                height: 58,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 20,
                        spreadRadius: 10,
                        offset: Offset(0, 10),
                        color: Colors.black12)
                  ],
                ),
                child: const Center(child: ButoomNavigationBarItem()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
