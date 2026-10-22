public class SalaryCalculator {
	private int baseSalary = 1000;
	private int maxSalary = 2000;

	public double salaryMultiplier(int daysSkipped) {
		return daysSkipped >= 5 ? 0.85 : 1.0;     
	}

	public int bonusMultiplier(int productsSold) {
		return productsSold >= 20 ? 13 : 10;
	}

	public double bonusForProductsSold(int productsSold) {
		return productsSold * bonusMultiplier(productsSold);
	}

	public double finalSalary(int daysSkipped, int productsSold) {
		double calculatedSalary = baseSalary * salaryMultiplier(daysSkipped) + bonusForProductsSold(productsSold);
		return calculatedSalary > maxSalary ? maxSalary : calculatedSalary;
	} 
}

