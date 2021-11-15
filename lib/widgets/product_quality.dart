import 'package:flutter/material.dart';

class ProductQuality extends StatefulWidget {
  final List productsQuality;
  final Function(String) onSelected;
  ProductQuality({this.productsQuality, this.onSelected});

  @override
  _ProductQualityState createState() => _ProductQualityState();
}

class _ProductQualityState extends State<ProductQuality> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child: Row(
        children: [
          for (var i = 0; i < widget.productsQuality.length; i++)
            GestureDetector(
              onTap: () {
                widget.onSelected("${widget.productsQuality[i]}");
                setState(() {
                  _selected = i;
                });
              },
              child: Container(
                width: 42.0,
                height: 42.0,
                decoration: BoxDecoration(
                  // ignore: deprecated_member_use
                  color: _selected == i
                      // ignore: deprecated_member_use
                      ? Theme.of(context).accentColor
                      : Color(0xFFDCDCDC),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  horizontal: 4.0,
                ),
                child: Text(
                  "${widget.productsQuality[i]}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: _selected == i ? Colors.white : Colors.black,
                    fontSize: 14.0,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
