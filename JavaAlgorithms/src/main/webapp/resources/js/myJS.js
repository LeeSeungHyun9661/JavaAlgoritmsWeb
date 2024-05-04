var myChart, config, timers = [], recordIndex, timeout, interval = 50, currentPage, now;
let myArr, myColors;

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
    currentPage = page;
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
        $(this).fadeIn(200, function(){
            makeArray(); 
        });
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
    if (size == 0) { size = 50; min = 1; max = 100; }
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
    $("#table-row tr:not(:first)").remove();
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
                document.getElementById('startButton').value = "RESTART";
                timers = [];
                drawChart(Array.from(myArr), myColors.slice(0));
                $("#table-row tr:not(:first)").remove();
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
            case 'merge':
                mergeSort();
                break
            case 'quick':
                quickSort();
                break
                /* 여기서 부터!*/
            case 'heap':
                quickSort();
                break
            case 'Tree':
                quickSort();
                break
            case 'Tim':
                quickSort();
                break
            case 'Intro':
                quickSort();
                break
            case 'Radix':
                quickSort();
                break
            case 'Shell':
                quickSort();
                break
            case 'Sleep':
                quickSort();
                break                
            case 'Gravity':
                quickSort();
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

function record(index, time, job, a_index, a, b_index, b) {
    timers.push(new timer(function() {
        const table_row = document.getElementById('table-row');
        const table = document.getElementById('table')
        const new_row = table_row.insertRow();
        const cell_length = table_row.rows[0].cells.length;
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
            /*            table.scrollTop = table.scrollHeight;*/
        }
    }, timeout));

}

function chartSwap(data, colors, i, j) {
    baseColor = colors[i]
    colors[i] = '#FFB399'
    colors[j] = '#FF6633'
    timeout += interval;
    updateChart(data.slice(0), colors.slice(0), timeout);

    timeout += interval;
    swap(colors, i, j);
    swap(data, i, j);
    updateChart(data.slice(0), colors.slice(0), timeout);

    colors[i] = baseColor
    colors[j] = baseColor
    timeout += interval;
    updateChart(data.slice(0), colors.slice(0), timeout);
}

function chartGroup(data, colors, min, max, groupColor) {
    baseColor = colors[min]
    for (var i = 0; i < colors.length; i++) {
        if (i <= max && i >= min) {
            colors[i] = groupColor;
        }
    }
    timeout += interval;
    updateChart(data.slice(0), colors.slice(0), timeout)
}

function chartHighright(data, colors, i, highrightColor) {
    colors[i] = highrightColor
    timeout += interval;
    updateChart(data.slice(0), colors.slice(0), timeout);
}

function updateChart(data, colors) {
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

/* ______________________________Sorting Algoriths based JS__________________________________________________ */


function bubbleSort() {
    let data = myChart.data.datasets[0].data;
    let colors = myChart.data.datasets[0].backgroundColor;
    timeout = 0;
    recordIndex = 0;

    for (var i = 0; i < data.length - 1; i++) {
        for (var j = 0; j < (data.length - i) - 1; j++) {
            record(recordIndex++, new Date().getTime() - now, "Comparison", j, data[j], j + 1, data[j + 1]);
            if (data[j] > data[j + 1]) {
                record(recordIndex++, new Date().getTime() - now, "Swap", j, data[j], j + 1, data[j + 1]);
                chartSwap(data, colors, j, j + 1);
            }
        }
    }
}

function selectionSort() {
    let data = myChart.data.datasets[0].data;
    let colors = myChart.data.datasets[0].backgroundColor;
    timeout = 0;
    var least, least_j;
    recordIndex = 0;

    for (var i = 0; i < data.length - 1; i++) {
        least = data[i];
        least_j = i;
        for (var j = i + 1; j < data.length; j++) {
            record(recordIndex++, new Date().getTime() - now, "Comparison", j, data[j], least_j, least);

            if (data[j] < least) {
                record(recordIndex++, new Date().getTime() - now, "New Least", least_j, data[j], "", "");
                least = data[j];
                least_j = j;
            }
        }
        if (least_j != i) {
            record(recordIndex++, new Date().getTime() - now, "Swap Least", i, data[i], least_j, data[least_j]);
            chartSwap(data, colors, i, least_j);
        }
    }
}

function insertionSort() {
    let data = myChart.data.datasets[0].data;
    let colors = myChart.data.datasets[0].backgroundColor;
    timeout = 0;
    recordIndex = 0;
    var target;

    for (var i = 0; i < data.length; i++) {

        record(recordIndex++, new Date().getTime() - now, "New Target", i, data[i], "", "");
        target = i;
        for (var j = i - 1; j >= 0; j--) {

            record(recordIndex++, new Date().getTime() - now, "Comparison", target, data[target], j, data[j]);
            if (data[target] < data[j]) {

                record(recordIndex++, new Date().getTime() - now, "Swap Target", target, data[target], j, data[j]);
                chartSwap(data, colors, target--, j);
            } else {
                break;
            }
        }
    }
}


function mergeSort() {
    let data = myChart.data.datasets[0].data;
    let colors = myChart.data.datasets[0].backgroundColor;
    timeout = 0;
    recordIndex = 0;
    mergeSort_divide(data, colors, 0, data.length - 1);
}
function mergeSort_divide(data, colors, min, max) {
    if (max - min == 0) return;
    else if (max - min == 1) {
        if (data[min] > data[max]) chartSwap(data, colors, min, max);
    }
    else {
        var mid = Math.floor((min + max) / 2);
        record(recordIndex++, new Date().getTime() - now, "Divide", "[ " + min + " - " + mid + " ]", "[ " + data.slice(min, mid + 1) + " ]", "[ " + (mid) + " - " + max + " ]", "[ " + data.slice(mid + 1, max + 1) + " ]");
        mergeSort_divide(data, colors, min, mid);
        mergeSort_divide(data, colors, mid + 1, max);
        mergeSort_merge(data, colors, min, max, mid);
        record(recordIndex++, new Date().getTime() - now, "Merge", "[ " + min + " - " + mid + " ]", "[ " + data.slice(min, mid + 1) + " ]", "[ " + (mid) + " - " + max + " ]", "[ " + data.slice(mid + 1, max + 1) + " ]");
    }
}
function mergeSort_merge(data, colors, min, max, mid) {
    chartGroup(data, colors, min, max, '#81c147');
    var i = min;
    while (i <= mid) {
        if (data[i] > data[mid + 1]) {
            record(recordIndex++, new Date().getTime() - now, "Swap", i, data[i], mid + 1, data[mid + 1]);
            chartSwap(data, colors, i, mid + 1);
            for (var j = mid + 1; j < max; j++) {
                if (data[j] > data[j + 1]) {
                    record(recordIndex++, new Date().getTime() - now, "Swap(PUSH)", j, data[j], j + 1, data[j + 1]);
                    chartSwap(data, colors, j, j + 1);
                }
            }
        }
        i++;
    }
    chartGroup(data, colors, min, max, '#007bff');
}


function quickSort() {
    let data = myChart.data.datasets[0].data;
    let colors = myChart.data.datasets[0].backgroundColor;
    timeout = 0;
    recordIndex = 0;

    quickSort_pivot(data, colors, 0, data.length - 1);
}
function quickSort_pivot(data, colors, min, max) {
    if (min < max) {
        chartGroup(data, colors, min, max, '#81c147');
        record(recordIndex++, new Date().getTime() - now, "Partition", min, data[min], max, data[max]);

        var pivot = quickSort_partition(data, colors, min, max);

        chartGroup(data, colors, min, max, '#81c147');
        chartHighright(data, colors, pivot, '#FF6347');
        record(recordIndex++, new Date().getTime() - now, "Pivot", pivot, data[pivot], "", "");
        
        quickSort_pivot(data, colors, min, pivot);
        quickSort_pivot(data, colors, pivot + 1, max);

        chartGroup(data, colors, min, max, '#007bff');
        chartHighright(data, colors, pivot, '#007bff');
    }
    return;
}
function quickSort_partition(data, colors, min, max) {
    var pivot = data[Math.floor((min + max) / 2)]; // 부분리스트의 중간 요소를 피벗으로 설정

    while (true) {
        while (data[min] < pivot) min++;
        while (data[max] > pivot && min <= max) max--;
        if (min >= max) return max;

        record(recordIndex++, new Date().getTime() - now, "Swap", min, data[min], max, data[max]);
        chartSwap(data, colors, min, max);
    }

}

function disableF5(e) {
    if ((e.which || e.keyCode) == 116) {
        e.preventDefault();
        contentsChange(currentPage);
    }
};
$(document).bind("keydown", disableF5);
$(document).on("keydown", disableF5);