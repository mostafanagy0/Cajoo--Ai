import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/widgets/custom_check_box.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key, required this.onChecked});
  final void Function(bool) onChecked;
  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChecked(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Text(
            S.of(context).ImagreetoTheTarms,
            style: TextStyles.font14Weight400.copyWith(fontSize: 14),
          ),
        )
      ],
    );
  }
}
