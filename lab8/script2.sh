#!/bin/bash

month=$1

case $month in
  "January" | "March" | "May" | "July" | "August" | "October" | "December")
    days=31
    ;;
  "April" | "June" | "September" | "November")
    days=30
    ;;
  "February")
    echo "Enter the year (4 digits):"
    read year
    
    if ((year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))); 
    then
      days=29
    else
      days=28
    fi
    ;;
  *)
    echo "Invalid month name. Please enter a valid month."
    exit 1
    ;;
esac

echo "Number of days in $month: $days"
