// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:heroine/heroine.dart';
// import 'package:lorem_gen/lorem_gen.dart';
//
//
// final springNotifier = ValueNotifier(CupertinoMotion.bouncy());
// final flightShuttleNotifier =
// ValueNotifier<HeroineShuttleBuilder>(const FlipShuttleBuilder());
// final adjustSpringTimingToRoute = ValueNotifier(false);
// final detailsPageAspectRatio = ValueNotifier(1.0);
//
// void main() {
//   runApp(const HeroineExampleApp());
// }
//
// class HeroineExampleApp extends StatelessWidget {
//   const HeroineExampleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListenableBuilder(
//       listenable: Listenable.merge([
//         springNotifier,
//         flightShuttleNotifier,
//         adjustSpringTimingToRoute,
//         detailsPageAspectRatio,
//       ]),
//       builder: (_, __) {
//         return CupertinoApp.router(
//           debugShowCheckedModeBanner: false,
//           routerConfig: appRouter.config(
//             navigatorObservers: () => [
//               HeroController(),
//               HeroineController(),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
//
// final lorem = Lorem.paragraph(numParagraphs: 10);
