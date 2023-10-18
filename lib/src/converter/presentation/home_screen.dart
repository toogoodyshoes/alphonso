import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:alphonso/common/app_color.dart';
import 'package:alphonso/src/converter/domain/unit.dart';
import 'package:alphonso/src/converter/domain/unit_category.dart';
import 'package:alphonso/src/converter/domain/unit_theme.dart';
import 'package:alphonso/src/converter/data/repository/local_storage_repository.dart';
import 'package:alphonso/src/converter/presentation/converter_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final LocalStorageRepository lsRepository;
  late final PageController _controller;

  @override
  void initState() {
    super.initState();

    lsRepository = LocalStorageRepository();
    _controller = PageController(
        initialPage: unitCategories.length ~/ 2, viewportFraction: 0.3);
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();

    await lsRepository.openDBConnection();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
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
              child: Stack(
                children: [
                  /// Background
                  Column(
                    children: [
                      /// Header
                      const Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'HOME',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                              color: Colors.white,
                              letterSpacing: 4.0,
                            ),
                          ),
                        ),
                      ),

                      const Spacer(),

                      /// Footer
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'ALPHONSO',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 18.0,
                                color: Colors.white,
                                letterSpacing: 4.0,
                              ),
                            ),
                            Text(
                              'v0.1.2',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.white.withOpacity(0.6),
                                letterSpacing: 2.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  /// Foreground
                  PageView.builder(
                    controller: _controller,
                    physics: const BouncingScrollPhysics(),
                    reverse: true,
                    scrollDirection: Axis.vertical,
                    itemCount: unitCategories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
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
                        child: Container(
                          decoration: BoxDecoration(
                            color: unitCategories[index].theme!.lightShade,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0, 4),
                                spreadRadius: 5.0,
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              /// Icon
                              Icon(
                                unitCategories[index].theme!.icon,
                                size: 48.0,
                                color: Colors.white,
                              ),

                              const SizedBox(height: 8.0),

                              /// Label
                              FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  unitCategories[index].label!.toUpperCase(),
                                  style: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    letterSpacing: 4.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
  Area(
    label: 'Area',
    theme: UnitTheme(
      icon: Icons.crop_square,
      lightShade: Color(0xFFEE5011),
      darkShade: Color(0xFFDD4A0F),
    ),
    defaultFrom: Unit(
      name: 'square yard',
      conversionFactors: {
        'square kilometer': 0.00000083613,
        'square meter': 0.83613,
        'square mile': 0.000000032283,
        'square yard': 1,
        'square foot': 9,
        'square inch': 1296,
        'hectare': 0.000083613,
        'acre': 0.0002066,
      },
    ),
    defaultFromValue: 1,
    defaultTo: Unit(
      name: 'square foot',
      conversionFactors: {
        'square kilometer': 0.000000092903,
        'square meter': 0.092903,
        'square mile': 0.00000003587,
        'square yard': 0.111111,
        'square foot': 1,
        'square inch': 144,
        'hectare': 0.0000092903,
        'acre': 0.000022957,
      },
    ),
    defaultToValue: 1000,
  ),
  Temperature(
    label: 'Temperature',
    theme: UnitTheme(
      icon: Icons.device_thermostat_outlined,
      lightShade: Color(0xFFEDD83D),
      darkShade: Color(0xFFEBD428),
    ),
    defaultFrom: Unit(
      name: 'Celsius',
      conversionFactors: {
        'Celsius': 1,
        'Fahrenheit': 33.8,
        'Kelvin': 274.15,
        'Rankine': 493.47,
      },
    ),
    defaultFromValue: 36.6,
    defaultTo: Unit(
      name: 'Fahrenheit',
      conversionFactors: {
        'Celsius': -17.22,
        'Fahrenheit': 1,
        'Kelvin': 255.9278,
        'Rankine': 460.67,
      },
    ),
    defaultToValue: 97.9,
  ),
  Weight(
    label: 'Weight',
    theme: UnitTheme(
      icon: Icons.fitness_center,
      lightShade: Color(0xFFFF499E),
      darkShade: Color(0xFFFF3091),
    ),
    defaultFrom: Unit(
      name: 'Kilogram',
      conversionFactors: {
        'Gram': 1000,
        'Kilogram': 1,
        'Metric Ton': 0.001,
        'Milligram': 1000000,
        'Ounce': 35.27396,
        'Pound': 2.204623,
      },
    ),
    defaultFromValue: 45,
    defaultTo: Unit(
      name: 'Gram',
      conversionFactors: {
        'Gram': 1,
        'Kilogram': 0.001,
        'Metric Ton': 0.000001,
        'Milligram': 1000,
        'Ounce': 0.03527396,
        'Pound': 0.002204623,
      },
    ),
    defaultToValue: 45000,
  ),
];
