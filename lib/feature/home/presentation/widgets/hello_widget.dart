import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/feature/profile/logic/get_Profile/get_profile_cubit.dart';
import 'package:cajoo/feature/profile/logic/get_profile/get_profile_state.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:cajoo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProfileCubit, GetProfileState>(
      builder: (context, state) {
        if (state is GetProfileStateSuccess) {
          final username = state.data.data.username ?? '...';

          return Padding(
            padding: EdgeInsets.only(
              right: isArabic() ? 32 : 0,
              left: isArabic() ? 0 : 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                Text(
                  S.of(context).Hello,
                  style: TextStyles.font20Weight400
                      .copyWith(color: const Color(0xFFD0D6E2)),
                ),
                Text(
                  username,
                  style: TextStyles.font20Weight400
                      .copyWith(color: const Color(0xFFD0D6E2)),
                ),
              ],
            ),
          );
        } else if (state is GetProfileStateLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetProfileStateError) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'حدث خطأ: ${state.error.message}',
              style: const TextStyle(color: Colors.red),
            ),
          );
        } else {
          return const SizedBox(); // Initial or unknown state
        }
      },
    );
  }
}
