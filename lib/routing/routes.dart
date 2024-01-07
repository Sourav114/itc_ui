import 'package:get/get_navigation/get_navigation.dart';
import 'package:itc_ui/pages/audit_list.dart';
import 'package:itc_ui/pages/image_screen.dart';
import 'package:itc_ui/pages/upcoming_audit.dart';
import 'package:itc_ui/routing/route_names.dart';

class Routes{
  static appRoutes() => [
    GetPage(
        name: RouteNames.upcomingAudit,
        page: () => const UpcomingAudit(),
        transition: Transition.upToDown),
    GetPage(
        name: RouteNames.auditList,
        page: () => const AuditList(),
        transition: Transition.upToDown),
    GetPage(
        name: RouteNames.imageScreen,
        page: () => const ImageScreen(),
        transition: Transition.upToDown),
  ];
}