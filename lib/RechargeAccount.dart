import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'model/amount.dart';
import 'package:letsgyan/style/theme.dart' as Theme;

class RechargeAccount extends StatefulWidget {
  RechargeAccount() : super();
  final String title = "Recharge";

  @override
  RechargeAccountState createState() => RechargeAccountState();
}

class RechargeAccountState extends State<RechargeAccount> {
  List<Amount> payment;
  String selectedPrice;
  bool sort;

  @override
  void initState() {
    sort = false;
    selectedPrice = "0";
    payment = Amount.getPrice();
    super.initState();
  }

  onSelectedRow(bool selected, Amount amount) async {
    setState(() {
      if (selected) {
        selectedPrice = amount.price;
      }
    });
  }

  SingleChildScrollView dataBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: [
          DataColumn(
            label: Text(
              "NO OF QUESTION",
              style: new TextStyle(color: Theme.Colors.textSecondary),
            ),
            numeric: true,
            //  tooltip: "This is First Name",
          ),
          DataColumn(
            label: Text(
              "PRICE",
              style: new TextStyle(color: Theme.Colors.textSecondary),
            ),
            numeric: true,
            //   tooltip: "This is Last Name",
          ),
        ],
        rows: payment
            .map(
              (user) => DataRow(
                  selected: selectedPrice.contains(user.price),
                  onSelectChanged: (b) {
                    onSelectedRow(b, user);
                  },
                  cells: [
                    DataCell(
                      Text(
                        user.ques,
                        style: new TextStyle(color: Theme.Colors.textColor),
                      ),
                    ),
                    DataCell(
                      Text(
                        user.price,
                        style: new TextStyle(color: Theme.Colors.textColor),
                      ),
                    ),
                  ]),
            )
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Theme.Colors.primaryDark,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Expanded(
              child: dataBody(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: OutlineButton(
                    hoverColor: Colors.white,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.white70),
                    child: Text(
                      'PROCEED TO PAY ${selectedPrice}',
                      style: new TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
