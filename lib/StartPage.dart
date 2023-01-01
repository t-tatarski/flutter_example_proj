import 'package:flutter/material.dart';
import 'main.dart';

class StartPage extends StatelessWidget {

  const StartPage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset('images/bce.png', width: 100,height: 100, semanticLabel: 'badge cisco',),
          ),
          Padding(padding: const EdgeInsets.all(18.0),
          child: Image.network('https://codent.pl/resources/images/material.png',
          width: 150,
          height: 150,
          loadingBuilder: (context, child, progress){
            return progress == null
                ? child
                :  LinearProgressIndicator(value: (progress.cumulativeBytesLoaded/100),
              color: Colors.blueGrey, backgroundColor: Colors.blue,);
          },
          ),),
          Row( children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("lorem ipsum costam costam"),

            ),
            Divider(height: 4,color: Colors.pink,)
          ],)
        ],
      ),  
      ),
    );
  }
}
