import 'package:flutter/material.dart';

class UnitCategoryTile extends StatelessWidget {
  const UnitCategoryTile({
    super.key,
    this.onTap,
    required this.unitCategory,
  });

  final void Function()? onTap;
  final Map<String, dynamic> unitCategory;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: unitCategory['color'],
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Icon
            Icon(
              unitCategory['icon'],
              size: 54.0,
              color: Colors.white,
            ),

            const SizedBox(height: 8.0),

            /// Label
            Text(
              unitCategory['label'],
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
