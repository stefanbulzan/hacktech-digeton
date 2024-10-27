import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

MarkdownStyleSheet githubMarkdownDarkStyleSheet(BuildContext context) {
  final theme = Theme.of(context);
  final colorScheme = theme.colorScheme;

  return MarkdownStyleSheet(
    a: TextStyle(
      color: colorScheme.primary,
      decoration: TextDecoration.underline,
    ),
    p: context.textTheme.bodyLarge,
    code: const TextStyle(
      color: Colors.white,
      backgroundColor: Colors.transparent,
      fontSize: 14,
      fontFamily: 'SourceCodePro',
    ),
    codeblockPadding: const EdgeInsets.all(8),
    codeblockDecoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(8),
    ),
    blockquote: const TextStyle(
      color: Colors.black,
      fontStyle: FontStyle.italic,
    ),
    blockquoteDecoration: BoxDecoration(
      color: Colors.black,
      border: Border(left: BorderSide(color: colorScheme.primary, width: 4)),
    ),
    h1: TextStyle(
      color: colorScheme.onSurface,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    h2: TextStyle(
      color: colorScheme.onSurface,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    h3: TextStyle(
      color: colorScheme.onSurface,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    h4: TextStyle(
      color: colorScheme.onSurface,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    h5: TextStyle(
      color: colorScheme.onSurface,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    h6: TextStyle(
      color: colorScheme.onSurface,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    em: TextStyle(
      color: colorScheme.onSurface,
      fontStyle: FontStyle.italic,
    ),
    strong: TextStyle(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.bold,
    ),
    del: TextStyle(
      color: colorScheme.onSurface,
      decoration: TextDecoration.lineThrough,
    ),
    blockSpacing: 8,
    listBullet: TextStyle(color: colorScheme.onSurface),
    horizontalRuleDecoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          width: 2,
          color: Colors.grey[700]!,
        ),
      ),
    ),
  );
}
