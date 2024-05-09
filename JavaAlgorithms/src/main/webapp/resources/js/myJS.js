var chart, config, timers = [], recordIndex, timeout, interval = 50, now;
var firstArray;


var currentPage;/* 현재 페이지 값 저장하는 변수 */

/* 새로고침 기능 대체 */
function disableF5(e) {
    if ((e.which || e.keyCode) == 116) {
        e.preventDefault();
        contentsChange(currentPage);
    }
};
$(document).bind("keydown", disableF5);
$(document).on("keydown", disableF5);


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

    /*if (timers.length > 0) {
        for (let timer of timers) {
            timer.pause();
        }
    }
    if (myChart != undefined || myChart != null) {
        myChart.destroy();
    }*/
    $('#dashboard').fadeOut(200, function() {
        window.scrollTo(0, 0);
        $(this).load(page);
        $(this).fadeIn(200, function() {
            /*makeArray();*/
        });
    });
}

/* 정렬 알고리즘 - 배열 생성 */
function generateArray() {
    /* 입력 변수 받아오기 */
    var size = Number($("#size").val());
    var min = Number($("#min").val());
    var max = Number($("#max").val());

    let set = new Set();
    /* 값 범위가 너무 작으면 재생성 요청 */
    if ((max - min + 1) * 0.7 < size) { alert("Make Number range wider!"); return; }
    /* 값을 넣지 않은 상태일 경우 디폴트값 지정*/
    if (size == 0) size = 10; min = 1; max = 20;
    /* 난수 배열 생성 */
    while (set.size < size) set.add(Math.floor(Math.random() * (max - min + 1)) + min);


    /* 배열 값들에 대한 직접나열 */
    $("#array-list").empty();
    for (let num of set) {
        var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) + '</span>')
        dom.appendTo($("#array-list"));
    }

    /* 현재 값들에 대한 초기값 저장*/
    firstArray = Array.from(set);
    timers = [];
    /*drawChart(firstArray, colors);  */

    myChart = new MyChart($('#myChart'), firstArray);
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
class MyChart {
    constructor(ctx, data) {
        console.log("CONSTRUCTOR");

        this.data = data;
        ctx.css("display", "block");
        $('#startButton').css("display", "block");

        var color = [];
        while (color.length < data.length) {
            color.push('#333d4d');
        }
        this.color = color;

        this.chart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: data,
                datasets: [{
                    label: '',
                    data: data,
                    backgroundColor: color,
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
                            display: false
                        }
                    }],
                    xAxes: [{
                        scaleLabel: {
                            display: false
                        },
                        ticks: {
                            display: false
                        }
                    }],
                },
                legend: {
                    display: false
                },
                tooltips: {
                    enabled: false,
                },
            },
        });

        this.timers = [];
        this.timeout = 0;
        this.interval = 500;
    }

    swap(data, i, j) {
        var temp = data[i];
        data[i] = data[j];
        data[j] = temp;
        this.update(data.slice(0), this.color.slice(0))

    }

    update(data, color) {
        var chart = this.chart;
        timers.push(new timer(function() {
            chart.data.datasets[0].data = data;
            chart.data.datasets[0].backgroundColor = color;
            chart.update();
        }, this.timeout));
        this.timeout += this.interval;
    }

    finish() {        
        timers.push(new timer(function() {
            console.log("Finish!")
            $('#startButton').val("restart");
        }, this.timeout));
    }

    paint(i) {
        console.log("PAINT");
        let colors = chart.data.datasets[0].backgroundColor;
        colors[i] = color;
        chart.data.datasets[0].backgroundColor = colors;
    }

    record(row, list) {
        /*const table_row = $('#table-row');*/
        const new_row = row.insertRow();
        const cell_length = row.rows[0].cells.length;
        for (let i = 0; i < cell_length; i++) {
            const new_cell = new_row.insertCell(i);
            let temp_html = `<td>` + list[i] + `</td>`;
            new_cell.insertAdjacentHTML('afterbegin', temp_html);
        }
    }
}

function bubbleSort() {
    var data = myChart.data;
    recordIndex = 0;
    console.log(data);

    for (var i = 0; i < data.length - 1; i++) {
        for (var j = 0; j < (data.length - i) - 1; j++) {
            /*            chart.record($('#table-row'), [recordIndex++, new Date().getTime() - now, "Comparison", j, data[j], j + 1, data[j + 1]]);*/
            if (data[j] > data[j + 1]) {
                /*                chart.record($('#table-row'), [recordIndex++, new Date().getTime() - now, "Swap", j, data[j], j + 1, data[j + 1]]);*/
                myChart.swap(data, j, j + 1);
            }
        }
    }
    
    myChart.finish();
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

/* ______________________________Sorting Algoriths based JS__________________________________________________ */

