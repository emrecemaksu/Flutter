import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        //Text özelleştirmek vs istersen önce temayı okumalıyız.
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith(
              (states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.green;
                }
                return null;
              },
            ),
          ),
          child: Text(
            'Text Button',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        //onPressed Null olursa button disable görünür.
        ElevatedButton(
          child: const Text('Elevated Button'),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {},
        ),
        FloatingActionButton(
          onPressed: () {
            //Servise istek atarız.
            //Sayfanın rengini düzenleriz
          },
          child: const Icon(Icons.add),
        ),
        SizedBox(
          width: 200,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                shape: const RoundedRectangleBorder()),
            onPressed: () {},
            child: const Text('Outlined Button'),
          ),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.add),
          label: const Text('OutlinedButton'),
          onPressed: () {},
        ),
        //Text gibi düz şeyleri tıklanır hala getirmek için kullan!
        //Çift tıkla falan var daha kostumize edilebilir.
        InkWell(onTap: () {}, child: const Text('InkWell')),
        Container(
          height: 200,
          color: Colors.white,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)))),
          onPressed: () {},
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
            child: Text(
              'Place Bid',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}

//Borders:
//CircleBorder(), RoundedRectangleBorder()
//backgrounglu ise ElevatedButtondur.
//Arka boşsa textbutton