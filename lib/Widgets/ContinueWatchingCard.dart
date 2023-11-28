import 'package:flutter/material.dart';

class CWCard extends StatefulWidget {
  const CWCard({
    super.key,
  });

  @override
  State<CWCard> createState() => _CWCardState();
}

class _CWCardState extends State<CWCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 150,
            width: 150,
            child: Image(
              image: AssetImage('assets/images/p1.jpg'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: LinearProgressIndicator(
              color: Colors.red,
              value: 0.7,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.info_outline)),
            ],
          ),
        ],
      ),
    );
  }
}
