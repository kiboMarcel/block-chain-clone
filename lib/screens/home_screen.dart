import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/colors.dart';
import '../widgets/crypto_tile.dart';
import '../widgets/currency_status.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_appbar_test.dart';
import '../widgets/icon_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            flexibleSpace: Column(
              children: [
                CustomPaint(
                  painter: CAppBar(
                    mycolors: const [Color(0xFF862FB6), Color(0xFFF60598)],
                    radius: 50.0,
                  ),
                  child: const SizedBox(width: double.infinity, height: 120),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
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
                  height: 30,
                ),
                const Text(
                  '£ 15.61',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
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
                        icon: FaIcon(FontAwesomeIcons.arrowRightArrowLeft),
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
                      const Text(
                        'Asset',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      TextButton(onPressed: () {}, child: const Text('See all'))
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
    );
  }
}
