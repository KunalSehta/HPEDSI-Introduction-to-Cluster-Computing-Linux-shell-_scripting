#!/bin/bash
echo "Enter name of friend 1:"
read name1
echo "Enter name of friend 2:"
read name2
echo "Enter name of friend 3:"
read name3
echo "Enter name of friend 4:"
read name4
echo "Enter name of friend 5:"
read name5
echo "Enter bill for $name1"
read bill1
echo "Enter bill for $name2"
read bill2
echo "Enter bill for $name3"
read bill3
echo "Enter bill for $name4"
read bill4
echo "Enter bill for $name5"
read bill5
echo "Names of Friends: $name1, $name2, $name3, $name4, $name5"
echo "Individual bills: $bill1, $bill2, $bill3, $bill4, $bill5"
total_bill=$(echo "$bill1 $bill2 $bill3 $bill4 $bill5" | awk '{print $1 + $2 +$3 + $4 + $5}')
echo $total_bill
echo "Enter tip percentage:"
read tip_percentage
echo "Tip percentage is $tip_percentage"
tipamount=$(echo "$total_bill $tip_percentage" | awk '{print $1 * $2 *0.01}')
#echo "Tip amount is $tipamount"
tbill=$(echo "$total_bill + $tipamount" | bc)
echo "Total bill plus tip: $tbill"
avgTotal=$(echo "$tbill" | awk '{print $1 / 5}')
echo "Each of us must pay $avgTotal"
