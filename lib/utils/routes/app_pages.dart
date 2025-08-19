import 'package:get/get.dart';
import 'package:supercoder_task_assignment/modules/basic_info/view/basic_info_view.dart';
import 'package:supercoder_task_assignment/modules/campaign/binding/campaign_binding.dart';
import 'package:supercoder_task_assignment/modules/campaign/view/campaign_view.dart';
import 'package:supercoder_task_assignment/modules/dashboard/binding/dashboard_binding.dart';
import 'package:supercoder_task_assignment/modules/dashboard/view/dashboard_view.dart';
import 'package:supercoder_task_assignment/modules/my_info/view/my_info_view.dart';
import 'package:supercoder_task_assignment/modules/password/view/password_view.dart';
import 'package:supercoder_task_assignment/modules/splash/binding/splash_binding.dart';
import 'package:supercoder_task_assignment/modules/splash/view/splash_view.dart';
import 'package:supercoder_task_assignment/utils/routes/routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.campaign,
      page: () => const CampaignView(),
      binding: CampaignBinding(),
    ),
    GetPage(
      name: Routes.myInfo,
      page: () => const MyInfoView(),
    ),
    GetPage(
      name: Routes.basicInfo,
      page: () => const BasicInfoView(),
    ),
    GetPage(
      name: Routes.myInfo,
      page: () => const PasswordView(),
    ),
  ];
}