import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:one_menu/common_widgets/custom_button.dart';
import 'package:one_menu/common_widgets/custom_text_field.dart';
import 'package:one_menu/helpers/common_enums.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/login_model.dart';
import 'package:one_menu/vm/login_vm.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController(text: "");
    final passwordController = useTextEditingController(text: "");
    final passwordFocus = useFocusNode();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    ref.listen<AsyncValue<LoginResponseModel>>(loginVMProvider, (previous, next) {
      if (next.value?.responseCode == 200) {
        context.goNamed(RouteEnum.home.name);
      }
    });

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.height,
                Text(
                  "Log In",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28),
                ),
                49.height,
                CustomTextField(
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                  hintText: "Email Address",
                  onSubmitted: (p0) => passwordFocus.requestFocus(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required";
                    }
                    final emailRegex = RegexHelper.emailRegex;
                    if (!emailRegex.hasMatch(value)) {
                      return "Enter a valid email address";
                    }
                    return null;
                  },
                ),
                8.height,
                CustomTextField(
                  focusNode: passwordFocus,
                  isPassword: true,
                  controller: passwordController,
                  hintText: "Password",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
                20.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Forgot password?",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                20.height,
                CustomButton(
                  height: 52,
                  width: context.width(),
                  isLoading: ref.watch(loginVMProvider).isLoading,
                  text: "Log in",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                      ),
                  type: Buttontype.primary,
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      await ref.read(loginVMProvider.notifier).login(LoginModel(email: emailController.text, password: passwordController.text));
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
