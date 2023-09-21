import 'package:flutter/material.dart';

class TopConversionCard extends StatelessWidget {
  const TopConversionCard({
    super.key,
    required this.color,
    required this.unit,
    required this.value,
    this.onTapUnitSelection,
    this.onTapValueInput,
  });

  final Color color;
  final String unit;
  final String value;
  final void Function()? onTapUnitSelection;
  final void Function()? onTapValueInput;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'UNIT',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),

          /// Unit
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTapUnitSelection,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child:  Text(
                  unit,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                    fontSize: 44.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),

          /// Value
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTapValueInput,
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    value,
                    style: const TextStyle(
                      fontFamily: 'EB Garamond',
                      fontWeight: FontWeight.w300,
                      fontSize: 64.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
