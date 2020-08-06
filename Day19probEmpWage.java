public class EmployeeWageComputation
{
	public static void main(String[] args)
		{
   	System.out.println("Welcome to employee wage computation program on master branch");
		final int IS_FULL_TIME=1;
		final int IS_PART_TIME=2;
		final int WAGE_PER_HR=20;
		final int NUM_OF_WORKING_DAYS=20;

		int empHrs=0,empWage=0,totalEmpWage=0;
		for(int day=1;day<=NUM_OF_WORKING_DAYS;day++)
		{
			double empCheck=Math.floor(Math.random()*10)%3;
			switch((int)empCheck)
				{
				case IS_FULL_TIME:
					System.out.println("Employee is present for full time");
					empHrs=8;
					break;
				case IS_PART_TIME:
					System.out.println("Employee is present for part time");
					empHrs=4;
					break;
				default:
					System.out.println("Employee is absent");
					empHrs=0;
				}
				empWage=empHrs*WAGE_PER_HR;
				totalEmpWage+=empWage;
				System.out.println("Employee wageon day "+day+"="+empWage);
		}
		System.out.println("Employee Wage This Month="+totalEmpWage);
		}

}
