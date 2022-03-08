import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../decision_service.dart';
import 'decision_view_card.dart';
import 'decision_view_empty.dart';
import 'decision_view_link.dart';
import 'decision_view_stack.dart';

class DecisionSdkLayout extends StatelessWidget {
  const DecisionSdkLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DecisionSdkService service = Provider.of<DecisionSdkService>(context);
    return service.model.isLinked
        ? LayoutBuilder(
            builder: (context, constraints) => DecisionSdkViewStack(
                noCardsPlaceholder: const DecisionSdkViewEmpty(),
                // TODO MAX 3 CARDS
                // todo add to ignore list
                children: service.model.cards
                    .map((card) => DecisionSdkViewCard(
                        constraints: constraints,
                        onSwipeRight: () => service.controller.removeCard(
                            context: context,
                            index: service.model.cards.indexOf(card),
                            callback: card.callbackYes),
                        onSwipeLeft: () => service.controller.removeCard(
                            context: context,
                            index: service.model.cards.indexOf(card),
                            callback: card.callbackNo),
                        style: service.style,
                        child: card.content(context)))
                    .toList()))
        : const DecisionSdkViewLink();
  }
}