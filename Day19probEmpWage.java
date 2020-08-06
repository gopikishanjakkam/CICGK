public class EmployeeWageComputation
{
	public static void main(String[] args)
		{
   	System.out.println("Welcome to employee wage computation program on master branch");
		final int IS_FULL_TIME=1;
		final int IS_PART_TIME=2;
		final int WAGE_PER_HR=20;
		int empHrs=0,empWage=0;
		double empCheck=Math.floor(Math.random()*10)%3;
		if(empCheck == IS_FULL_TIME)
			{
				System.out.println("Employee is present for full time");
				empHrs=8;
			}
		else if(empCheck == IS_PART_TIME)
			{
				System.out.println("Employee is present for part time");
				empHrs=4;
			}
		else
				System.out.println("Employee is absent");
				empWage=empHrs*WAGE_PER_HR;
				System.out.println("Employee wage="+empWage);
		}

}
