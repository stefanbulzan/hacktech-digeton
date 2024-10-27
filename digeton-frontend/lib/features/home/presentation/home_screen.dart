import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacktech_app/features/home/application/chat_notifier.dart';
import 'package:hacktech_app/features/home/presentation/chat_screen.dart';
import 'package:hacktech_app/features/home/presentation/widgets/out_of_office_modal.dart';
import 'package:hacktech_app/features/home/presentation/widgets/stage_app_bar.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  final FocusNode _focusNode = FocusNode();
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 1, vsync: this);
    _tabController.addListener(_handleTabSelection);
    _goToFirstTab();
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabSelection);
    _tabController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {
        _currentIndex = _tabController.index;
      });
    }
  }

  void _dismissKeyboard() {
    if (_focusNode.hasFocus) {
      _focusNode.unfocus();
    }
  }

  void _goToFirstTab() {
    _tabController.animateTo(0);
  }

  @override
  Widget build(BuildContext context) {
    final chatMessages =
        ref.watch(chatNotifierProvider.select((state) => state.messages));

    return GestureDetector(
      onTap: _dismissKeyboard,
      child: Scaffold(
        backgroundColor: context.colorScheme.surface,
        appBar: StackAppBar(
          trailing: IconButton(
              icon: const Icon(Icons.meeting_room),
              onPressed: () {
                CreateNewTeamModal.show(context: context);
              }),
          logoPath: 'assets/icons/logo.png',
          title: 'DigeTon',
        ),
        body: ChatScreen(),
      ),
    );
  }
}
