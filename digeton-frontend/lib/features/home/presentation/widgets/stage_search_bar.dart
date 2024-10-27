import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hacktech_app/utils/build_context_extensions.dart';

class StageSearchBar extends ConsumerStatefulWidget {
  const StageSearchBar({
    required this.focusNode,
    this.controller,
    this.onChanged,
    this.onClosed,
    this.onTap,
    this.showFilter = false,
    super.key,
  });

  final FocusNode focusNode;
  final void Function(String)? onChanged;
  final void Function()? onClosed;
  final void Function()? onTap;
  final bool showFilter;
  final TextEditingController? controller;

  @override
  ConsumerState<StageSearchBar> createState() => _StageSearchBarState();
}

class _StageSearchBarState extends ConsumerState<StageSearchBar>
    with SingleTickerProviderStateMixin {
  Timer? _debounce;
  late final TextEditingController _internalController;
  late final AnimationController _animationController;
  late final Animation<double> _animation;
  late FocusNode _focusNode;

  bool _isFilteringActive = false;
  final List<String> _filters = []; // Placeholder filter list

  @override
  void initState() {
    super.initState();
    _internalController = widget.controller ?? TextEditingController();
    _internalController.addListener(_onSearchChanged);
    _focusNode = widget.focusNode;
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _internalController.dispose();
    }
    _debounce?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      widget.onChanged?.call(_internalController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    _updateFilteringState();
    return Column(
      children: [
        _buildSearchBar(),
        _buildFilterChips(),
      ],
    );
  }

  void _updateFilteringState() {
    _isFilteringActive = _filters.isNotEmpty && widget.showFilter;

    if (_isFilteringActive) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  Widget _buildSearchBar() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: _getSearchBarDecoration(),
      child: TextField(
        controller: _internalController,
        focusNode: _focusNode,
        decoration: InputDecoration(
          hintText: 'Search In Meeting',
          prefixIcon: _buildSearchIcon(),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: _buildTrailingWidgets(),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.vertical(
              top: const Radius.circular(12),
              bottom: Radius.circular(_isFilteringActive ? 0 : 12),
            ),
          ),
        ),
        onChanged: (value) => _onSearchChanged(),
        onTap: widget.onTap,
      ),
    );
  }

  BoxDecoration _getSearchBarDecoration() {
    return BoxDecoration(
      color: context.colorScheme.surfaceBright,
      borderRadius: BorderRadius.vertical(
        top: const Radius.circular(12),
        bottom: Radius.circular(_isFilteringActive ? 0 : 12),
      ),
    );
  }

  Widget _buildSearchIcon() {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      child: AnimatedOpacity(
        opacity: widget.focusNode.hasFocus ? 1 : 0.7,
        duration: const Duration(milliseconds: 300),
        child: Icon(Icons.search, color: context.colorScheme.outline),
      ),
    );
  }

  List<Widget> _buildTrailingWidgets() {
    return [
      _buildClearButton(),
      if (widget.showFilter) _buildFilterButton(),
    ];
  }

  Widget _buildClearButton() {
    return AnimatedOpacity(
      opacity: widget.focusNode.hasFocus ? 1 : 0,
      duration: const Duration(milliseconds: 300),
      child: IconButton(
        icon: Icon(Icons.close, color: context.colorScheme.outline),
        onPressed: _clearSearch,
      ),
    );
  }

  void _clearSearch() {
    widget.focusNode.unfocus();
    _internalController.clear();
    widget.onClosed?.call();
  }

  Widget _buildFilterButton() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 28,
      width: 84,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: _isFilteringActive
            ? context.colorScheme.primary
            : context.colorScheme.onSurfaceVariant,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _showFilterModal(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.filter_list, color: _getFilterIconColor(), size: 15),
              Text('Filter', style: _getFilterTextStyle()),
            ],
          ),
        ),
      ),
    );
  }

  void _showFilterModal() {
    // Implement your filter modal here
  }

  Color _getFilterIconColor() {
    return _isFilteringActive
        ? context.colorScheme.onSurfaceVariant
        : context.colorScheme.onSurface;
  }

  TextStyle _getFilterTextStyle() {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
          color: _isFilteringActive
              ? context.colorScheme.onSurfaceVariant
              : context.colorScheme.onSurface,
        );
  }

  Widget _buildFilterChips() {
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: SizeTransition(
        sizeFactor: _animation,
        axisAlignment: -1,
        child: Wrap(
          children:
              _filters.map((filter) => _buildAddedFilter(filter)).toList(),
        ),
      ),
    );
  }

  Widget _buildAddedFilter(String filter) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.colorScheme.onSurfaceVariant,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            filter,
            style: context.textTheme.titleMedium!
                .copyWith(color: context.colorScheme.surfaceDim),
          ),
          const SizedBox(width: 6),
          InkWell(
            onTap: () => _removeFilter(filter),
            child: SvgPicture.asset('assets/icons/close-icon.svg'),
          ),
        ],
      ),
    );
  }

  void _removeFilter(String filter) {
    setState(() {
      _filters.remove(filter);
    });
  }
}
