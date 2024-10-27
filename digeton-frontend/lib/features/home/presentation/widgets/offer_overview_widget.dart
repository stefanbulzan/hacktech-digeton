import 'package:flutter/material.dart';
import 'package:hacktech_app/theme/theme.dart';
import 'package:intl/intl.dart';

class MetricsWidget extends StatelessWidget {
  const MetricsWidget({
    required this.title,
    required this.percentage,
    required this.value,
    required this.icon,
    this.isPrice = false,
    super.key,
  });

  final String title;
  final double percentage;
  final double value;
  final bool isPrice;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final f = isPrice
        ? NumberFormat('###,###.0#', 'en_US')
        : NumberFormat('###,###', 'en_US');

    return Container(
      margin: const EdgeInsets.only(
        left: Insets.medium,
      ),
      padding: const EdgeInsets.all(Insets.medium),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.outline.withOpacity(0.1),
        borderRadius: BorderRadius.circular(Insets.medium),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                  ),
                  const SizedBox(width: Insets.small),
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_drop_up,
                        color: Colors.green,
                      ),
                      Text(
                        '$percentage%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: Insets.small),
              Text(
                isPrice ? '\$ ${f.format(value)}' : f.format(value),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
          const SizedBox(width: Insets.extraLarge),
          Icon(
            icon,
            color: Theme.of(context).colorScheme.outline,
            size: 32,
          ),
        ],
      ),
    );
  }
}
