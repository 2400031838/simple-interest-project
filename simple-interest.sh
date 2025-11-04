#!/bin/bash
# simple-interest.sh
# Calculates simple interest = (P * R * T) / 100

echo "Simple Interest Calculator"
echo "---------------------------"

read -p "Enter Principal (P): " P
read -p "Enter Rate of Interest (R): " R
read -p "Enter Time (T in years): " T

# Check if values are numeric
if ! [[ "$P" =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ "$R" =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ "$T" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Please enter valid numeric values."
  exit 1
fi

# Calculate simple interest
SI=$(echo "scale=2; ($P * $R * $T) / 100" | bc)
TOTAL=$(echo "scale=2; $P + $SI" | bc)

echo "Simple Interest: ₹$SI"
echo "Total Amount after $T years: ₹$TOTAL"
