import 'package:flutter/material.dart';
import 'package:supercoder_task_assignment/modules/basic_info/view/widgets/phone_field.dart';
import 'package:supercoder_task_assignment/utils/widgets/app_button.dart';
import 'package:supercoder_task_assignment/utils/widgets/custom_app_bar.dart';
import 'package:supercoder_task_assignment/utils/widgets/custom_text_field.dart';
import 'package:supercoder_task_assignment/utils/widgets/headline_text.dart';

class BasicInfoView extends StatelessWidget {
  const BasicInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headlineText("기본정보", context),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  CustomTextField(label: "아이디", hintText: "asdf123", isEditable: false),
                  CustomTextField(label: "이메일", hintText: "asdf123@naver.com"),
                  PhoneField(fieldTitle: "휴대폰 번호", hintText: "010-1234-5678", buttonTitle: "변경하기"),
                  CustomTextField(label: "닉네임", hintText: "장발산"),
                  CustomTextField(label: "인스타그램 아이디", hintText: "ffkdo_sa"),
                  CustomTextField(label: "대표 작업 링크", hintText: "https://www.naver.com/"),
                  CustomTextField(label: "포트폴리오", hintText: "포트폴리오.pdf", trailingIcon: const Icon(Icons.attach_file)),
                  const SizedBox(height: 40),
                  SizedBox(width: double.infinity, child: AppButton(label: "저장하기", onPressed: () {}, isEnabled: false)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
