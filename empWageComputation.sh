#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program on Master Branch"

isFullTime=0
isPartTime=1
empWagePerHr=20
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

salary=$(($empWagePerHr*$empHrs))
echo "Employees Wage Today="$salary
