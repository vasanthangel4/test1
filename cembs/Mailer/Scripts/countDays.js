function updateTimer() {
    // Get the element to append to
    var counter = document.getElementById("timer");
    // Set the targetDate
    var targetDate = new Date("July 8, 2012 10:00:00");

    var remainingSeconds = ~ ~((targetDate - new Date()) / 1000);
    var remainingTime = {
        "days": remainingSeconds / (60 * 60 * 24),
        "hrs": (remainingSeconds % (60 * 60 * 24)) / (60 * 60),
        "mins": (remainingSeconds % (60 * 60)) / 60,
        "s": remainingSeconds % 60
    };

    var str = "";
    for (var i in remainingTime) {
        // str += ~ ~remainingTime[i] + " " + i + "<br/>"+", ";
        str += "<span class='days'>" + ~ ~remainingTime[i] + "</span>" + " " + i + "&nbsp; ";
    }
    // Store the result in the element
    counter.innerHTML = str.substring(0, str.length - 2);
}

// Update the timer every 1 second
setInterval(updateTimer, 1000);