import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/feature/profile/logic/get_Profile/get_profile_cubit.dart';
import 'package:cajoo/feature/profile/logic/get_profile/get_profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageAndNameProfile extends StatelessWidget {
  const ImageAndNameProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetProfileCubit, GetProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetProfileStateSuccess) {
          final username = state.data.data.username ?? 'Unknown User';

          return _ProfileContent(username: username);
        } else if (state is GetProfileStateLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetProfileStateError) {
          return Text(
            'حدث خطأ: ${state.error.message}',
            style: TextStyles.font32Weight600.copyWith(fontSize: 16),
          );
        } else {
          return const SizedBox(); // Initial or unknown state
        }
      },
    );
  }
}

class _ProfileContent extends StatelessWidget {
  final String username;

  const _ProfileContent({required this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            height: 96,
            width: 96,
            child: CircleAvatar(
              backgroundColor: const Color(0xFFFFFFFF),
              child: Image.asset(
                Assets.imagesOnbording1,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          username,
          style: TextStyles.font32Weight600.copyWith(fontSize: 18),
        ),
      ],
    );
  }
}
