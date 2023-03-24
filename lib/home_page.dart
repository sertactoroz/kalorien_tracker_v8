// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:kalorientracker/view/pages/profile_screen.dart';
// import 'package:kalorientracker/view/widgets/appbar_custom.dart';
// import 'package:kalorientracker/view/widgets/buttom_navbar_custom.dart';
// import 'package:kalorientracker/view_models/provider/home_screen_view_model.dart';

// class HomeHome extends StatefulWidget {
//   const HomeHome({super.key});

//   @override
//   State<HomeHome> createState() => _HomeHomeState();
// }

// class _HomeHomeState extends State<HomeHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppbarCustom(),
//       body: screen,
//       backgroundColor: Colors.black,
//       bottomNavigationBar: const ButtomNavbarCustom(),
//     );
//   }

//   // PreferredSizeWidget? get appbar {
//   //   switch (context.watch<HomeScreenViewModel>().page) {
//   //     case 0:
//   //       return PreferredSize(
//   //         preferredSize: Size.fromHeight(65),
//   //         child: AppbarCustom(),
//   //       );

//   //     // case 1:
//   //     //   return PreferredSize(
//   //     //     preferredSize: Size.fromHeight(65),
//   //     //     child: DiscoverySearchBar(),
//   //     //   );
//   //     // case 3:
//   //     //   return PreferredSize(
//   //     //     preferredSize: Size.fromHeight(20),
//   //     //     child: ReelsAppbar(),
//   //     //   );
//   //     case 4:
//   //       return PreferredSize(
//   //         preferredSize: Size.fromHeight(280),
//   //         child: ProfileScreen(),
//   //       );
//   //     // case 3:
//   //     //   return ReelsAppbar();

//   //     default:
//   //       return null;
//   //   }
//   // }

//   Widget get screen {
//     switch (context.watch<HomeScreenViewModel>().page) {
//       case 0:
//         return const HomeHome();
//       // case 1:
//       //   return const WidgetGrid();
//       // // case 2:
//       // //   return ReelsBody();
//       // case 3:
//       //   return const ();
//       // case 4:
//       // return const ProfileScreen();
//       default:
//         return Container();
//     }
//   }
// }
