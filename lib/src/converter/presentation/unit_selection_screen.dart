import 'package:flutter/material.dart';

class UnitSelectionScreen extends StatefulWidget {
  const UnitSelectionScreen({
    super.key,
    required this.units,
    required this.selectedUnit,
    required this.backgroundColor,
  });

  final List<String> units;
  final String selectedUnit;
  final Color backgroundColor;

  @override
  State<UnitSelectionScreen> createState() => _UnitSelectionScreenState();
}

class _UnitSelectionScreenState extends State<UnitSelectionScreen> {
  final PageController _controller = PageController(
    initialPage: 0,
    viewportFraction: 0.1,
    keepPage: false,
  );

  late int currentIndex;

  @override
  void initState() {
    super.initState();

    currentIndex = widget.units.indexOf(widget.selectedUnit);
    if(currentIndex.isNegative) {
      currentIndex = 0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.backgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: PageView.builder(
              controller: _controller,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: widget.units.length,
              itemBuilder: (context, index) {
                return AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    double value = 1.0;
                    if (_controller.position.haveDimensions) {
                      value = _controller.page! - index;
                      value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
                    }
                    return Center(
                      child: Text(
                        widget.units[index],
                        style: TextStyle(
                          color: currentIndex == index
                              ? Colors.white
                              : Colors.white.withOpacity(0.6),
                          fontSize: currentIndex == index
                              ? Curves.easeOut.transform(value) * 36.0
                              : 24.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    );
                  },
                );
              },
              onPageChanged: (int value) {
                setState(() {
                  currentIndex = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
