// import 'package:cajoo/core/helpers/extention.dart';
// import 'package:cajoo/core/routing/routes.dart';
// import 'package:cajoo/core/theming/styles.dart';
// import 'package:cajoo/core/widgets/custom_buttom.dart';
// import 'package:cajoo/feature/signup/presentation/widget/have_account_widget.dart';
// import 'package:cajoo/feature/signup/presentation/widget/signup_form.dart';
// import 'package:cajoo/feature/signup/presentation/widget/terms_and_conditions_widget.dart';
// import 'package:flutter/material.dart';

// class SignupViewBody extends StatelessWidget {
//   const SignupViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           const SizedBox(
//             height: 32,
//           ),
//           Center(
//             child: Text(
//               'Sign up',
//               style: TextStyles.font34Weight500Semibold,
//             ),
//           ),
//           const SizedBox(
//             height: 70,
//           ),
//           Container(
//             height: 700,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(36),
//                   topRight: Radius.circular(36),
//                 ),
//                 color: Colors.white),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 14),
//               child: Column(
//                 children: [
//                   const SignupForm(),
//                   const SizedBox(height: 8),
//                   TermsAndConditionsWidget(
//                     onChecked: (p0) {},
//                   ),
//                   const SizedBox(height: 8),
//                   const SizedBox(height: 100),
//                   const CustomButtom(
//                     text: 'Creat Account',
//                   ),
//                   const SizedBox(height: 12),
//                   HaveAccountWidget(
//                     textOne: 'Do you have account?  ',
//                     textTwo: 'Login',
//                     onTap: () {
//                       context.pushNamed(Routes.loginView);
//                     },
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
