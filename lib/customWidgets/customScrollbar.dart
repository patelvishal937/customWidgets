import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [RawScrollbar].

void main() => runApp(const RawScrollbarExampleApp());

class RawScrollbarExampleApp extends StatelessWidget {
  const RawScrollbarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('RawScrollbar Sample')),
        body: const Center(
          child: RawScrollbarExample(),
        ),
      ),
    );
  }
}

class RawScrollbarExample extends StatefulWidget {
  const RawScrollbarExample({super.key});

  @override
  State<RawScrollbarExample> createState() => _RawScrollbarExampleState();
}

class _RawScrollbarExampleState extends State<RawScrollbarExample> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final itemCount = 200;
    final minThumbLength = 10.0 + (itemCount * 0.2);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SizedBox(
          width: constraints.maxWidth / 2,
          child: RawScrollbar(
              controller: _firstController,
              minThumbLength: 10,
              thumbVisibility: true,
              trackVisibility: true,
              minOverscrollLength: double.minPositive,
              thumbColor: const Color.fromRGBO(0, 0, 0, 1),
              // minThumbLength: double.infinity,
              child: InkWell(
                onTap: () {
                  if (_firstController.position.maxScrollExtent ==
                      _firstController.offset) {
                    _firstController
                        .jumpTo(_firstController.position.minScrollExtent);
                  }
                },
                child: ListView.builder(
                    shrinkWrap: true,
                    // primary: true,
                    itemCount: itemCount,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 50,
                          color: index.isEven
                              ? Colors.amberAccent
                              : Colors.blueAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Scrollable 2 : Index $index'),
                          ));
                    }),
              )));
    });
  }
}
