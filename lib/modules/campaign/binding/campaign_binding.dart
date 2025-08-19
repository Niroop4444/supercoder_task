import 'package:get/get.dart';
import 'package:supercoder_task_assignment/modules/campaign/controller/campaign_controller.dart';

class CampaignBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CampaignController>(() => CampaignController());
  }
}