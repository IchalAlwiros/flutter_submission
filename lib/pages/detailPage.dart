import 'package:flutter/material.dart';
import 'package:flutter_submission/provider/theme_provider.dart';
import 'package:flutter_submission/theme/theme.dart';

class DetailPage extends StatelessWidget {
  final String imgUrl, title, price, location;

  DetailPage(
      {required this.imgUrl,
      required this.title,
      required this.price,
      required this.location});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      imgUrl,
                      //'asset/Image.png',
                      height: 600,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // SizedBox(
                            //   height: 550,
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 550),
                              child: contentTitle(context),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomNav(context),
      ),
    );
  }

  Widget bottomNav(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: Theme.of(context).primaryColor, boxShadow: [
        BoxShadow(
          offset: Offset(3.0, 6.0),
          blurRadius: 20,
          //spreadRadius: 1.0,
          color: Colors.grey,
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: ImageIcon(
                AssetImage('assets/Active Bookmark Button.png'),
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(60, 60),
                  primary: Color(0xffffffff),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
            SizedBox(
              width: 70,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Book now',
                  style: titleCategory.copyWith(
                      fontWeight: FontWeight.w700, color: Colors.white)),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(196, 50),
                  primary: Color(0xff000000),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            )
          ],
        ),
      ),
    );
  }

  Widget contentTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 20),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(3.0, 2.0),
              blurRadius: 20,
              spreadRadius: 6.0,
              color: Colors.black.withOpacity(0.6),
            )
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          )),
      child: Padding(
        padding: const EdgeInsets.only(right: 24.0, left: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: titleCategory.copyWith(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Colors.redAccent,
                          ),
                          Text(
                            location,
                            style: titleCategory.copyWith(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Text(price,
                      style:
                          titleCategory.copyWith(fontWeight: FontWeight.w600)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          ImageIcon(AssetImage('assets/Star.png'),
                              size: 15, color: Colors.orange),
                          SizedBox(
                            width: 5,
                          ),
                          Text('4.8',
                              style: titleCategory.copyWith(
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(height: 6),
                      Text('2k reviews',
                          style: titleCategory.copyWith(
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  Container(
                      height: 37,
                      child:
                          VerticalDivider(thickness: 1, color: Colors.black)),
                  Column(
                    children: [
                      Row(
                        children: [
                          ImageIcon(AssetImage('assets/Duration Icon.png'),
                              size: 18, color: Colors.red),
                          SizedBox(
                            width: 5,
                          ),
                          Text('3h',
                              style: titleCategory.copyWith(
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(height: 6),
                      Text('Duration',
                          style: titleCategory.copyWith(
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  Container(
                      height: 37,
                      child:
                          VerticalDivider(thickness: 1, color: Colors.black)),
                  Column(
                    children: [
                      Row(
                        children: [
                          ImageIcon(AssetImage('assets/Weather Icon.png'),
                              size: 18, color: Colors.blue),
                          SizedBox(
                            width: 5,
                          ),
                          Text('28°C',
                              style: titleCategory.copyWith(
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      SizedBox(height: 6),
                      Text('Sunny',
                          style: titleCategory.copyWith(
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ],
              ),
            ),
            descriptionText()
          ],
        ),
      ),
    );
  }

  Widget descriptionText() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Description',
              style: titleCategory.copyWith(
                  fontWeight: FontWeight.w700, fontSize: 16)),
          Text(
              "Good place to hang out and discuss with your team and friends",
              style: titleCategory.copyWith(fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
