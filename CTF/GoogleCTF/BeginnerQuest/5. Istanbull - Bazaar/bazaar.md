This is a reversing challenge. we have a python script that uses a the python built in RNG to generate an encrypted secret. We need to use the RandCrack module to reverse the RNG seed and find out the secret!

bytes in secret file: b'\x95G\x08X\x19+\xf8\x0c+*U\x11)\xe1"\x8f\xabB\xc9\x0cg\xc5\xdfD\xe1\xf3\xe5\xcb?a<'

see processNumbers.py for solution! 

##flag: CTF{n3v3r_3ver_ev3r_use_r4nd0m}

we use the randcrack module and constbitstream modules to reverse the python RNG seed that generated the phone numbers and then predict what the 'key' generated numbers would have been to encrypt the secret. 

