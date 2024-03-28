import 'package:flutter/material.dart';
import 'package:flutter_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'Bodeyyyy'); //Service
  @override
  void initState() {
    super.initState();
    final postModel = PostModel()
      ..userId = 1
      ..body = 'sdgd'
      ..title = 'dffdg'
      ..id = 5;
    postModel.body = 'fgfg';
    final postModel2 = PostModel2(0, 0, 'dsf', 'sdgsg');
    postModel2.body = 'degısk';
    PostModel3 postModel3 = PostModel3(0, 0, 'dsf', 'sdgsg');
    //postModel3.body = 'fsdf'; final çünkü ilk geldiği gibi kalır.
    final postModel4 = PostModel4(userId: 0, id: 0, title: 'dfsf', body: 'adsfdf');
    var postModel5 = PostModel5(id: 0, userId: 0, title: 'sdgdg', body: 'sdgs');
    //postModel5 de private olduğu için değişkenlere erişemiyoruz.
    postModel5.userId = 10; //set
    postModel5.userId; //get
    PostModel6 postModel6 = PostModel6(id: 0, userId: 0, title: 'sdgfg', body: 'sdfgfg');
    PostModel7 postModel7 = PostModel7(title: 'ghkjg');
    PostModel8 postModel8 = PostModel8(body: 'dsgg'); //Service

    ///reuired, final, _param kelimeleri farklılık yaratıyor.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'Titleeee');
            user9.updateBody(null);
          });
        },
      ),
      body: Text(user9.title ?? 'Not has any data'),
    );
  }
}
