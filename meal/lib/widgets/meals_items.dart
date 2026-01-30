import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealsItems extends StatelessWidget {
  const MealsItems({super.key, required this.meal});

  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      clipBehavior: Clip.hardEdge,
      elevation: 3,
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.black45,
                padding: EdgeInsets.symmetric(horizontal: 44, vertical: 6),
                child: Column(
                  children: [
                    Text(
                      meal.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 21),
                    Row(children: []),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
