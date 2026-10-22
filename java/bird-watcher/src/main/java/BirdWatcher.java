class BirdWatcher {
	private final int[] birdsPerDay;

	public BirdWatcher(int[] birdsPerDay) {
		this.birdsPerDay = birdsPerDay.clone();
	}

	public static int[] getLastWeek() {
		int[] lastWeek = { 0, 2, 5, 3, 7, 8, 4};
		return lastWeek;
	}

	public int getToday() {
		return this.birdsPerDay[this.birdsPerDay.length - 1];
	}

	public void incrementTodaysCount() {
		int today = getToday();
		this.birdsPerDay[this.birdsPerDay.length - 1] = ++today;
	}

	public boolean hasDayWithoutBirds() {
		boolean result = false;
		for (int i = 0; i < this.birdsPerDay.length; i++) {
			if(this.birdsPerDay[i] == 0) {
				result = true;
				break;
			}
		}

		return result;
	}

	public int getCountForFirstDays(int numberOfDays) {
		int result = 0;
		int limit = Math.min(numberOfDays, 7);

		for(int i = 0; i < limit; i++) {
			result += this.birdsPerDay[i];
		}

		return result;


	}

	public int getBusyDays() {
		int result = 0;

		for(int i = 0; i < this.birdsPerDay.length; i++) {
			if(this.birdsPerDay[i] >= 5) {
				result++;
			}
		} 

		return result;
	}
}
