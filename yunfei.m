clc;clear

A=[50,150,150,150;225,225,225,225]
A=A'
b=[464;298;1200;0]
f=[405,405,540,540;607,607,810,810]
intcon=[]
lb=[]
ub=[]
[x, fval]=intlinprog(f,intcon,A,b,[],[],lb,ub)