#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

isFullTime=0
isPartTime=1
empWagePerHr=20

totalDaysWorked=0
totalEmpHrs=0
numOfDays=20
workingHrs=100

function empHrsFunc()
{
case $1 in
     $isFullTime)
        empHrs=8;
        echo $empHrs
         ;;
     $isPartTime)
        empHrs=4;
        echo $empHrs
         ;;
               *)
        empHrs=0;
        echo $empHrs
         ;;
esac
}

while [[ $totalEmpHrs -lt $workingHrs && $totalDaysWorked -lt $numOfDays ]]
do
  ((totalDaysWorked++))
  empHrs=$(empHrsFunc $(( $RANDOM%3 )))
  totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($empWagePerHr*$totalEmpHrs))
echo "Employee's Wage This month="$totalSalary
