let arr = new Set();

function contentsChange(page) {
    $('#dashboard').fadeOut(200, function() {
        $(this).load(page);
        if (arr.size > 0) {
            for (let num of arr) {
                var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) + '</span>')
                dom.appendTo($("#array-list"));
            }
        }
        $(this).fadeIn(200, function() {
        });
    });
}

function makeChart() {
    const ctx = document.getElementById('myChart')
    // eslint-disable-next-line no-unused-vars
    const myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: Array.from(arr),
            datasets: [{
                data: Array.from(arr),
                backgroundColor: '#007bff',
                borderWidth: 1
            }]
        },
        options: {
            plugins: {
                legend: {
                    display: false
                }
            }
        }
    })

}


function fadeOutEffect(fadeTarget) {
    var fadeEffect = setInterval(function() {
        if (!fadeTarget.style.opacity) {
            fadeTarget.style.opacity = 1;
        }
        if (fadeTarget.style.opacity > 0) {
            fadeTarget.style.opacity -= 0.1;
        } else {
            clearInterval(fadeEffect);
        }
    }, 50);
}

function fadeInEffect(fadeTarget) {
    var fadeEffect = setInterval(function() {
        if (!fadeTarget.style.opacity) {
            fadeTarget.style.opacity = 0;
        }
        if (fadeTarget.style.opacity > 0) {
            fadeTarget.style.opacity += 0.1;
        } else {
            clearInterval(fadeEffect);
        }
    }, 50);
}



