Prague Streets

THis is a coding challenge in JavaScript! we need to write a function named controlCar that takes an input scanArray and outputs driving instructions (-1 = left, 0 = straight, 1 = right)

see Solution.js for details on how this works! you only need to paste the interior of the controlCar function.

flag: CTF{cbe138a2cd7bd97ab726ebd67e3b7126707f3e7f}

we effectively capture the array and split it into three sub arrays, left, ahead and right. we calculate the furthest distance in left and right, and then the closest distance in ahead. 

there is an if statement that compares these three values. If the largest value of one of the side arrays is larger than the smallest value of the ahead array we turn in the direction of the largest side array value. 