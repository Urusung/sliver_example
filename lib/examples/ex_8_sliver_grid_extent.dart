import 'package:flutter/material.dart';

class SliverGridExtentCount extends StatelessWidget {
  const SliverGridExtentCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SliverGridExtentCount',
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.extent(
            maxCrossAxisExtent: 150,
            childAspectRatio: 2 / 3,
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
      ),
    );
  }
}
