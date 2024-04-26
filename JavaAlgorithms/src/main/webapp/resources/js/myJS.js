var myChart, config, time, timers = [];
let myArr, myColors;
let now;

/* 그래프 동기화를 위한 타이머 함수*/
var timer = function(callback, delay) {
    var timerId, start, remaining = delay;

    this.pause = function() {
        window.clearTimeout(timerId);
        timerId = null;
        remaining -= Date.now() - start;
    };

    this.resume = function() {
        if (timerId) { return; }
        start = Date.now();

        if (remaining < 0) {
            return 1;
        }
        timerId = window.setTimeout(callback, remaining);
        return 0;
    };
    this.resume();
};

/* 정렬 알고리즘 - 페이지 변경에 따른 내부 내용 변경 */
function contentsChange(page) {
    /* 실행중인 정렬 작업 모두 종료! */
    if (timers.length > 0) {
        for (let timer of timers) {
            timer.pause();
        }
    }
    if (myChart != undefined || myChart != null) {
        myChart.destroy();
    }
    $('#dashboard').fadeOut(200, function() {
        $(this).load(page);
        $(this).fadeIn(200);
    });
}

/* 정렬 알고리즘 - 배열 생성 */
function makeArray() {
    /* 입력 변수 받아오기 */
    var size = Number($("#size").val());
    var min = Number($("#min").val());
    var max = Number($("#max").val());

    let set = new Set();
    let colors = [];
    /* 값 범위가 너무 작으면 재생성 요청 */
    if ((max - min + 1) * 0.7 < size) { alert("Make Number range wider!"); return; }

    /* 난수 배열 생성 */
    if (size == 0) { size = 100; min = 1; max = 1000; }
    while (set.size < size) { set.add(Math.floor(Math.random() * (max - min + 1)) + min); }
    while (colors.length < set.size) { colors.push('#007bff'); }

    $("#array-list").empty();
    for (let num of set) {
        var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) + '</span>')
        dom.appendTo($("#array-list"));
    }
    myArr = set;
    myColors = colors;
    timers = [];
    document.getElementById('startButton').value = "START";
    drawChart(Array.from(set), colors);
    $("#process-table tr:not(:first)").remove();
}

/* 입력값에 따른 배열 시작 */
function startSort(option) {
    /* 배열 정지 또는 재시작을 위한 기능 */
    if (timers.length > 0) {
        if (pause) {
            pause = false;
            document.getElementById('startButton').value = "PAUSE";
            cnt = 0

            for (var i = 0; i < timers.length; i++) {
                cnt += timers[i].resume();
            }
            if (cnt == timers.length) {
                document.getElementById('startButton').value = "RESET";
                timers = [];
                drawChart(Array.from(myArr), myColors.slice(0));
            }
            /* 리셋 기능 필요 */
        } else {
            pause = true;
            document.getElementById('startButton').value = "RESUME";
            for (var i = 0; i < timers.length; i++) {
                timers[i].pause();
            }
        }
    }    
    else {
        console.log("START");
        pause = false;
        document.getElementById('startButton').value = "PAUSE";
        now = new Date().getTime();
        switch (option) {
            case 'bubble':
                bubbleSort();
                break
            case 'selection':
                selectionSort();
                break
            case 'insertion':
                insertionSort();
                break
            default:
                break
        }
    }
}

function swap(arr, i, j) {
    var temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}

function record(index, time, job, a_index, a, b_index, b, timeout) {
    timers.push(new timer(function() {
    const table = document.getElementById('process-table');
    const new_row = table.insertRow();
    const cell_length = table.rows[0].cells.length;
    for (let i = 0; i < cell_length; i++) {
        const new_cell = new_row.insertCell(i);
        let temp_html = ``;
        switch (i) {
            case 0:
                temp_html = `<td>` + index + `</td>`;
                break;
            case 1:
                temp_html = `<td>` + time + `</td>`;
                break;
            case 2:
                temp_html = `<td>` + job + `</td>`;
                break;
            case 3:
                temp_html = `<td>` + a_index + `</td>`;
                break;
            case 4:
                temp_html = `<td>` + a + `</td>`;
                break;
            case 5:
                temp_html = `<td>` + b_index + `</td>`;
                break;
            case 6:
                temp_html = `<td>` + b + `</td>`;
                break;
        }
        
            new_cell.insertAdjacentHTML('afterbegin', temp_html);
        }
    }, timeout));

}

function bubbleSort() {
    let data = myChart.data.datasets[0].data;
    let colors = myChart.data.datasets[0].backgroundColor;
    var timeout = 0;
    var interval = 10;
    var index = 0;

    for (var i = 0; i < data.length - 1; i++) {
        for (var j = 0; j < (data.length - i) - 1; j++) {
            record(index++, new Date().getTime() - now, "Comparison", j, data[j], j + 1, data[j + 1],timeout);
            if (data[j] > data[j + 1]) {
                record(index++, new Date().getTime() - now, "Swap", j, data[j], j + 1, data[j + 1],timeout);
                timeout = chartSwap(data, colors, timeout, interval, j, j + 1);
            }
        }
    }
}

function selectionSort() {
    let data = myChart.data.datasets[0].data;
    let colors = myChart.data.datasets[0].backgroundColor;
    var timeout = 0;
    var interval = 10;
    var least, least_j;
    var index = 0;

    for (var i = 0; i < data.length - 1; i++) {
        least = data[i];
        least_j = i;
        for (var j = i + 1; j < data.length; j++) {
            record(index++, new Date().getTime() - now, "Comparison", j, data[j], least_j, least,timeout);

            if (data[j] < least) {
                record(index++, new Date().getTime() - now, "New Least", least_j, data[j], "", "",timeout);
                least = data[j];
                least_j = j;
            }
        }
        if (least_j != i) {
            record(index++, new Date().getTime() - now, "Swap Least", i, data[i], least_j, data[least_j],timeout);
            timeout = chartSwap(data, colors, timeout, interval, i, least_j);
        }
    }
}

function insertionSort() {
    let data = myChart.data.datasets[0].data;
    let colors = myChart.data.datasets[0].backgroundColor;
    var timeout = 0;
    var interval = 10;
    var target;
    var index = 0;

    for (var i = 0; i < data.length; i++) {

        record(index++, new Date().getTime() - now, "New Target", i, data[i], "", "", timeout);
        target = i;
        for (var j = i - 1; j >= 0; j--) {

            record(index++, new Date().getTime() - now, "Comparison", target, data[target], j, data[j], timeout);
            if (data[target] < data[j]) {

                record(index++, new Date().getTime() - now, "Swap Target", target, data[target], j, data[j], timeout);
                timeout = chartSwap(data, colors, timeout, interval, target--, j);
            } else {
                break;
            }
        }
    }
}

function chartSwap(data, colors, timeout, interval, i, j) {
    colors[i] = '#FFB399'
    colors[j] = '#FF6633'
    timeout += interval;
    updateChart(data.slice(0), colors.slice(0), timeout);

    timeout += interval;
    swap(colors, i, j);
    swap(data, i, j);
    updateChart(data.slice(0), colors.slice(0), timeout);

    colors[i] = '#007bff'
    colors[j] = '#007bff'
    timeout += interval;
    updateChart(data.slice(0), colors.slice(0), timeout);

    return timeout;
}

function updateChart(data, colors, timeout) {
    timers.push(new timer(function() {
        myChart.data.datasets[0].data = data;
        myChart.data.datasets[0].backgroundColor = colors;
        myChart.update();
    }, timeout));
}

function drawChart(datas, colors) {
    if (myChart != undefined || myChart != null) {
        myChart.destroy();
    }

    config = {
        type: 'bar',
        data: {
            labels: datas,
            datasets: [{
                label: '',
                data: datas,
                backgroundColor: colors,
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    scaleLabel: {
                        display: false
                    },
                    ticks: {
                        suggestedMin: 0,
                        display: false // it should work
                    }
                }],
                xAxes: [{
                    scaleLabel: {
                        display: false
                    },
                    ticks: {
                        display: false // it should work
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                enabled: false,
            },
            animation: false,
        },
    }
    ctx = document.getElementById('myChart');
    myChart = new Chart(ctx, config);

    ctx.style.display = "block"
    document.getElementById('startButton').style.display = "block"
}
