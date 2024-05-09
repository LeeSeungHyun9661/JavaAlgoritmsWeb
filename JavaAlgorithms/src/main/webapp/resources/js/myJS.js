var chart, config, timers = [], recordIndex, timeout, interval = 50, now;

var firstArray, option, group;

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
    this.currentPage = page;
    this.group = page.split('/')[0];
    this.option = page.split('/')[1].split('.')[0];
    console.log(this.group);
    console.log(this.option);

    $('#dashboard').fadeOut(200, function() {
        window.scrollTo(0, 0);
        $(this).load(page);
        $(this).fadeIn(200, function() {
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
    myChart = new MyChart($('#myChart'), [...firstArray]);
    $("#table-row tr:not(:first)").remove();
}

/* 입력값에 따른 배열 시작 */
function startSort() {
    $('#startButton').val("STOP");
    $('#startButton').attr("onClick", 'stopSort()');

    now = new Date().getTime();
    switch (this.option) {
        case 'BubbleSort':
            bubbleSort();
            break
        case 'SelectionSort':
            selectionSort();
            break
        case 'InsertionSort':
            insertionSort();
            break
        case 'merge':
            mergeSort();
            break
        case 'quick':
            quickSort();
            break
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

function stopSort() {
    $('#startButton').val("RESUME");
    myChart.stop();
    $('#startButton').attr("onClick", 'resumeSort()');
}

function resetSort() {
    $('#startButton').val("START");
    myChart.reset();
    $('#startButton').attr("onClick", "startSort()");
}

function resumeSort() {
    $('#startButton').val("STOP");
    myChart.resume();
    $('#startButton').attr("onClick", 'stopSort()');
}

class MyChart {
    constructor(ctx, data) {
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
                animation: false,
            },
        });
        this.timers = [];
        this.timeout = 0;
        this.interval = 100;
    }

    swap(data, i, j) {
        var temp = data[i];
        data[i] = data[j];
        data[j] = temp;
        /*      this.highLight([i, j], '#FFB399');*/
        this.update([...data]);
    }

    update(data) {
        this.timeout += this.interval;
        var chart = this.chart;
        timers.push(new timer(function() {
            chart.data.datasets[0].data = data;
            chart.update();
        }, this.timeout));
    }

    finish() {
        timers.push(new timer(function() {
            $('#startButton').val("RESET");
            $('#startButton').attr("onClick", 'resetSort()');
            this.timers = [];
        }, this.timeout));
    }

    stop() {
        for (var i = 0; i < timers.length; i++) {
            timers[i].pause();
        }

    }

    resume() {
        for (var i = 0; i < timers.length; i++) {
            timers[i].resume();
        }
    }

    reset() {
        this.chart.data.datasets[0].data = [...firstArray];
        this.timeout = 0;
        this.chart.update();
    }


    highLight(list, colorCode) {
        let chart = this.chart;
        let BaseColor = [...chart.data.datasets[0].backgroundColor];

        timers.push(new timer(function() {
            for (var i = 0; i < list.length; i++) {
                chart.data.datasets[0].backgroundColor[list[i]] = colorCode;
            }
            chart.update();
        }, this.timeout + (this.interval / 3)));

        timers.push(new timer(function() {
            chart.data.datasets[0].backgroundColor = BaseColor;
            chart.update();
        }, this.timeout + this.interval + (this.interval / 3)));
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


/* ______________________________Sorting Algoriths based JS__________________________________________________ */

function bubbleSort() {
    var data = [...myChart.chart.data.datasets[0].data];

    for (var i = 0; i < data.length - 1; i++) {
        for (var j = 0; j < (data.length - i) - 1; j++) {
            if (data[j] > data[j + 1]) {
                myChart.swap(data, j, j + 1);
            }
        }
    }
    myChart.finish();
}

function selectionSort() {
    var data = [...myChart.chart.data.datasets[0].data];
    for (var i = 0; i < data.length - 1; i++) {
        var least = i;
        for (var j = i + 1; j < data.length; j++) {
            if (data[j] < data[least])
                least = j;
        }
        if (least != i)
            myChart.swap(data, i, least);
    }
    myChart.finish();
}

function insertionSort() {
    var data = [...myChart.chart.data.datasets[0].data];
    for (var i = 0; i < data.length; i++) {
         var target = i;
        for (var j = i - 1; j >= 0; j--) {
            if (data[target] < data[j]) {
                myChart.swap(data, target--, j);
            } else {
                break;
            }
        }
    }
    myChart.finish();
}

