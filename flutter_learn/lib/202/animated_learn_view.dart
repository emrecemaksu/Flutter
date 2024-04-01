import 'package:flutter/material.dart';

//Bazen
const double kZero = 0;

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: DurationConstant().durationLow);
  }

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  late AnimationController animationController;
  bool _isVisible = true;
  bool _isOpacity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
          animationController.animateTo(_isVisible ? 1 : 0);
        },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                opacity: _isOpacity ? 1 : 0, duration: const Duration(seconds: 1), child: const Text('data')),
            trailing: IconButton(
              onPressed: () {
                _changeOpacity();
              },
              icon: const Icon(Icons.precision_manufacturing_outlined),
            ),
          ),
          AnimatedDefaultTextStyle(
            style: _isVisible ? const TextStyle(fontSize: 40) : const TextStyle(fontSize: 20),
            duration: const Duration(seconds: 1),
            child: const Text('dsgdfcgd'),
          ),
          AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: animationController,
          ),
          AnimatedContainer(
            duration: DurationConstant().durationLow,
            height: _isVisible ? kZero : (MediaQuery.of(context).size.width) * 0.2,
            width: (MediaQuery.of(context).size.height) * 0.2,
            color: Colors.red,
            margin: const EdgeInsets.all(5),
          ),
          const Expanded(
            child: Stack(
              children: [
                AnimatedPositioned(
                  top: 10,
                  curve: Curves.elasticOut,
                  duration: Duration(seconds: 1),
                  child: Text('data'),
                )
              ],
            ),
          ),
          Expanded(
            child: AnimatedList(
              itemBuilder: (context, index, animation) {
                return const Text('data');
              },
            ),
          )
        ],
      ),

      //_placeHolder(),
      //_isVisible ? const Placeholder() : null,
      //Text('Data', style: context.textTheme().headlineMedium,),
    );
  }

  // ignore: unused_element
  AnimatedCrossFade _placeHolder() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      duration: DurationConstant().durationLow,
      crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}
//Extension ile Build context üzerinden değerleri okuma

class DurationConstant {
  final durationLow = const Duration(seconds: 1);
}
