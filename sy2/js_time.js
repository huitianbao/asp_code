

function startTimer() {
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);


    document.getElementById("divTimer").innerHTML = h + ":" + m + ":" + s;
    setTimeout("startTimer()", 1000);
}

//checkTimer(i)检查i的参数值，如果i<10，就在数字前加0

function checkTime(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}
