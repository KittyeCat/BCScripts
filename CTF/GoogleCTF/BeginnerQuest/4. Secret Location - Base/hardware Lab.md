chapter 4 of the google CTF, we have another zip file (probably) this time with some embedded c by the looks!

time to unzip, I hope WSL installed properly on this PC :)

okay, needed to use unzip rather than gzip as it was a regular zip file. Got it! 

we have an embedded c file and a .uf2 file. Apparently this is a microcontroller (USB stick) ROM flash file. COOL! so maybe we wnt to decode it somehow? I wonder if the C file creates the uf2??

reference: https://github.com/microsoft/uf2

file pico.uf2 
pico.uf2: UF2 firmware image, family Raspberry Pi RP2040, address 0x10000000, 36 total blocks

The C script is controlling GPIO pins on a Raspberry Pi using set bit masks and clear bit masks. when it calls set bit mask it activates all '1's and doesn't change all '0's 
when it calls clear bit mask it deactivates all '1's and doesn't change all '0's

We can see what the raw bit output is by calculating each mask and iterating through them one at a time. 

The first number output (67) translates to a C if we convert to ASCII, that's a BIG clue!!!! all our flags start with 'CTF{'

the python script solution.py takes an array of bit masks, applies them in pairs to the output value, and then concatenates the resulting ASCII character to a 'flag' string. 

tada!
flag: CTF{be65dfa2355e5309808a7720a615bca8c82a13d7}