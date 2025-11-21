class PricingRepository {
  static const double footlongPrice = 11.0;
  static const double sixInchPrice = 7.0;

  double calculatePrice({
    int footlongCount = 0,
    int sixInchCount = 0,
    double extras = 0.0,
    int? quantity,
    bool? footlong,
    bool toasted = false,
  }) {

    if (quantity != null && footlong != null) {
      final int fCount = footlong ? quantity : 0;
      final int sCount = footlong ? 0 : quantity;
      return (fCount * footlongPrice) + (sCount * sixInchPrice) + extras;
    }

    return (footlongCount * footlongPrice) +
        (sixInchCount * sixInchPrice) +
        extras;
  }

  String formatCurrency(double amount) => '£${amount.toStringAsFixed(2)}';
}
