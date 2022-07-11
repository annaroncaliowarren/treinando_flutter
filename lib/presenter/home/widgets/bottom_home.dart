import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomHomeBar extends StatelessWidget {
  const BottomHomeBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 25),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: ('o'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_rounded),
                label: (''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.all_inbox_outlined),
                label: (''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.voicemail_rounded),
                label: (''),
              ),
            ],
            selectedItemColor: Colors.amber,
          ),
        ),
      ),
    );
  }
}
//     Container(
//       height: 100,
//       width: double.maxFinite,
//       margin: const EdgeInsets.only(
//         bottom: 15,
//       ),
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Row(
//         children: [
//           Column(
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.house_rounded),
//               ),
//               Icon(
//                 Icons.circle,
//                 size: 5,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

