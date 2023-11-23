// import 'package:flutter/material.dart';
// import 'package:frontend/presentation/core/widget/colors.dart';

// class OrderStep extends StatelessWidget {
//   final String title;
//   final bool isActive;
//   final IconData iconData;

//   const OrderStep({
//     Key? key,
//     required this.title,
//     required this.isActive,
//     this.iconData = Icons.check_circle_outline,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var activeColor =
//         isActive ? Theme.of(context).primaryColor : Colors.grey.shade300;
//     var activeTextColor =
//         isActive ? Theme.of(context).textTheme.headline6?.color : Colors.grey;
//     var activeIconColor = isActive ? Colors.white : Colors.grey.shade400;

//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 12.0),
//       child: Row(
//         children: [
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               AnimatedContainer(
//                 duration: Duration(milliseconds: 500),
//                 curve: Curves.easeInOut,
//                 height: 30,
//                 width: 30,
//                 decoration: BoxDecoration(
//                   color: activeColor,
//                   shape: BoxShape.circle,
//                   boxShadow: isActive
//                       ? [
//                           BoxShadow(
//                             color: activeColor.withAlpha(150),
//                             blurRadius: 15,
//                             spreadRadius: 3,
//                           ),
//                         ]
//                       : [],
//                 ),
//                 child: Center(
//                   child: Icon(
//                     iconData,
//                     color: activeIconColor,
//                     size: isActive ? 18 : 16,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 8),
//               AnimatedContainer(
//                 duration: Duration(milliseconds: 500),
//                 width: 2,
//                 height: isActive ? 50 : 0,
//                 color: activeColor,
//               ),
//             ],
//           ),
//           SizedBox(width: 20),
//           Expanded(
//             child: AnimatedDefaultTextStyle(
//               duration: Duration(milliseconds: 500),
//               style: TextStyle(
//                 color: activeTextColor,
//                 fontSize: 18,
//                 fontWeight: FontWeight.w600,
//                 letterSpacing: 0.5,
//               ),
//               child: Text(title),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:frontend/presentation/core/widget/colors.dart';

class OrderStep extends StatelessWidget {
  final String title;
  final bool isActive;
  final IconData iconData;

  const OrderStep({
    Key? key,
    required this.title,
    required this.isActive,
    this.iconData = Icons.check_circle_outline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var activeColor =
        isActive ? Theme.of(context).primaryColor : Colors.grey.shade300;
    var activeTextColor =
        isActive ? Theme.of(context).textTheme.headline6?.color : Colors.grey;
    var activeIconColor = isActive ? Colors.white : Colors.grey.shade400;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: activeColor,
                  shape: BoxShape.circle,
                  boxShadow: isActive
                      ? [
                          BoxShadow(
                            color: activeColor.withAlpha(150),
                            blurRadius: 15,
                            spreadRadius: 3,
                          ),
                        ]
                      : [],
                ),
                child: Center(
                  child: Icon(
                    iconData,
                    color: activeIconColor,
                    size: isActive ? 18 : 16,
                  ),
                ),
              ),
              SizedBox(height: 8),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 2,
                height: isActive ? 50 : 0,
                color: activeColor,
              ),
            ],
          ),
          SizedBox(width: 20),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 500),
                style: TextStyle(
                  color: activeTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
                child: Text(title),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
