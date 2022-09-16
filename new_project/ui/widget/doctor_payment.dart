import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:medtech/base/ui/theme/provider.dart';
import 'package:medtech/feature/project/domain/payment_for_doctor.dart';

class DoctorPaymentCard extends ConsumerWidget {
  const DoctorPaymentCard({
    super.key,
    required this.doctorPayment,
    required this.onEdit,
    required this.onDelete,
  });

  final PaymentForDoctor doctorPayment;
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
              padding: const EdgeInsets.only(bottom: 3, left: 6),
              child: Text(
                '₽ ${toCurrencyString(
                  (doctorPayment.sum).toString(),
                  thousandSeparator: ThousandSeparator.spaceAndPeriodMantissa,
                ).replaceAll('.00', '')}',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 6),
              child: Text(
                '${doctorPayment.doctorsCount} врачей',
                style: TextStyle(color: theme.colorGrey),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                doctorPayment.task,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.start,
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
