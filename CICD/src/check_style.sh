#!/bin/bash

exit_code=0

if [ -s "test/cat_style.txt" ];
then
echo "нарушение стилистики - нужно поправить"
cat test/cat_style.txt
exit_code=1
else
echo "style s21_cat OK"
fi

if [ -s "test/grep_style.txt" ];
then
echo "нарушение стилистики - нужно поправить"
cat test/grep_style.txt
exit_code=1
else
echo "style s21_grep OK"
fi

exit $exit_code