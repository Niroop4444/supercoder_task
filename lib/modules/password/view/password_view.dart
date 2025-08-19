import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/utils/widgets/app_button.dart';
import 'package:supercoder_task_assignment/utils/widgets/custom_app_bar.dart';
import 'package:supercoder_task_assignment/utils/widgets/custom_text_field.dart';
import 'package:supercoder_task_assignment/utils/widgets/headline_text.dart';

class PasswordView extends StatelessWidget {
  const PasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headlineText("비밀번호 설정", context),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CustomTextField(
                        label: "기본 비밀번호",
                        hintText: "8-16자리 영문, 숫자, 특수문자 조합",
                        isMandatory: true,
                      ),
                      CustomTextField(
                        label: "새 비밀번호",
                        hintText: "8-16자리 영문, 숫자, 특수문자 조합",
                        isMandatory: true,
                      ),
                      CustomTextField(
                        label: "비밀번호 확인",
                        hintText: "비밀번호를 재입력해 주세요.",
                        isMandatory: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Bottom button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: AppButton(
                label: "완료",
                onPressed: () {},
                isEnabled: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}