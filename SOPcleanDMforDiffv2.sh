egrep -v "keyword1|keyword2" i1 > o1;
egrep -v "keyword1|keyword2" i2 > o2;
diff -b o1 o2 > o3b;
diff -u o1 o2 | cdiff > o1o2
python demo_difflib.py > dl1