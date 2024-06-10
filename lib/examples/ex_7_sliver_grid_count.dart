import 'package:flutter/material.dart';

class SliverGridCountExample extends StatelessWidget {
  const SliverGridCountExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SliverGridCount',
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverGrid.count(
              crossAxisCount: 4,
              children: List.generate(
                20,
                (index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.green[100 * (index % 9)],
                    child: Text('Grid Item $index'),
                  );
                },
              ),
            )
          ],
        ));
  }
}
