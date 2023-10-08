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
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: category.theme!.darkShade.withOpacity(0.8),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Icon
            Icon(
              category.theme!.icon,
              size: 48.0,
              color: Colors.white.withOpacity(0.6),
            ),

            const SizedBox(height: 8.0),

            /// Label
            FittedBox(
              fit: BoxFit.contain,
              child: Text(
                category.label!,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
