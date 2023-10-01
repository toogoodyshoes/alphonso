import 'package:flutter/material.dart';

import 'package:alphonso/src/converter/domain/unit_category.dart';

class UnitCategoryTile extends StatelessWidget {
  const UnitCategoryTile({
    super.key,
    this.onTap,
    required this.category,
  });

  final void Function()? onTap;
  final UnitCategory category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: category.theme!.lightShade,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Icon
            Icon(
              category.theme!.icon,
              size: 54.0,
              color: Colors.white,
            ),

            const SizedBox(height: 8.0),

            /// Label
            Text(
              category.label!,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
