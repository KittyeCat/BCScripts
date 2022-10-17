chapter 4 of the google CTF, we have another zip file (probably) this time with some embedded c by the looks!

time to unzip, I hope WSL installed properly on this PC :)

okay, needed to use unzip rather than gzip as it was a regular zip file. Got it! 

we have an embedded c file and a .uf2 file. Apparently this is a microcontroller (USB stick) ROM flash file. COOL! so maybe we wnt to decode it somehow? I wonder if the C file creates the uf2??

reference: https://github.com/microsoft/uf2

file pico.uf2 
pico.uf2: UF2 firmware image, family Raspberry Pi RP2040, address 0x10000000, 36 total blocks

