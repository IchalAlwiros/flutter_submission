import 'package:flutter/material.dart';
import 'package:flutter_submission/theme/theme.dart';
import 'package:flutter_submission/widget/chengeTheme.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  height: 70,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2.0, color: Colors.amber)),
                  child: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('assets/Pas Foto.png'),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome Back',
                        style: titleCategory.copyWith(
                            fontWeight: FontWeight.w700)),
                    Text('Ichal Wira Sukmana',
                        style: titleCategory.copyWith(
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 2),
          ChangeThemeButton(),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(Icons.settings),
                SizedBox(width: 15),
                Text(
                  'Settings',
                  style: titleCategory.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// class TonggleSwitch extends StatefulWidget {
//   @override
//   _TonggleSwitchState createState() => _TonggleSwitchState();
// }

// class _TonggleSwitchState extends State<TonggleSwitch> {
//   bool statusSwitch = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       //color: Colors.amber,
//       child: Row(
//         children: [
//           IconButton(
//             icon: Icon(statusSwitch ? Icons.light_mode : Icons.mode_night),
//             onPressed: () {},
//           ),
//           SizedBox(width: 10),
//           Text(
//             'Mode',
//             style: titleCategory.copyWith(fontWeight: FontWeight.w700),
//           ),
//           Spacer(),
//           Switch(
//               //inactiveThumbColor: Colors.black,
//               //activeTrackColor: Colors.red,
//               // activeColor: Colors.white,
//               //inactiveTrackColor: Colors.red,

//               value: statusSwitch,
//               onChanged: (value) {
//                 setState(() {
//                   statusSwitch = !statusSwitch;
//                 });
//                 print(statusSwitch);
//               }),
//         ],
//       ),
//     );
//   }
// }
