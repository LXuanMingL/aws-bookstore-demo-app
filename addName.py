#!/usr/bin/python3

import os
	
	
def find():
	file = []
	for root, director, files in os.walk("./assets"):
		for filename in files:
			name, extra = os.path.splitext(filename)
			if extra == ".ts":
				file.append(os.path.join(root, filename))
				
	return file
	
	
def write(file):
	with open(file, "r+") as f:
		temp = f.read()
		print(temp)
		f.seek(0)
		f.write("//Simon Liang, 1515834 \n" + temp)
	


allFile = find()
for file in allFile:
	write(file)
	
