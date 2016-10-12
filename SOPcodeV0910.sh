# -*- coding: utf-8 -*-
from __future__ import division
from numpy.random import randn
import numpy as np
import os
import sys
import matplotlib.pyplot as plt
from pandas import Series, DataFrame
import pandas as pd
##
path = "link"
f = open(path)
data = pd.read_csv("link", low_memory=False)
frow = len(f.readlines())
##
from numpy import genfromtxt
my_data = genfromtxt('link', delimiter=',')
##
import re
file = open('/Users/HCHung/Documents/2016demo/0912testXML/ch34', "r")    
line = file.read()    
exp = re.compile(r'<.*?>')
text_only = exp.sub('',line).strip() #for all <*>, do repl as ''
# export
f = open("ans.txt", "w")
print >> f, text_only
f.close()
# print text_only
##
name = ['Larry', 'Moe', 'Curly']
index = 0
for word in name:
    print ('{} {}'.format(index, word))
    index += 1
##
file=open("28LPSErulesALL_orig","r+")
wordcount={}
for word in file.read().split():
    if word not in wordcount:
        wordcount[word] = 1
    else:
        wordcount[word] += 1
#log = open("wc_28LPSE.txt", "w");
for k,v in wordcount.items():
    #print >>log, k, v
    print k, v
##
awk '{print $1;}' 
awk 'length($1)>3' 

egrep -v "\(|\)|\[|\]|\{|\}" 
grep ')[a-zA-Z]' 
grep 'mi[a-zA-Z]*um' 

sed -n "/^ZVT/,/above/p" 
sed 's/(//g;' 
sed -e 's/.*>\(.*\)<\/.*/\1/' 
sed -e 's/^\(.*\)<\/.*/\1/' 
sed '/^$/d'
sed 's/[[:space:]]/\|/g;'

sort -n -r -k1 
cat kw_* > mergeKW
paste f1 f2 > f3


xmlformat f1 > f2
##
cat *.report > mergeIADans
sed -n "/RULECHECK RESULTS STATISTICS (BY CELL)/,/SUMMARY/p" mergeIADans > mergeIADans_mid
## WIN7 cmd
copy /a *.cal merged2.txt
dir 
find /v "word" path
type
fc /l "file1" "file2"
##
#!/bin/bash
PATH=/tdhome/hunghc/demo1010web
export PATH
echo -e "Hello World! \a \n"
read -p "Please input your first name: " firstname      # 提示使用者輸入
read -p "Please input your last name:  " lastname       # 提示使用者輸入
echo -e "\nYour full name is: ${firstname} ${lastname}" # 結果由螢幕輸出
exit 0
##

