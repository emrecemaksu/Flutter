import 'package:flutter/material.dart';
import 'package:flutter_learn/101/icon_learn.dart';
import 'package:flutter_learn/101/image_learn.dart';

class PageVireLearn extends StatefulWidget {
  const PageVireLearn({super.key});

  @override
  State<PageVireLearn> createState() => _PageVireLearnState();
}

class _PageVireLearnState extends State<PageVireLearn> {
  final _controllerPage = PageController(viewportFraction: 0.7);
  int _pageCount = 0;
  void _pageUpdate(int value) {
    setState(() {
      _pageCount = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('Sayfa Numarasi ${_pageCount.toString()}'),
            const Spacer(),
            FloatingActionButton(
              child: const Icon(Icons.arrow_back_rounded),
              onPressed: () {
                _controllerPage.previousPage(
                    curve: Curves.slowMiddle, duration: _DurationUtility._durationLow);
              },
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              child: const Icon(Icons.arrow_forward_rounded),
              onPressed: () {
                _controllerPage.nextPage(
                    curve: Curves.slowMiddle, duration: _DurationUtility._durationLow);
              },
            ),
          ],
        ),
      ),
      body: PageView(
        //Viewport yan sayfanin ön izlemesini kenarda gösterir.
        controller: _controllerPage,
        onPageChanged: _pageUpdate,
        children: [
          const ImageLearn(),
          const IconLearnView(),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
