import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:alphonso/src/converter/presentation/converter_controller.dart';

class TopConversionCard extends StatelessWidget {
  const TopConversionCard({
    super.key,
    required this.color,
    this.onTapUnitSelection,
    this.onTapValueInput,
  });

  final Color color;
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
                child: Selector<ConverterController, String>(
                  selector: (_, provider) => provider.topUnit,
                  builder: (context, unit, _) {
                    return Text(
                      unit,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        fontSize: 44.0,
                        color: Colors.white,
                      ),
                    );
                  },
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Selector<ConverterController, double>(
                    selector: (_, provider) => provider.topValue,
                    builder: (context, value, _) {
                      return Text(
                        value.toString(),
                        style: const TextStyle(
                          fontFamily: 'EB Garamond',
                          fontWeight: FontWeight.w300,
                          fontSize: 64.0,
                          color: Colors.white,
                        ),
                      );
                    },
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
