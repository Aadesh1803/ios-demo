import 'package:get/get.dart';
import 'package:ios_demo/home_controller.dart';
import 'package:ios_demo/main.dart';
import 'package:ios_demo/schedule_controller.dart';
import 'package:ios_demo/schedule_widget.dart';
import 'package:ios_demo/view_league_controller.dart';
import 'package:ios_demo/view_league_screen.dart';

class Routes {
  static const String home = '/home';
  static const String viewLeague = '/viewLeague';
  static const String schedule = '/schedule';

  static List<GetPage<dynamic>> get getPages {
    return [
      GetPage(
        name: Routes.home,
        page: () => const MyHomePage(),
        binding: BindingsBuilder.put(
          () => HomeController(),
          // permanent: true,
        ),
        transition: Transition.cupertino,
      ),
      GetPage(
        name: Routes.viewLeague,
        page: () => ViewMyLeagueScreen(),
        binding: BindingsBuilder.put(
          () => ViewMyLeagueController(),
          // permanent: true,
        ),
        transition: Transition.cupertino,
      ),
      GetPage(
        name: Routes.schedule,
        page: () => const ScheduleWidget(),
        binding: BindingsBuilder.put(
          () => ScheduleController(),
          // permanent: true,
        ),
        transition: Transition.cupertino,
      ),
    ];
  }
}
