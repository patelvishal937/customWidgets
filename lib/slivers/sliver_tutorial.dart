import 'package:flutter/material.dart';

class Sliverwidget extends StatefulWidget {
  const Sliverwidget({super.key});

  @override
  State<Sliverwidget> createState() => _SliverwidgetState();
}

class _SliverwidgetState extends State<Sliverwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Txt"),
          floating: false,
          expandedHeight: 300,
          pinned: true,
        ),
        // Sliver Items
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 300,
              width: 300,
              color: Colors.amber,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
          ),
        ),
      ],
    ));
  }
}
