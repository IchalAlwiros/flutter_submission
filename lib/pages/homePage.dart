import 'package:flutter/material.dart';
import 'package:flutter_submission/model/popularModel.dart';
import 'package:flutter_submission/model/recomendedModel.dart';
import 'package:flutter_submission/pages/navigationBar.dart';
import 'package:flutter_submission/theme/theme.dart';
import 'package:flutter_submission/widget/cardCategory.dart';
import 'package:flutter_submission/widget/cardPopular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            popularCategory(),
            recomendedList(),
          ],
        ),
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Space King',
                    style: titleCategory.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Where freelancer working',
                    style: titleCategory.copyWith(
                        fontWeight: FontWeight.w400, fontSize: 16),
                  )
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 25.0,
                backgroundImage: AssetImage(
                  'assets/Pas Foto.png',
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: TextFormField(
              // cursorColor: primaryColor,
              onChanged: (value) {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                fillColor: Colors.grey.withOpacity(0.1),
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                //prefixIcon: Icon(Icons.search),
                suffixIcon:
                    // IconButton(
                    //   onPressed: () {},
                    //   icon: Image.asset('asset/Search Button.png'),
                    // ),
                    IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                hintText: 'What are you looking for?',
                hintStyle: titleCategory.copyWith(
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                    color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget popularCategory() {
    List<PopularModel> popularItem = [
      PopularModel(
        image: 'assets/popularImage 1.png',
        title: 'Germany',
      ),
      PopularModel(
        image: 'assets/popularImage 2.png',
        title: 'Bandung',
      ),
      PopularModel(
        image: 'assets/popularImage 1.png',
        title: 'Indonesia',
      ),
    ];
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Popular Countries',
              style: titleCategory.copyWith(
                  fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 160,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: popularItem.length,
              separatorBuilder: (context, index) => SizedBox(
                width: 20,
              ),
              itemBuilder: (context, index) {
                return CardPopular(
                  image: popularItem[index].image,
                  title: popularItem[index].title,
                  isFirst: index == 0,
                  isLast: index + 1 == popularItem.length,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget recomendedList() {
    List<RecomendedModel> recomendedCard = [
      RecomendedModel(
        image: 'assets/popularImage 1.png',
        title: 'Kang Kerja',
        location: 'Bandung, Germany',
        price: '\$52',
      ),
      RecomendedModel(
        image: 'assets/popularImage 2.png',
        title: 'Roemah Nenek',
        location: 'Seattle, Bogor',
        price: '\$11',
      ),
      RecomendedModel(
        image: 'assets/popularImage 1.png',
        title: 'He Matt She X',
        location: 'Jakarta, Indonesia',
        price: '\$20',
      ),
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                'Recommended Space',
                style: titleCategory.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 310,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: recomendedCard.length,
                  itemBuilder: (context, index) => CardCategory(
                      imageUrl: recomendedCard[index].image,
                      title: recomendedCard[index].title,
                      price: recomendedCard[index].price,
                      location: recomendedCard[index].location)),
            )
          ],
        ),
      ),
    );
  }
}
