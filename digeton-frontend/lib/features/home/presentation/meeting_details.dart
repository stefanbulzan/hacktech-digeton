import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacktech_app/features/home/application/chat_notifier.dart';
import 'package:hacktech_app/features/home/domain/meeting.dart';
import 'package:hacktech_app/features/home/presentation/widgets/stage_app_bar.dart';
import 'package:hacktech_app/features/home/presentation/widgets/stage_search_bar.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';
import 'package:hacktech_app/utils/markdown_github_stylesheet.dart';

class MeetingDetails extends ConsumerStatefulWidget {
  const MeetingDetails({super.key});

  @override
  _MeetingDetails createState() => _MeetingDetails();
}

class _MeetingDetails extends ConsumerState<MeetingDetails>
    with SingleTickerProviderStateMixin {
  final meeting = Meeting(
    title: "AI Feature Implementation Planning",
    participants: [
      "Anna Chen",
      "David Rodriguez",
      "Sarah Johnson",
      "Mike Patel",
      "Lisa Wong"
    ],
    content: """
**Anna Chen (Product Lead)**: Hey everyone! Thanks for joining today. We'll be discussing the AI feature implementation in our app. Let's start with a quick round of introductions and then dive into the technical requirements.

**David Rodriguez (Senior Developer)**: Morning all. I've prepared some notes on the API integration challenges we might face.

**Sarah Johnson (UX Designer)**: Hi team. I've got some wireframes ready to share for the AI chat interface.

**Mike Patel (ML Engineer)**: Hey team. I can walk us through the ML model architecture we're proposing.

**Lisa Wong (Project Manager)**: Good morning! I'll be keeping track of our action items and timeline.
...
""",
  );

  List<String> _bookmarkedSections = [];
  TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final meetingDetails = ref.watch(chatNotifierProvider).meeting;
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      appBar: StackAppBar(
        title: 'Meeting Details',
        backButton: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: _buildTranscriptSection(context),
        ),
      ),
    );
  }

  Widget _buildTranscriptSection(BuildContext context) {
    final meetingDetails = ref.watch(chatNotifierProvider).meeting;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        // Search bar for transcript
        StageSearchBar(
          controller: _searchController,
          onChanged: (query) {
            setState(() {
              _searchQuery = query;
            });
          },
          focusNode: FocusNode(),
        ),

        const SizedBox(height: 24),
        Text(
          meetingDetails?.title ?? "",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        // Transcript content with highlighted search results
        MarkdownBody(
          data: _highlightSearchQuery(
              meetingDetails?.content ?? '', _searchQuery),
          styleSheet: githubMarkdownDarkStyleSheet(context),
          selectable: true,
        ),
      ],
    );
  }

  String _highlightSearchQuery(String text, String query) {
    if (query.isEmpty) return text;
    // Highlight the search query within the text
    return text.replaceAll(
      query,
      '⚠️$query⚠️',
    ); // Use markers to simulate highlight
  }

  void _showParticipantDialog(BuildContext context, String participant) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(participant),
          content: Text("Additional details about $participant."),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Close"),
            ),
          ],
        );
      },
    );
  }
}
