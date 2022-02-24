import 'package:flutter/material.dart';
import 'package:flutter_submission/pages/detailPage.dart';
import 'package:flutter_submission/theme/theme.dart';

class CardCategory extends StatelessWidget {
  final String imageUrl, title, price, location;

  CardCategory(
      {required this.imageUrl,
      required this.title,
      required this.price,
      required this.location});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        //margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(2.0, 3.0),
                blurRadius: 5.0,
                //spreadRadius: 1.0,
                color: Colors.grey,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  imageUrl,
                  width: 60,
                  height: 50,
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleCategory.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '$price /hours',
                    style: titleCategory.copyWith(fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    location,
                    style: titleCategory.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(
                              imgUrl: imageUrl,
                              title: title,
                              price: price,
                              location: location)));
                },
                icon: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
