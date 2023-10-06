import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:alphonso/common/app_color.dart';
import 'package:alphonso/src/converter/domain/unit.dart';
import 'package:alphonso/src/converter/domain/unit_category.dart';
import 'package:alphonso/src/converter/domain/unit_theme.dart';
import 'package:alphonso/src/converter/presentation/converter_screen.dart';
import 'package:alphonso/src/converter/presentation/widgets/unit_category_tile.dart';
import 'package:alphonso/src/converter/data/repository/local_storage_repository.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final LocalStorageRepository lsRepository;

  @override
  void initState() {
    super.initState();

    lsRepository = LocalStorageRepository();
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();

    await lsRepository.openDBConnection();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<LocalStorageRepository>(
      create: (_) => lsRepository,
      child: Builder(
        builder: (context) {
          return Material(
            color: AppColor.spaceCadet,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /// Title
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 36.0, horizontal: 12.0),
                    child: Text(
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
                      padding: const EdgeInsets.all(16.0),
                      children: List.generate(
                        unitCategories.length,
                        (index) {
                          return UnitCategoryTile(
                            category: unitCategories[index],
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) =>
                                      Provider<LocalStorageRepository>.value(
                                    value: Provider.of<LocalStorageRepository>(
                                        context),
                                    child: ConverterScreen(
                                      category: unitCategories[index],
                                    ),
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
          );
        },
      ),
    );
  }
}

const unitCategories = <UnitCategory>[
  Length(
    label: 'Length',
    theme: UnitTheme(
      icon: Icons.straighten,
      lightShade: Color(0xFF03A9F4),
      darkShade: Color(0xFF029AE1),
    ),
    defaultFrom: Unit(
      name: 'kilometer',
      conversionFactors: {
        'nanometer': 0.000000000001,
        'micrometer': 0.000000001,
        'millimeter': 0.000001,
        'meter': 1000,
        'kilometer': 1,
      },
    ),
    defaultFromValue: 1,
    defaultTo: Unit(
      name: 'meter',
      conversionFactors: {
        'nanometer': 0.000000001,
        'micrometer': 0.000001,
        'millimeter': 0.001,
        'meter': 1,
        'kilometer': 1000,
      },
    ),
    defaultToValue: 1000,
  ),
];
