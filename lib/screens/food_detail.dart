import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/shared/constants.dart';

class FoodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/backward.svg',
                  height: 11.0,
                ),
                SvgPicture.asset(
                  'assets/icons/menu.svg',
                  height: 11.0,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              padding: EdgeInsets.all(16.0),
              width: 305.0,
              height: 305.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/image_1_big.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Salas\n',
                        style: Theme.of(context).textTheme.title,
                      ),
                      TextSpan(
                        text: 'With red tomato',
                        style: TextStyle(
                          color: kTextColor.withOpacity(0.5),
                        ),
                      ),
                    ]
                  ),
                ),
                Text(
                  '\$20.0',
                  style: Theme.of(context).textTheme.headline.copyWith(color: kPrimaryColor),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Text('We create a nice clean food delivery app ui by using flutter'),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 27.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.19),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Add to bag',
                          style: Theme.of(context).textTheme.button,
                        ),
                        SizedBox(width: 30.0,),
                        SvgPicture.asset(
                          'assets/icons/forward.svg',
                          height: 11.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(0.26),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          width: 60.0,
                          height: 60.0,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/bag.svg'
                          ),
                        ),
                        Positioned(
                          right: 7.0,
                          bottom: 7.0,
                          child: Container(
                            alignment: Alignment.center,
                            height: 28.0,
                            width: 28.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteColor,
                            ),
                            child: Text(
                              '0',
                              style: Theme.of(context).textTheme.button.copyWith(color: kPrimaryColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}