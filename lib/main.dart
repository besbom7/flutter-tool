import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

void main() => runApp(MyPopUpMenu());

class MyPopUpMenu extends StatelessWidget {
  const MyPopUpMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("popup menu")),
        body: Center(
          child: MyButton(),
        ),
      ),
    );
  }
}

//install popover in pub dev
//import 'package:popover/popover.dart';
 
class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(Icons.menu),
      //use function show popup menu
      onTap: () => showPopover(
         //set position popup menu
          direction: PopoverDirection.top,
          width: 200,
          height: 300,
          context: context,
          //builder widget for popup menu
          bodyBuilder: (context) => Column(
                children: [
                  Container(
                    height: 50,
                    color: C  olors.red,
                  ),
                  Container(
                    height: 50,
                    color: Colors.green,
                  ),
                  Container(
                    
                    height: 50,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 50,
                    color: Colors.blue,
                  )
                ],
              )),
    );
  }
}
