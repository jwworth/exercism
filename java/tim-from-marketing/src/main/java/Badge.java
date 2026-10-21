class Badge {
	public String print(Integer id, String name, String department) {
		String formattedDepartment = department == null ? "OWNER" : department.toUpperCase();

		if(id == null) {
			return name + " - " + formattedDepartment;
		}

		return "[" + id + "] - " + name + " - " + formattedDepartment;

	}
}
