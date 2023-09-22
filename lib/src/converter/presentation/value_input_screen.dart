import 'package:alphonso/common/app_color.dart';
import 'package:flutter/material.dart';

class ValueInputScreen extends StatefulWidget {
  const ValueInputScreen({
    super.key,
    required this.unit,
    required this.value,
    required this.backgroundColor,
  });

  final String unit;
  final String value;
  final Color backgroundColor;

  @override
  State<ValueInputScreen> createState() => _ValueInputScreenState();
}

class _ValueInputScreenState extends State<ValueInputScreen> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(text: widget.value);
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.spaceCadet,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Back button
            Container(
              alignment: Alignment.centerLeft,
              height: 72.0,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
            ),

            /// Input and unit Display
            Expanded(
              child: Container(
                color: AppColor.spaceCadet,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        widget.unit,
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          fontSize: 44.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextField(
                          controller: _controller,
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.end,
                          style: const TextStyle(
                            fontFamily: 'EB Garamond',
                            fontWeight: FontWeight.w300,
                            fontSize: 64.0,
                            color: Colors.white,
                          ),
                          cursorColor: Colors.white,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          onSubmitted: (value) {
                            // TODO : update value
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

