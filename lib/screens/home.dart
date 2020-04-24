import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/shared/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 50.0),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Simple way to find \nTasty Food',
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTitle(title: 'All', active: true,),
                CategoryTitle(title: 'Italian'),
                CategoryTitle(title: 'Asian'),
                CategoryTitle(title: 'Chinese'),
                CategoryTitle(title: 'Burgers'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;

  const CategoryTitle({
    Key key,
    this.active = false,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 30.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button.copyWith(
          color: active ? kPrimaryColor : kTextColor.withOpacity(0.4),
        ),
      ),
    );
  }
}