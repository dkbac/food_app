import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/shared/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset(
            'assets/icons/plus.svg',
          ),
        ),
      ),
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
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            height: 50.0,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                color: kBorderColor,
              ),
            ),
            child: SvgPicture.asset('assets/icons/search.svg'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                FoodCard(
                  calories: '420Kcals',
                  description: 'We create a nice clean food delivery app ui by using flutter',
                  foodName: 'Salas',
                  image: 'assets/image_1.png',
                  ingredient: 'The red potato',
                  price: 20.0,
                ),
                FoodCard(
                  calories: '420Kcals',
                  description: 'We create a nice clean food delivery app ui by using flutter',
                  foodName: 'Salas',
                  image: 'assets/image_1.png',
                  ingredient: 'The red potato',
                  price: 20.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final double price;
  final String foodName;
  final String ingredient;
  final String description;
  final String calories;
  final String image;

  const FoodCard({
    Key key,
    this.price,
    this.foodName,
    this.ingredient,
    this.description,
    this.calories,
    this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      height: 400,
      width: 270,
      child: Stack(
        children: <Widget>[
          // 
          Positioned(
            right: 0.0,
            bottom: 0.0,
            child: Container(
              height: 380,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34.0),
                color: kPrimaryColor.withOpacity(0.06),
              ),
            ),
          ),
          // Rounded the Food Image
          Positioned(
            top: 10.0,
            left: 10.0,
            child: Container(
              height: 181,
              width: 181,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kPrimaryColor.withOpacity(0.15),
              ),
            ),
          ),
          // Food Image
          Positioned(
            top: 0.0,
            left: -50.0,
            child: Container(
              height: 184.0,
              width: 276.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/image_1.png'),
                ),
              ),
            ),
          ),
          // Price
          Positioned(
            top: 90.0,
            right: 10.0,
            child: Text(
              '\$$price',
              style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(color: kPrimaryColor),
            ),
          ),
          Positioned(
            top: 200.0,
            left: 40.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  foodName,
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  ingredient,
                  style: TextStyle(
                    color: kTextColor.withOpacity(.4),
                  ),
                ),
                SizedBox(height: 16.0,),
                Text(
                  description,
                  maxLines: 3,
                  style: TextStyle(
                    color: kTextColor.withOpacity(0.65),
                  ),
                ),
                SizedBox(height: 16,),
                Text(calories)
              ],
            ),
          )
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