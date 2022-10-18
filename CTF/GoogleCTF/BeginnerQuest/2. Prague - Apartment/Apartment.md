Apartment

the file in this folder is an unknown file type. running cat on it shows a name logic-lock.png in the binary at the top and bottom but otherwise it is unreadable. 
I changed the file extension to .png but it wasn't able to be opened! I am installing Kali using WSL so I can use the file command to analyse the file type hopefully.

file is a zip file! used WSL to unzip using Gzip, gzip requires a file extension so renamed to .gz and then ran gzip -d <file>.gz
resulting image is of a set of logic gates. solution.png is the resulting annotated image with the logic mapped out

flag is "CTF{BCFIJ}"