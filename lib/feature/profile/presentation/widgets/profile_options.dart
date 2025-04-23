import 'package:cajoo/core/di/dependancy_ingection.dart';
import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/feature/profile/logic/cubit/delet_account_cubit.dart';
import 'package:cajoo/feature/profile/logic/cubit/delete_account_state.dart';
import 'package:cajoo/feature/profile/presentation/widgets/custom_profile_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomProfileOption(
          icon: Assets.imagesEditeoutline,
          title: 'Edit Profile',
          onTap: () {
            context.pushNamed(Routes.editeprofile);
          },
        ),
        const SizedBox(
          height: 12,
        ),
        CustomProfileOption(
          icon: Assets.imagesIcBaselineHistory,
          title: 'History',
          onTap: () {},
        ),
        const SizedBox(
          height: 12,
        ),
        CustomProfileOption(
          icon: Assets.imagesHelpOutline,
          title: 'Help & support',
          onTap: () {
            context.pushNamed(Routes.helpandsupport);
          },
        ),
        const SizedBox(
          height: 12,
        ),
        BlocProvider(
          create: (context) => getIt<DeleteAccountCubit>(),
          child: BlocConsumer<DeleteAccountCubit, DeleteAccountState>(
            listener: (context, state) {
              if (state is DeleteAccountSuccess) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content:
                        Text('Deleting Your Account Is Done Successfully..'),
                  ),
                );
                context.pushReplacementNamed(Routes.loginView);
              }
            },
            builder: (context, state) {
              if (state is DeleteAccountLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              return CustomProfileOption(
                icon: Assets.imagesLogoutOutline,
                title: 'Logout',
                onTap: () {
                  context.read<DeleteAccountCubit>().deleteAccount();
                },
              );
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
