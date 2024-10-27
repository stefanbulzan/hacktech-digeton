import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacktech_app/features/home/application/chat_notifier.dart';
import 'package:hacktech_app/features/home/presentation/widgets/continue_button.dart';
import 'package:hacktech_app/features/home/presentation/widgets/custom_text_field.dart';
import 'package:hacktech_app/router/app_router.dart';
import 'package:hacktech_app/shared/nested_scroll_modal.dart';
import 'package:hacktech_app/theme/theme.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

class CreateNewTeamModal extends ConsumerStatefulWidget {
  const CreateNewTeamModal({
    super.key,
  });

  @override
  CreateNewTeamModalState createState() => CreateNewTeamModalState();

  static void show({
    required BuildContext context,
    bool enabled = true,
  }) {
    showModalBottomSheet<Widget>(
      useRootNavigator: true,
      isScrollControlled: true,
      backgroundColor: context.colorScheme.surface,
      context: context,
      builder: (context) => SafeArea(
        child: NestedScrollModal(
          buildHeader: () => const ModalHeader(title: 'Out of Office'),
          headerHeight: () => 64,
          buildContent: () => SingleChildScrollView(
            child: CreateNewTeamModal(),
          ),
        ),
      ),
    );
  }
}

class CreateNewTeamModalState extends ConsumerState<CreateNewTeamModal> {
  final TextEditingController _userName = TextEditingController();
  final FocusNode _rehearsalNameFocus = FocusNode();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_rehearsalNameFocus);
    });
  }

  @override
  void dispose() {
    _rehearsalNameFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultScreenPadding,
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextField(
              enabled: true,
              label: 'Your Name',
              hint: 'John Doe',
              icon: null,
              focusNode: _rehearsalNameFocus,
              controller: _userName,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a team name';
                }
                return null;
              },
            ),
            const SizedBox(height: 32),
            ContinueButton(
              isEnabled: true,
              text: 'See Details',
              onPressed: _outOfOffice,
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Future<void> _outOfOffice() async {
    await ref
        .read(chatNotifierProvider.notifier)
        .getOutOfOfficeDetails(_userName.text);
    await ref
        .read(chatNotifierProvider.notifier)
        .getOutOfOfficeDetails2(_userName.text);
    context.pushNamed(AppRoute.outOfOffice.name);

    FocusScope.of(context).unfocus();

    if (mounted) {
      context.popDialog();
    }
  }
}

class ModalHeader extends StatelessWidget {
  const ModalHeader({
    required this.title,
    this.leadingButton = const SizedBox(
      width: 80 - 12,
    ),
    super.key,
  });

  final String title;
  final Widget leadingButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6),
            width: 82,
            height: 4,
            decoration: BoxDecoration(
              color: context.colorScheme.surfaceContainer.withOpacity(0.3),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          const SizedBox(height: Insets.normal),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                leadingButton,
                Expanded(
                  child: Text(
                    title,
                    style: context.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: 80,
                  child: InkWell(
                    onTap: () {
                      context.popDialog();
                    },
                    child: Center(
                      child: Container(
                        width: 30,
                        height: 30,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: context.colorScheme.surfaceContainer
                                .withOpacity(0.3),
                          ),
                        ),
                        child: Icon(
                          Icons.close,
                          size: 16,
                          color: context.colorScheme.outline,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: Insets.smallNormal),
          Divider(
            color: context.colorScheme.surfaceContainer.withOpacity(0.3),
            height: 0,
          ),
        ],
      ),
    );
  }
}
