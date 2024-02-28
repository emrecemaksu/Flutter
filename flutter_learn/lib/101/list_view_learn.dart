import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //const Spacer(),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Text(
                  'Merhaba',
                  style: Theme.of(context).textTheme.headlineMedium,
                  maxLines: 1,
                ),
                Container(
                  color: Colors.redAccent,
                  height: 300,
                ),
                const Divider(),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        color: Colors.redAccent,
                        width: 200,
                      ),
                      Container(
                        color: Colors.orange,
                        width: 200,
                      ),
                      Container(
                        color: Colors.blueAccent,
                        width: 200,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cancel),
                ),
                Container(
                  color: Colors.redAccent,
                  height: 300,
                ),
                Container(
                  color: Colors.yellow,
                  height: 300,
                ),
                Container(
                  color: Colors.redAccent,
                  height: 300,
                ),
                Container(
                  color: Colors.white,
                  height: 300,
                ),
                Container(
                  color: const Color.fromARGB(255, 61, 132, 152),
                  height: 300,
                ),
                Container(
                  color: Colors.redAccent,
                  height: 300,
                ),
                const _ListDemoState(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ListDemoState extends StatefulWidget {
  const _ListDemoState();

  @override
  State<_ListDemoState> createState() => __ListDemoStateState();
}

class __ListDemoStateState extends State<_ListDemoState> {
  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    print('hello');
  }

  @override
  void dispose() {
    super.dispose();
    // ignore: avoid_print
    print('exit');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      height: 100,
    );
  }
}
