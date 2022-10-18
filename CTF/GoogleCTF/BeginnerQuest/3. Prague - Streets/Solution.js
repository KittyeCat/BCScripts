let a = new Array(0, 0, 0, 50, 50, 50, 300, 20, 20, 20, 300, 30, 30, 30, 0, 0, 0);

function controlCar(scanArray) {
    for (let i = 0; i <= scanArray.length; i++) {
        if (scanArray[i] > 1000){
            scanArray[i] = 0;
//            console.log(i)
        }
        else if (scanArray[i] < 0) {
            scanArray[i] = 0;
        }
    }

    let left = scanArray.slice(0, 7);
    let right = scanArray.slice(10, scanArray.length);
    let ahead = scanArray.slice(7, 10);
    let aheadMin = ahead.sort(function(a, b){return b - a})[2];

    left.forEach((element, index) => {
        if (element <= aheadMin) {
            left[index] = 0;
        }
    });
    left.sort(function(a, b){return b - a});

    right.forEach((element, index) => {
        if (element <= aheadMin) {
            right[index] = 0;
        }
    });
    right.sort(function(a, b){return b - a});

    console.log(ahead);
    console.log(aheadMin);
    console.log(scanArray);
    console.log(left);
    console.log(right);


    if (left[0] > right[0] && left[0] > aheadMin) {
        console.log(-1);
        return -1;
    }
    else if (left[0] < right[0] && right[0] > aheadMin) {
        console.log(1);
        return 1;
    }
    else {
        console.log(0);
        return 0;
    }


}

controlCar(a);