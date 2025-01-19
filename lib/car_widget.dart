import 'package:flutter/material.dart';
import 'package:urban_cruise/data.dart';
import 'package:urban_cruise/constants.dart';

Widget buildCar(Car car, int index) {
  return SafeArea(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0),
      width: 220,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Text(
                    car.condition,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 100,
              child: Center(
                child: Hero(
                  tag: car.model,
                  child: Image.asset(
                    car.images[0],
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              car.model,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              car.brand,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
            Text(
              "per ${car.condition == "Daily"
                      ? "day"
                      : car.condition == "Weekly"
                          ? "week"
                          : "month"}",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
