import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ProfileChildrenReputation extends StatelessWidget {
  const ProfileChildrenReputation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), color: Theme.of(context).cardColor),
      width: MediaQuery.of(context).size.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: RatingBar.builder(
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemSize: 50,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            CupertinoIcons.star_fill,
            color: Theme.of(context).textTheme.labelSmall!.color,
          ),
          onRatingUpdate: (rating) {
            },
          ),
        ),
      ),
    );
  }
}