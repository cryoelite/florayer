import 'package:flutter/material.dart';
import './floraFaunaData/ff.dart';

class ListerFlora extends StatefulWidget {
  @override
  _ListerFloraState createState() => _ListerFloraState();
}

class _ListerFloraState extends State<ListerFlora> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 80),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF3377A),
            Color(0xFF9C3788),
            Color(0xFF6B3890),
          ],
        ),
      ),
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            elevation: 5,
            margin: EdgeInsets.all(6),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber[600],
                      width: 2,
                    ),
                  ),
                  child: Text(
                    "$index",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      FF.flora[index],
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        itemCount: FF.flora.length,
      ),
    );
  }
}
