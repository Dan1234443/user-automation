#!/bin/bash

clear
echo "======================================="
echo "      🤖 Dan's Interactive Script"
echo "======================================="

read -p "👋 Hey Dan, what’s your name? " name

echo ""
echo "Nice to meet you, $name!"

read -p "📅 How old are you? " age

if [[ $age -ge 18 ]]; then
    echo "🔥 Adult mode activated."
else
    echo "🧒 Young and growing!"
fi

echo ""
read -p "💻 What are you working on today? " task

echo ""
echo "🚀 That sounds powerful, $name."
echo "Remember: Consistency > Motivation."

echo ""
read -p "🎯 On a scale of 1-10, how focused are you today? " focus

if [[ $focus -ge 8 ]]; then
    echo "⚡ Elite focus detected."
elif [[ $focus -ge 5 ]]; then
    echo "👍 Decent. Push a little harder."
else
    echo "⚠️ Time to lock in and remove distractions."
fi

echo ""
echo "======================================="
echo "Session Complete. Build something great today."
echo "=======================================Know This"
echo "Session closed please go do somthing with your life sir"