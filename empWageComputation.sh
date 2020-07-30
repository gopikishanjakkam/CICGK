#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

isFullTime=0
isPartTime=1
empWagePerHr=20

totalDaysWorked=0
totalEmpHrs=0
numOfDays=20
workingHrs=100

count=0
declare -A dailyWage

function empHrsFunc()
{
case $1 in
     $isFullTime)
        empHrs=8;
         ;;
     $isPartTime)
        empHrs=4;
         ;;
               *)
        empHrs=0;
         ;;
esac
echo $empHrs
}

while [[ $totalEmpHrs -lt $workingHrs && $totalDaysWorked -lt $numOfDays ]]
do
  ((totalDaysWorked++))
  empHrs=$(empHrsFunc $(( $RANDOM%3 )))
  totalEmpHrs=$(($totalEmpHrs+$empHrs))
  dailyWage["Day-$totalDaysWorked"]=$(($empHrs*$empWagePerHr))
  ((count++))
done

totalSalary=$(($empWagePerHr*$totalEmpHrs))
echo "Employee's Wage This month="$totalSalary
echo ${!dailyWage[@]}
echo ${dailyWage[@]}
