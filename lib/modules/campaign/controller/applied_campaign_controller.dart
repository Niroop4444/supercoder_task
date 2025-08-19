import 'package:get/get.dart';
import 'package:supercoder_task_assignment/modules/campaign/model/campaign.dart';
import 'package:supercoder_task_assignment/utils/constants/dummy_data.dart';

class AppliedCampaignController extends GetxController {
  final appliedCampaigns = <Campaign>[].obs;
  var isLoadingMore = false.obs;

  @override
  void onInit() {
    super.onInit();
    // Load initial 10 items only
    appliedCampaigns.addAll(dummyAppliedCampaigns.take(10));
  }

  /// Loads additional campaigns when user scrolls to bottom
  Future<void> loadMore() async {
    if (isLoadingMore.value) return;

    // Check if all available data has already been loaded
    // This prevents unnecessary API calls and provides clear end-of-data indication
    if (appliedCampaigns.length >= dummyAppliedCampaigns.length) return;

    isLoadingMore.value = true;

    await Future.delayed(const Duration(seconds: 2));

    // skip() moves to current position, take() limits batch size to 10
    final nextItems = dummyAppliedCampaigns.skip(appliedCampaigns.length).take(10);
    appliedCampaigns.addAll(nextItems);

    isLoadingMore.value = false;
  }
}
