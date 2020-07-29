#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

isFullTime=0
isPartTime=1
empWagePerHr=20
randomcheck=$(( $RANDOM%3 ));
if [ $isFullTime -eq $randomcheck ];
then
    echo "Employee is present for full time";
    empHrs=8;
elif [ $isPartTime -eq $randomcheck ];
then
    echo "Employee is present for Part time";
    empHrs=4;
else
    echo "Employee is absent";
    empHrs=0;
fi

salary=$(($empWagePerHr*$empHrs))
echo "Employees Wage Today="$salary
