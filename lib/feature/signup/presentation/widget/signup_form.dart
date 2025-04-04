// import 'package:cajoo/core/widgets/custom_text_form_field.dart';
// import 'package:flutter/material.dart';

// class SignupForm extends StatefulWidget {
//   const SignupForm({super.key});

//   @override
//   State<SignupForm> createState() => _SignupFormState();
// }

// class _SignupFormState extends State<SignupForm> {
//   bool isObscureText = true;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(height: 50),
//         const CustomTextFormFeild(
          
//           hintText: 'Name',
//         ),
//         const SizedBox(height: 16),
//         const CustomTextFormFeild(
//           controller: ,
//           hintText: 'Email',
//         ),
//         const SizedBox(height: 16),
//         CustomTextFormFeild(
//           hintText: 'Password',
//           suffixIcon: GestureDetector(
//             onTap: () {
//               isObscureText = !isObscureText;
//               setState(() {});
//             },
//             child: Icon(isObscureText
//                 ? Icons.visibility_off_outlined
//                 : Icons.visibility_outlined),
//           ),
//           isObscureText: isObscureText,
//         ),
//       ],
//     );
//   }
// }
