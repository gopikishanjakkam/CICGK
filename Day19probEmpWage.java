public class EmployeeWageComputation
{
	public static void main(String[] args)
		{
   	System.out.println("Welcome to employee wage computation program on master branch");
		int IS_PRESENT=1;
		int WAGE_PER_HR=20;
		int empHrs=0,empWage=0;
		double empCheck=Math.floor(Math.random()*10)%2;
		if(empCheck == IS_PRESENT)
			{
				System.out.println("Employee is present");
				empHrs=8;
			}
		else
				System.out.println("Employee is absent");
				empWage=empHrs*WAGE_PER_HR;
				System.out.println("Employee wage="+empWage);
		}

}
