import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  var title;
  var value;

  ContainerBox(this.title, this.value) {}

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        decoration: BoxDecoration(
            color: Colors.pink, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image.asset("assert/images/image.png",
                        width: 50, height: 50),
                  ),
                ),
                FloatingActionButton(
                    heroTag: "$value", onPressed: () {}, child: Icon(Icons.add))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Text(
                  "${title}",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                Expanded(
                    child: Text(
                  "${value}",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))
              ],
            )
          ],
        ));
  }
}
