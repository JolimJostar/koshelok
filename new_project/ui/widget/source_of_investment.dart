import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medtech/base/ui/theme/provider.dart';
import 'package:medtech/base/ui/widget/mutate_project_related/filter_widget.dart';
import 'package:medtech/feature/new_project/domain/model/create_fund_request.dart';

class SourceOfInvestmentCard extends ConsumerWidget {
  const SourceOfInvestmentCard({
    super.key,
    required this.createFundRequestNavigationResult,
    required this.onEdit,
    required this.onDelete,
  });

  final CreateFundRequestNavigationResult createFundRequestNavigationResult;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: theme.colorGrey),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          top: 9,
          right: 28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 6),
              child: Text(
                '₽ ${toCurrencyString(
                  (createFundRequestNavigationResult.sum).toString(),
                  thousandSeparator: ThousandSeparator.spaceAndPeriodMantissa,
                ).replaceAll('.00', '')}',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            if (createFundRequestNavigationResult.presentationFilename != null)
              Padding(
                padding: const EdgeInsets.only(left: 6, bottom: 3),
                child: Text(
                  '${createFundRequestNavigationResult.presentationFilename}',
                  style: TextStyle(fontSize: 16, color: theme.colorMain),
                  textAlign: TextAlign.start,
                ),
              ),
            if (createFundRequestNavigationResult.presentationFilename != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 12, left: 6),
                child: Text(
                  createFundRequestNavigationResult.isAttachmentsAccepted ? 'Одобрена' : 'Не одобрена',
                  style: TextStyle(color: theme.colorGrey),
                  textAlign: TextAlign.start,
                ),
              ),
            const Padding(
              padding: EdgeInsets.only(left: 6, bottom: 3),
              child: Text(
                'Источники инвестиций',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 6),
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  for (final fundReqest in createFundRequestNavigationResult.createFundRequestSources)
                    FilterWidget(
                      name: fundReqest.name,
                    ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 11),
                    child: TextButton(
                      onPressed: onEdit,
                      child: Text(
                        'ИЗМЕНИТЬ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: theme.colorMain,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: onDelete,
                    child: Text(
                      'УДАЛИТЬ',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: theme.colorMain,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
