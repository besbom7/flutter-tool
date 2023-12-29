import 'package:flutter/material.dart';

class pageDetail extends StatefulWidget {
  var title;
  var amount;
  var date;

  pageDetail(this.title, this.amount, this.date);

  @override
  State<pageDetail> createState() => _pageDetailState(title, amount, date);
}

class _pageDetailState extends State<pageDetail> {
  var title;
  var amount;
  var date;
  _pageDetailState(this.title, this.amount, this.date);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page detail")),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.red,
              child: FittedBox(
                child: Text("${amount}"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Text("${title}",
                style: TextStyle(fontSize: 20, color: Colors.grey)),
          ),
          Container(
            child: Text("${date}",
                style: TextStyle(fontSize: 10, color: Colors.black)),
          ),
        ],
      )),
    );
  }
}
