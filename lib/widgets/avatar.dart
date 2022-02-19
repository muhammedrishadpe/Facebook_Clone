import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;

  Avatar({
    @required this.displayImage,
    @required this.displayStatus,
  });

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    // if (displayStatus == true) {
    //   statusIndicator = Positioned(
    //     bottom: 0,
    //     right: 1.0,
    //     child: Container(
    //       width: 15,
    //       height: 15,
    //       decoration: BoxDecoration(
    //         color: Colors.greenAccent,
    //         shape: BoxShape.circle,
    //         border: Border.all(
    //           color: Colors.white,
    //           width: 2,
    //         ),
    //       ),
    //     ),
    //   );
    // } else {
    //   statusIndicator = SizedBox();
    // }
    return Container(
      padding: EdgeInsets.only(
        left: 4,
        right: 4,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              displayImage,
              width: 50,
              height: 50,
            ),
          ),
          displayStatus == true
              ? Positioned(
                  bottom: 0,
                  right: 1.0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
