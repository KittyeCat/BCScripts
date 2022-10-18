from randcrack import RandCrack
from bitstring import ConstBitStream

f = open('D:\Dev\BCScripts\CTF\GoogleCTF\BeginnerQuest\Istanbull - Bazaar\\robo_numbers_list.txt', "r")
rc = RandCrack()

for i in f:
    a = i[:3] + i[4:7] + i[8:]
    
    rc.submit(int(a) - (1<<31))


keys = []

for n in range(31):
    keys.append(rc.predict_getrandbits(8))

print(keys)

enc = open('D:\Dev\BCScripts\CTF\GoogleCTF\BeginnerQuest\Istanbull - Bazaar\secret.enc', "rb")

encrypted = ConstBitStream(enc.readline())
print(encrypted)
flag = ""
for i in keys:
    flag += chr(encrypted.read('uint:8')^i)

print(flag)
# print(encrypted.isdigit())
# print(int.from_bytes(b'\x0c+*U', "little", signed=False))


