import 'package:alphonso/src/converter/presentation/value_input_screen.dart';
import 'package:flutter/material.dart';

import 'package:alphonso/common/app_color.dart';
import 'package:alphonso/src/converter/presentation/unit_selection_screen.dart';
import 'package:alphonso/src/converter/presentation/widgets/bottom_conversion_card.dart';
import 'package:alphonso/src/converter/presentation/widgets/top_conversion_card.dart';

class ConverterScreen extends StatelessWidget {
  const ConverterScreen({
    super.key,
    required this.unitCategory,
  });

  final Map<String, dynamic> unitCategory;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.spaceCadet,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Top Conversion card
            Expanded(
              child: TopConversionCard(
                unit: 'kilometer',
                value: '1',
                color: unitCategory['color'],
                onTapUnitSelection: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UnitSelectionScreen(
                        units: const [
                          'centimeter',
                          'kilometer',
                          'meter',
                          'decameter',
                          'micrometer'
                        ],
                        selectedUnit: 'kilometer',
                        backgroundColor: unitCategory['color'],
                      ),
                    ),
                  );
                },
                onTapValueInput: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ValueInputScreen(
                        unit: 'kilometer',
                        value: '1',
                        backgroundColor: unitCategory['color'],
                      ),
                    ),
                  );
                },
              ),
            ),

            /// Bottom Conversion card
            Expanded(
              child: BottomConversionCard(
                unit: 'meter',
                value: '1000',
                color: unitCategory['secondaryColor'],
                onTapUnitSelection: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => UnitSelectionScreen(
                        units: const [
                          'centimeter',
                          'kilometer',
                          'meter',
                          'decameter',
                          'micrometer'
                        ],
                        selectedUnit: 'meter',
                        backgroundColor: unitCategory['secondaryColor'],
                      ),
                    ),
                  );
                },
                onTapValueInput: () {
                  print('HOla');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
