double taxCalculator(yearlyIncome) {
  double tax;
  if (yearlyIncome <= 500000) {
    tax = yearlyIncome * 0.01;
  }else if (yearlyIncome <= 700000) {
    tax = 500000 * 0.01 + (yearlyIncome - 500000) * 0.1;
  }else if (yearlyIncome <= 1000000) {
    tax = 500000 * 0.01 + (700000 - 500000) * 0.1 + (yearlyIncome - 700000) * 0.20;
  }else if (yearlyIncome <= 2000000) {
    tax = 500000 * 0.01 + (700000 - 500000) * 0.1 + (1000000 - 700000) * 0.2 + (yearlyIncome - 1000000) * 0.3;
  }else if (yearlyIncome > 2000000) {
    tax = 500000 * 0.01 + (700000 - 500000) * 0.1 + (1000000 - 700000) * 0.2 + (2000000 - 1000000) * 0.3 + (yearlyIncome - 2000000) * 0.3;
  } else {
    throw Exception("Invalid!");
  }
  return tax;
}