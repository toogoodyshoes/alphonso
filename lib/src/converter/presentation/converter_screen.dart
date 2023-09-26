import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:alphonso/common/app_color.dart';
import 'package:alphonso/src/converter/domain/unit_category.dart';
import 'package:alphonso/src/converter/presentation/value_input_screen.dart';
import 'package:alphonso/src/converter/presentation/converter_controller.dart';
import 'package:alphonso/src/converter/presentation/unit_selection_screen.dart';
import 'package:alphonso/src/converter/presentation/widgets/top_conversion_card.dart';
import 'package:alphonso/src/converter/presentation/widgets/bottom_conversion_card.dart';

class ConverterScreen extends StatelessWidget {
  const ConverterScreen({
    super.key,
    required this.category,
  });

  final UnitCategory category;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ConverterController>(
      create: (context) => ConverterController(category: category),
      child: Builder(
        builder: (context) {
          return Material(
            color: AppColor.spaceCadet,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /// Top Conversion card
                  Expanded(
                    child: TopConversionCard(
                      color: category.theme!.lightShade,
                      onTapUnitSelection: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => ChangeNotifierProvider<
                                ConverterController>.value(
                              value: Provider.of<ConverterController>(context,
                                  listen: false),
                              child: UnitSelectionScreen(
                                units: category.generateSimplifiedList(),
                                selectedUnit: context
                                    .watch<ConverterController>()
                                    .topUnit,
                                backgroundColor: category.theme!.lightShade,
                                onUnitChange: (String newUnit) {
                                  context
                                      .read<ConverterController>()
                                      .changeTopUnit(newUnit);

                                  context.read<ConverterController>().computeBottomValue();
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      onTapValueInput: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => ChangeNotifierProvider<
                                ConverterController>.value(
                              value: Provider.of<ConverterController>(context,
                                  listen: false),
                              child: ValueInputScreen(
                                unit: context
                                    .watch<ConverterController>()
                                    .topUnit,
                                value: context
                                    .watch<ConverterController>()
                                    .topValue
                                    .toString(),
                                backgroundColor: category.theme!.lightShade,
                                onValueChange: (String newValue) {
                                  final parsedValue = double.parse(newValue);
                                  context
                                      .read<ConverterController>()
                                      .changeTopValue(parsedValue);

                                  context.read<ConverterController>().computeBottomValue();
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  /// Bottom Conversion card
                  Expanded(
                    child: BottomConversionCard(
                      color: category.theme!.darkShade,
                      onTapUnitSelection: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => ChangeNotifierProvider<
                                ConverterController>.value(
                              value: Provider.of<ConverterController>(context,
                                  listen: false),
                              child: UnitSelectionScreen(
                                units: category.generateSimplifiedList(),
                                selectedUnit: context
                                    .read<ConverterController>()
                                    .bottomUnit
                                    .toString(),
                                backgroundColor: category.theme!.darkShade,
                                onUnitChange: (String value) {
                                  context
                                      .read<ConverterController>()
                                      .changeBottomUnit(value);

                                  context
                                      .read<ConverterController>().computeTopValue();
                                },
                              ),
                            ),
                          ),
                        );
                      },
                      onTapValueInput: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => ChangeNotifierProvider<
                                ConverterController>.value(
                              value: Provider.of<ConverterController>(context,
                                  listen: false),
                              child: ValueInputScreen(
                                unit: context
                                    .watch<ConverterController>()
                                    .bottomUnit,
                                value: context
                                    .watch<ConverterController>()
                                    .bottomValue
                                    .toString(),
                                backgroundColor: category.theme!.darkShade,
                                onValueChange: (String value) {
                                  final parsedValue = double.parse(value);
                                  context
                                      .read<ConverterController>()
                                      .changeBottomValue(parsedValue);

                                  context
                                      .read<ConverterController>().computeTopValue();
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
