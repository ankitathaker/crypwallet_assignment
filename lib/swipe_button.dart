import 'package:crypwallet/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwipeButton extends StatefulWidget {
  const SwipeButton({Key? key}) : super(key: key);

  @override
  State<SwipeButton> createState() => _SwipeButtonState();
}

class _SwipeButtonState extends State<SwipeButton> {
  double translateX = 0.0;
  double translateY = 0.0;
  double myWidth = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.00),
        color: Colors.white,
      ),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: GestureDetector(
        onHorizontalDragUpdate: (event) async {
          if (event.primaryDelta! > 10) {
            _incTansXVal();
          }
        },
        child: Stack(
          children: [
            paymentSuccessful(),
            myWidth == 0.0
                ? Expanded(
                    child: Center(
                      child: Text(
                        "SWIPE TO BUY",
                        style: TextStyle(color: Colors.grey, fontSize: 20.00),
                      ),
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }

  Widget paymentSuccessful() => Transform.translate(
        offset: Offset(translateX, translateY),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 50),
          curve: Curves.linear,
          width: 70 + myWidth,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.00),
            color: buttonColor,
          ),
          child: myWidth > 0.0
              ? InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          "Confirm",
                          style:
                              TextStyle(color: Colors.white, fontSize: 20.00),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    _completed();
                  },
                )
              : Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                  size: 50.00,
                ),
        ),
      );

  _completed() {
    Navigator.of(context).pushReplacementNamed("/completed");
  }

  _incTansXVal() async {
    int canLoop = -1;
    for (var i = 0; canLoop == -1; i++)
      await Future.delayed(Duration(milliseconds: 1), () {
        setState(() {
          if (translateX + 1 <
              MediaQuery.of(context).size.width - (70 + myWidth)) {
            translateX += 1;
            myWidth = MediaQuery.of(context).size.width - (70 + myWidth);
          } else {
            canLoop = 1;
          }
        });
      });
  }
}
