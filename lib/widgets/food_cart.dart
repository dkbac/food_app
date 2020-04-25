import 'package:flutter/material.dart';
import 'package:food_app/shared/constants.dart';

class FoodCard extends StatelessWidget {
  final double price;
  final String foodName;
  final String ingredient;
  final String description;
  final String calories;
  final String image;
  final Function press;

  const FoodCard({
    Key key,
    this.price,
    this.foodName,
    this.ingredient,
    this.description,
    this.calories,
    this.image,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
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
      ),
    );
  }
}