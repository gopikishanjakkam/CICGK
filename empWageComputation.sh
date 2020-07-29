#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

isPresent=1
empWagePerHr=20
randomcheck=$(( $RANDOM%2 ));
if [ $isPresent -eq $randomcheck ];
then
    echo "Employee is present";
    empHrs=8;
else
    echo "Employee is absent";
    empHrs=0;
fi

salary=$(($empWagePerHr*$empHrs))
echo "Employees Wage Today="$salary
