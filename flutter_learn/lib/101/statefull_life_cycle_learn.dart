import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class StatefullLifeCycle extends StatefulWidget {
  const StatefullLifeCycle({super.key, required this.message});
  final String message;
  @override
  State<StatefullLifeCycle> createState() => _StatefullLifeCycleState();
}

class _StatefullLifeCycleState extends State<StatefullLifeCycle> {
  String _message = ' ';
  late bool _isOdd;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //_cumputeName();
    if (kDebugMode) {
      print('c');
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (kDebugMode) {
      print('kapandi');
    }
    _message = '';
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (kDebugMode) {
      if (oldWidget.message != _message) {
        _message = widget.message;
        setState(() {});
        print('b');
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _cumputeName();
    if (kDebugMode) {
      print('a');
    }
  }

  void _cumputeName() {
    if (_isOdd) {
      _message += " cift";
    } else {
      _message += " tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _isOdd ? const Text('Kelime Tek') : const Text('Kelime Cift'),
        ),
        body: _isOdd
            ? TextButton(
                onPressed: () {
                  setState(() {
                    _message = 'A';
                  });
                },
                child: Text(
                  _message,
                ),
              )
            : ElevatedButton(
                onPressed: () {
                  setState(() {
                    _message = 'A';
                  });
                },
                child: Text(_message)));
  }
}
