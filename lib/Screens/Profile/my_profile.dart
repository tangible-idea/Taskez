import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:taskez/widgets/DarkBackground/darkRadialBackground.dart';
import 'package:taskez/widgets/Navigation/back_button.dart';
import 'package:taskez/widgets/Navigation/default_back.dart';
import 'package:taskez/widgets/Onboarding/toggle_option.dart';
import 'package:taskez/widgets/Profile/profile_text_option.dart';
import 'package:taskez/widgets/Profile/text_outlined_button.dart';
import 'package:taskez/widgets/dummy/profile_dummy.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final ValueNotifier<bool> totalTaskNotifier = ValueNotifier(true);
  final String tabSpace = "\t\t";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      DarkRadialBackground(
        color: HexColor.fromHex("#181a1f"),
        position: "topLeft",
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                DefaultNav(title: "$tabSpace Profile", type: ProfileDummyType.Button),
                SizedBox(height: 30),
                ProfileDummy(
                    color: HexColor.fromHex("94F0F1"),
                    dummyType: ProfileDummyType.Image,
                    scale: 4.0,
                    image: "assets/man-head.png"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Blake Gordon",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                ),
                Text("blake@email.com",
                    style: GoogleFonts.lato(
                        color: HexColor.fromHex("B0FFE1"), fontSize: 17)),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: OutlinedButtonWithText(width: 75, content: "Edit"),
                ),
                AppSpaces.verticalSpace20,
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF262A34),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          ToggleLabelOption(
                              label: '$tabSpace Show me as away',
                              notifierValue: totalTaskNotifier,
                              icon: Icons.directions_run_rounded,
                              margin: 0.0,),
                        ],
                      ),
                    ),
                    AppSpaces.verticalSpace10,
                    ProfileTextOption(label: '$tabSpace My Projects',
                      icon: Icons.link,
                      margin: 0.0,),
                    AppSpaces.verticalSpace10,
                    ProfileTextOption(label: '$tabSpace Join A Team',
                      icon: Icons.link,
                      margin: 0.0,),
                    AppSpaces.verticalSpace10,
                    ProfileTextOption(label: '$tabSpace Share Profile',
                      icon: Icons.link,
                      margin: 0.0,),
                    AppSpaces.verticalSpace10,
                    ProfileTextOption(label: '$tabSpace All My Task',
                      icon: Icons.link,
                      margin: 0.0,)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}
