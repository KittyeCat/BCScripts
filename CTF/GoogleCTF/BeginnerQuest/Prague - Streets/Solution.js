let a = new Array(0, 0, 0, 50, 50, 50, 300, 20, 20, 20, 300, 30, 30, 30, 0, 0, 0);

function controlCar(scanArray) {
    for (let i = 0; i <= scanArray.length; i++) {
        if (scanArray[i] > 100){
            scanArray[i] = 0;
//            console.log(i)
        }
        else if (scanArray[i] < 0) {
            scanArray[i] = 0;
        }
    }

    let left = scanArray.slice(0, 8);
    let right = scanArray.slice(9, scanArray.length);
    let ahead = scanArray[8];

    left.forEach((element, index) => {
        if (element <= ahead) {
            left[index] = 0;
        }
    });
    left.sort(function(a, b){return b - a});

    right.forEach((element, index) => {
        if (element <= ahead) {
            right[index] = 0;
        }
    });
    right.sort(function(a, b){return b - a});

    console.log(ahead);
    console.log(scanArray);
    console.log(left);
    console.log(right);


}

controlCar(a);