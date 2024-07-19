import 'package:dalel/core/uitils/app_strings.dart';
import 'package:dalel/features/author/presentation/widgets/custom_textField.dart';
import 'package:dalel/features/author/presentation/widgets/custom_texts_span.dart';
import 'package:dalel/features/author/presentation/widgets/custom_welcome.dart';
import 'package:dalel/features/author/presentation/widgets/terms_and_condition_widget.dart';
import 'package:dalel/features/on%20boaring/presentarion/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 80,
                ),
              ),
              const SliverToBoxAdapter(
                child: CustomWelcomWidget(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              const SliverToBoxAdapter(
                child: CustomTextField(text: AppStrings.fristName),
              ),
              const SliverToBoxAdapter(
                child: CustomTextField(text: AppStrings.lastName),
              ),
              const SliverToBoxAdapter(
                child: CustomTextField(text: AppStrings.emailAddress),
              ),
              const SliverToBoxAdapter(
                child: CustomTextField(
                  text: AppStrings.password,
                ),
              ),
              const SliverToBoxAdapter(child: TermsAndConditionWidget()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 60,
                ),
              ),
              SliverToBoxAdapter(
                  child: CustomButton(
                onPressed: () {},
                buttonString: AppStrings.signUp,
              )),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 10,
                ),
              ),
              const SliverToBoxAdapter(
                  child: CustomTextSpan(
                      text1: AppStrings.alreadyHaveAnAccount,
                      text2: AppStrings.signIn)),
            ],
          ),
        ),
      ),
    );
  }
}
