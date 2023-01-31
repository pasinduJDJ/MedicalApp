import 'package:flutter/material.dart';
import 'package:medi_app/component/Recent_search_tile.dart';
import 'package:medi_app/component/default.dart';
import 'package:medi_app/component/latestResponseTile.dart';
import 'package:medi_app/component/titleWithMoreBtn.dart';

class homePageScreen extends StatelessWidget {
  const homePageScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      // color: Colors.black,
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            height: 200,
            // color: Colors.black,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 50 + 20),
                  height: 200,
                  decoration: const BoxDecoration(
                      color: KPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      )),
                  child: Row(
                    children: const [
                      Text(
                        "Hi Pasindu!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Spacer(),
                      // Image.asset("assets/images/logo.png")
                    ],
                  ),
                ),
                Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.only(left: 15),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      height: 54,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 5),
                                blurRadius: 10,
                                color: Color.fromRGBO(0, 0, 143, 1)
                                    .withOpacity(0.23)),
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search Medical Name",
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(0, 0, 143, 1)
                                    .withOpacity(0.5)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Color.fromRGBO(0, 0, 143, 1)
                                      .withOpacity(0.5),
                                ))),
                      ),
                    ))
              ],
            ),
          ),
          /////////////////////////////////////////////// title with more btn //////////////////
          const title_width_icon(
            title: 'Latest Response',
          ),
          ////////////////////////////////////////////// box decoration ///////////////////////////
          Container(
            margin: EdgeInsets.only(left: 10, top: 20, bottom: 5),
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                latest_response_msg_box(
                  statsus: 'We Have This Medicine',
                  ShopName: 'CN Pharmacy',
                  city: 'Kalubowila',
                  medicine: 'Allopurinol',
                  image:
                      'https://media.istockphoto.com/photos/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses-picture-id1144287292?b=1&k=20&m=1144287292&s=170667a&w=0&h=fvNKa6QuUa--cNv-oUXaHUBx8deD9iWgegvn76CtG_M=',
                ),
                SizedBox(
                  width: 30,
                ),
                latest_response_msg_box(
                  statsus: 'We Have This Medicine',
                  ShopName: 'Apiit Pharmacy',
                  city: 'Nugegoda',
                  medicine: 'Biomedicalic',
                  image:
                      'https://media.istockphoto.com/photos/headshot-portrait-of-happy-mixed-race-african-girl-wearing-glasses-picture-id1144287292?b=1&k=20&m=1144287292&s=170667a&w=0&h=fvNKa6QuUa--cNv-oUXaHUBx8deD9iWgegvn76CtG_M=',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          /////////////////////////////////////////////// title with more btn //////////////////
          const title_width_icon(
            title: 'Recent Search',
          ),
          /////////////////////////////////////////////// box Decoration //////////////////
          Container(
            margin: const EdgeInsets.all(20),
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: const [
                recent_Search_tiles(
                  medi_name: 'Panadol',
                ),
                recent_Search_tiles(
                  medi_name: 'Domparadone',
                ),
                recent_Search_tiles(
                  medi_name: 'Piritone',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
