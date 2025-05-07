import 'package:cajoo/core/di/dependancy_ingection.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/feature/profile/logic/cubit/delet_account_cubit.dart';
import 'package:cajoo/feature/profile/logic/cubit/delete_account_state.dart';
import 'package:cajoo/feature/profile/presentation/widgets/custom_profile_option.dart';
import 'package:cajoo/feature/profile/presentation/widgets/logout_helper.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogoutBlocProvider extends StatelessWidget {
  const LogoutBlocProvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DeleteAccountCubit>(),
      child: BlocConsumer<DeleteAccountCubit, DeleteAccountState>(
        listener: (context, state) async {
          if (state is DeleteAccountSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(S.of(context).DeletingAccount),
              ),
            );
            await Future.delayed(const Duration(milliseconds: 300));
            await LogoutHelper.logout(context);
          }
        },
        builder: (context, state) {
          if (state is DeleteAccountLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return CustomProfileOption(
            icon: Assets.imagesLogoutOutline,
            title: S.of(context).DeleteAccount,
            onTap: () {
              context.read<DeleteAccountCubit>().deleteAccount();
            },
          );
        },
      ),
    );
  }
}
