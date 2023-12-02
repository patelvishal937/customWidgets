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
        const SliverAppBar(
          // title: Text("Txt"),
          title: Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.in%2FYourCanvas-Monkey-Frames-Posters-Framed%2Fdp%2FB0CFJG218D&psig=AOvVaw3cbyA9kfd-P9kix8FuB800&ust=1701541648524000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCOC2jtvu7oIDFQAAAAAdAAAAABAE'),
            ),
          ),
          floating: false,
          expandedHeight: 300,
          pinned: true,
        ),
        // Sliver Items
        // SliverToBoxAdapter(
        //     child: ListView.builder(
        //         itemCount: 2,
        //         itemBuilder: (BuildContext context, int index) {
        //           return Text("hello : $index");
        //         })),

        // sliverList is use for createing list in sliver widget
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 10,
            (BuildContext context, int index) => Container(
                padding: EdgeInsets.all(16),
                height: 300,
                width: 300,
                color: Colors.amber,
                child: Text("This is $index User")),
          ),
        ),

        // sliver box is used for display widget
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
        // also we can use sliver grid and
      ],
    ));
  }
}
