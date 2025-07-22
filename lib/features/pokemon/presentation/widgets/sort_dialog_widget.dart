import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'option_button_widget.dart';

import '../presentation.dart';

class SortDialogWidget extends ConsumerWidget {
  const SortDialogWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentOrder = ref.watch(getPokemonListProvider.notifier).order;

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sort by:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 16),
          OptionButtonWidget(
            label: 'Number',
            value: PokemonOrder.number,
            groupValue: currentOrder,
            onChanged: (value) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ref
                    .read(getPokemonListProvider.notifier)
                    .setOrder(value!);
                context.pop();
              });
            },
          ),
          OptionButtonWidget(
            label: 'Name',
            value: PokemonOrder.name,
            groupValue: currentOrder,
            onChanged: (value) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                ref
                    .read(getPokemonListProvider.notifier)
                    .setOrder(value!);
                context.pop();
              });
            },
          ),
        ],
      ),
    );
  }
}
