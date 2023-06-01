import 'package:flutter/material.dart';
import 'package:signature_pad/widgets/color_selector.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                child: Container(
                  height: 300,
                  width: size.width * .9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12,
                      width: 5,
                    ),
                  ),
                ),
              ),
              Text('Select Color'),
              Wrap(
                spacing: 10,
                children: [
                  ...[
                    Colors.blue,
                    Colors.red,
                    Colors.green,
                    Colors.purple,
                    Colors.black
                  ]
                      .map(
                        (color) => ColorSelector(
                          color: color,
                          isSelected: true,
                        ),
                      )
                      .toList(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Export Signature',
            ),
          ),
        ),
      ),
    );
  }
}
