import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hacktech_app/features/home/application/chat_notifier.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

class SuggestionsWidget extends ConsumerWidget {
  const SuggestionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: getSuggestions(context).length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          margin: const EdgeInsets.only(
            top: 16,
            left: 8,
            right: 8,
          ),
          decoration: BoxDecoration(
            color: context.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: InkWell(
            splashColor: context.colorScheme.primary.withOpacity(0.5),
            onTap: () {
              ref
                  .read(chatNotifierProvider.notifier)
                  .sendMessage(getSuggestions(context)[index]);
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icons/prompt_suggestion.png',
                  color: context.colorScheme.onSurface,
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    getSuggestions(context)[index],
                    style: context.textTheme.bodyLarge,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  List<String> getSuggestions(BuildContext context) {
    return [
      'Please provide a brief summary of what happened while I was out of the office.',
      'Could you recap the key points from the last meeting?',
      'What is the current status of the project?',
      'Who is responsible for the UI/UX design?',
    ];
  }
}
