import 'package:flutter/material.dart';

import 'package:alphonso/common/app_color.dart';
import 'package:alphonso/src/converter/presentation/converter_screen.dart';
import 'package:alphonso/src/converter/presentation/widgets/unit_category_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.spaceCadet,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// Title
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 36.0, horizontal: 12.0),
                child: const Text(
                  'Alphonso',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 36.0,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              /// Unit Grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 0.8,
                  children: List.generate(
                    unitCategories.length,
                    (index) {
                      return UnitCategoryTile(
                        unitCategory: unitCategories[index],
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>  ConverterScreen(
                                unitCategory: unitCategories[index],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const unitCategories = [
  {
    'label': 'Length',
    'icon': Icons.straighten,
    'color': Color(0xFF03A9F4),
    'secondaryColor': Color(0xFF029AE1),
  }
];
