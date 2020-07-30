#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

isFullTime=0
isPartTime=1
empWagePerHr=20

totalDaysWorked=0
totalEmpHrs=0
numOfDays=20
workingHrs=100

while [[ $totalEmpHrs -lt $workingHrs && $totalDaysWorked -lt $numOfDays ]]
do
  ((totalDaysWorked++))
  randomcheck=$(( $RANDOM%3 ));
  case $randomcheck in
          $isFullTime)
            echo "Employee is present for full time";
            empHrs=8;
             ;;
          $isPartTime)
            echo "Employee is present for Part time";
            empHrs=4;
             ;;
                    *)
            echo "Employee is absent";
            empHrs=0;
  esac
  totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalSalary=$(($empWagePerHr*$totalEmpHrs))
echo "Employee's Wage This month="$totalSalary
