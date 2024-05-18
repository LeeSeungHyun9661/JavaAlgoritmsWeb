var now, interval = 500;
var firstArray, option, group;
var currentPage, currentTreeJob, currentBarJob, currentTableJob;/* 현재 페이지 값 저장하는 변수 */
var myBarChart, myTreeChart, myTreeList, myTableChart, myTableList;

const chartColor = am5.color(0x6771dc);

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
var timer = function(callback, delay, data) {
    var timerId, start, remaining = delay;
    this.data = data;

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
}

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
            if (group == "SortingAlgoritms") {
                if (option != 'SortingBasic') {
                    generateArray();
                }
            }
        });
    });
}

/* 정렬 알고리즘 - 배열 생성 */
function generateArray() {
    /* 입력 변수 받아오기 */
    var size = Number($('#size').val());
    var min = Number($('#min').val());
    var max = Number($('#max').val());

    currentBarJob = $('#BarSortingBtn').attr('onclick');
    currentTreeJob = $('#TreeSortingBtn').attr('onclick');
    currentTableJob = $('#TableSortingBtn').attr('onclick');

    let set = new Set();
    /* 값 범위가 너무 작으면 재생성 요청 */
    if ((max - min + 1) * 0.7 < size) { alert("Make Number range wider!"); return; }
    /* 값을 넣지 않은 상태일 경우 디폴트값 지정*/
    if (size == 0) {
        size = 50; min = 1; max = 100;
    }
    /* 난수 배열 생성 */
    while (set.size < size) {
        var randNum = Math.floor(Math.random() * (max - min + 1)) + min; -
            set.add(randNum);
    }
    /* 현재 값들에 대한 초기값 저장*/
    firstArray = Array.from(set);

    /* 배열 값들에 대한 직접나열 */
    $("#array-list").empty();
    for (let num of set) {
        var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) + '</span>')
        dom.appendTo($("#array-list"));
    }

    if ($('#barChart').length) {
        if (myBarChart) {
            myBarChart.reset();
        }
        if (currentBarJob) {
            $('#BarSortingBtn').attr("onclick", currentBarJob);
        }
        myBarChart = new BarChart($('#barChart'), [...firstArray]);
    }

    if ($('#treeChart').length) {
        if (myTreeChart != undefined) {
            myTreeChart.reset();
        }
        if (currentBarJob) {
            $('#BarSortingBtn').attr("onclick", currentTreeJob);
        }

        myTreeChart = new TreeChart('treeChart', []);
        myTreeList = $("#treeList");

        myTreeList.empty();
        for (let num of firstArray) {
            var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) + '</span>')
            dom.appendTo(myTreeList);
        }
    }

    if ($('#tableChart').length) {
        if (myTableChart != undefined) {
            myTableChart.reset();
        }
        if (currentTableJob) {
            $('#BarSortingBtn').attr("onclick", currentTableJob);
        }
        myTableChart = new TableChart('tableChart');
        myTableList = $("#tableList");

        myTableList.empty();
        for (let num of firstArray) {
            var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) + '</span>')
            dom.appendTo(myTableList);
        }
    }


    $("#table-row tr:not(:first)").remove();
}

function bar_pause() {
    if (myBarChart) {
        if (myBarChart.running) {
            myBarChart.running = false;
            myBarChart.stop();
            $('#BarSortingBtn').attr("onclick", "bar_resume()");
        }
    }
}

function bar_reset() {
    if (myBarChart) {
        myBarChart.running = false;
        myBarChart.reset();
        $('#BarSortingBtn').attr("onclick", currentBarJob);
    }
}

function bar_resume() {
    if (!myBarChart.running) {
        myBarChart.running = true;
        if (myBarChart) {
            myBarChart.resume();
        }
    }

}

function tree_pause() {
    if (myTreeChart) {
        if (myTreeChart.running) {
            myTreeChart.running = false;
            myTreeChart.stop();
            $('#TreeSortingBtn').attr("onclick", "tree_resume()");
        }
    }
}

function tree_reset() {
    if (myTreeChart) {
        myTreeChart.running = false;
        myTreeChart.reset();
        $('#TreeSortingBtn').attr("onclick", currentTreeJob);
    }
}

function tree_resume() {
    if (!myTreeChart.running) {
        myTreeChart.running = true;
        if (myTreeChart) {
            myTreeChart.resume();
        }
    }

}

function table_pause() {
    if (myTableChart) {
        if (myTableChart.running) {
            myTableChart.running = false;
            myTableChart.stop();
            $('#TreeSortingBtn').attr("onclick", "tree_resume()");
        }
    }
}

function table_reset() {
    if (myTableChart) {
        myTableChart.running = false;
        myTableChart.reset();
        $('#TreeSortingBtn').attr("onclick", currentTableJob);
    }
}

function table_resume() {
    if (!myTableChart.running) {
        myTableChart.running = true;
        if (myTableChart) {
            myTableChart.resume();
        }
    }

}
/*__________________________________________Bar Chart______________________________________________________*/

class BarChart {
    constructor(ctx, data) {
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
                events: [],
            },
        });
        this.timers = [];
        this.timeout = 0;

        this.running = false;
    }

    swap(data, i, j) {
        var temp = data[i];
        data[i] = data[j];
        data[j] = temp;
        this.update([...data]);
    }

    update(data) {
        this.timeout += interval;
        var chart = this.chart;
        this.timers.push(new timer(function() {
            chart.data.datasets[0].data = data;
            chart.update();
        }, this.timeout));
    }

    stop() {
        for (var i = 0; i < this.timers.length; i++) {
            this.timers[i].pause();
        }

    }

    resume() {
        for (var i = 0; i < this.timers.length; i++) {
            this.timers[i].resume();
        }
    }

    reset() {
        this.chart.data.datasets[0].data = [...firstArray];
        this.timeout = 0;
        this.chart.update();

        for (var i = 0; i < this.timers.length; i++) {
            this.timers[i].pause();
        }
        this.timers = [];
    }


    highLight(list, colorCode) {
        let chart = this.chart;
        let BaseColor = [...chart.data.datasets[0].backgroundColor];

        this.timers.push(new timer(function() {
            for (var i = 0; i < list.length; i++) {
                chart.data.datasets[0].backgroundColor[list[i]] = colorCode;
            }
            chart.update();
        }, this.timeout + (this.interval / 3)));

        this.timers.push(new timer(function() {
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
/*__________________________________________Tree Chart_____________________________________________________*/

class TreeChart {
    constructor(ctx) {
        $('#' + ctx).css("display", "block");
        this.root = am5.Root.new(ctx);

        this.container = this.root.container.children.push(
            am5.Container.new(this.root, {
                width: am5.percent(100),
                height: am5.percent(100),
                layout: this.root.verticalLayout
            })
        );

        this.series = this.container.children.push(
            am5hierarchy.Tree.new(this.root, {
                singleBranchOnly: false,
                downDepth: 1,
                initialDepth: 10,
                topDepth: 0,
                valueField: "value",
                categoryField: "name",
                childDataField: "children",
                fillField: "fill",
            })
        );


        this.series.circles.template.setAll({
            radius: 15,
            templateField: "circle"
        });

        this.series.outerCircles.template.setAll({
            radius: 0
        });

        this.series.labels.template.setAll({
            templateField: "label"
        });

        this.series.links.template.setAll({
            strokeWidth: 1,
            strokeOpacity: 0.5,
            templateField: "link"
        });

        this.series.nodes.template.setAll({
            draggable: false,
            toggleKey: "none",
            cursorOverStyle: "default"
        });

        this.series.labels.template.set("forceHidden", false);
        this.series.nodes.template.set("tooltipText", false);

        this.series.data.setAll([]);
        this.series.set("selectedDataItem", this.series.dataItems[0]);

        this.timers = [];
        this.timeout = 0;
        this.running = false;
    }

    update(tree) {
        this.timeout += interval;
        var series = this.series;
        this.timers.push(new timer(function() {
            series.data.setAll(tree);
        }, this.timeout));
    }

    getNode(tree, index) {
        if (index == 0) {
            return tree[0];
        } else {
            var parents = Math.floor((index - 1) / 2);
            if (index % 2 == 0) {
                return this.getNode(tree, parents).children[1];
            }
            /* 홀수 -> 왼쪽 */
            else {
                return this.getNode(tree, parents).children[0];
            }
        }
    }

    pop(tree, index) {
        var value = this.getNode(tree, index).name;

        if (index > 0) {
            var parents = this.getNode(tree, Math.floor((index - 1) / 2));
            if (index % 2 == 0) {
                parents.children.pop();
            } else {
                delete parents.children;
            }
        }

        return value;
    }

    highLight(tree, value) {
        var series = this.series;
        var temp = tree[0];
        while (true) {
            if (temp.name == value) {
                this.timers.push(new timer(function() {
                    temp.fill = '#a52a2a';
                    series.data.setAll(JSON.parse(JSON.stringify(tree)));
                }, this.timeout));
                this.timeout += interval;
                return
            } else if (temp.name > value) {
                temp = temp.children[0];
            } else {
                temp = temp.children[1];
            }
        }
    }


    removeListChild() {
        this.timers.push(new timer(function() {
            myTreeList.find('span:first').remove();
        }, this.timeout));
    }

    addListChild(num) {
        this.timers.push(new timer(function() {
            var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) + '</span>')
            dom.appendTo(myTreeList);
        }, this.timeout));
    }

    stop() {
        for (var i = 0; i < this.timers.length; i++) {
            this.timers[i].pause();
        }

    }

    resume() {
        for (var i = 0; i < this.timers.length; i++) {
            this.timers[i].resume();
        }
    }

    reset() {

        myTreeList.empty();
        for (let num of firstArray) {
            var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) + '</span>')
            dom.appendTo(myTreeList);
        }
        this.timeout = 0;
        this.series.data.setAll([]);
        for (var i = 0; i < this.timers.length; i++) {
            this.timers[i].pause();
        }
        this.timers = [];
    }
}

/*__________________________________________Table Chart_____________________________________________________*/

class TableChart {
    constructor(ctx) {
        this.table = document.getElementById(ctx);
        this.timers = [];
        this.timeout = 0;
        this.running = false;
    }

    insert(number, row, column) {
        this.timeout += interval;
        var table = this.table;
        this.timers.push(new timer(function() {
            while (table.rows.length < row + 1) {
                var newRow = table.insertRow();
                for (let i = 0; i < 10; i++) {
                    newRow.insertCell(i);
                }
            }
            table.rows[row].cells[column].innerHTML = number;
        }, this.timeout));
    }

    remove(row, column) {
        this.timeout += interval;
        var table = this.table;
        this.timers.push(new timer(function() {
            table.rows[row].cells[column].innerHTML = "";
        }, this.timeout));
    }

    stop() {
        for (var i = 0; i < this.timers.length; i++) {
            this.timers[i].pause();
        }

    }

    resume() {
        for (var i = 0; i < this.timers.length; i++) {
            this.timers[i].resume();
        }
    }

    reset() {
        myTableList.empty();
        for (let num of firstArray) {
            var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) + '</span>')
            dom.appendTo(myTableList);
        }
        this.timeout = 0;
        for (var i = 0; i < this.timers.length; i++) {
            this.timers[i].pause();
        }
        this.timers = [];
    }

    removeListChild() {
        this.timers.push(new timer(function() {
            myTableList.find('span:first').remove();
        }, this.timeout));
    }

    addListChild(num) {
        this.timers.push(new timer(function() {
            var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) + '</span>')
            dom.appendTo(myTableList);
        }, this.timeout));
    }
}

/* ______________________________Sorting Algoriths based JS__________________________________________________ */

function bubbleSort_bar() {
    now = new Date().getTime();
    var data = [...myBarChart.chart.data.datasets[0].data];
    myBarChart.running = true;

    for (var i = 0; i < data.length - 1; i++) {
        for (var j = 0; j < (data.length - i) - 1; j++) {
            if (data[j] > data[j + 1]) {
                myBarChart.swap(data, j, j + 1);
            }
        }
    }
}

function selectionSort_bar() {
    now = new Date().getTime();
    var data = [...myBarChart.chart.data.datasets[0].data];
    myBarChart.running = true;

    for (var i = 0; i < data.length - 1; i++) {
        var least = i;
        for (var j = i + 1; j < data.length; j++) {
            if (data[j] < data[least])
                least = j;
        }
        if (least != i)
            myBarChart.swap(data, i, least);
    }
}

function insertionSort_bar() {
    now = new Date().getTime();
    var data = [...myBarChart.chart.data.datasets[0].data];
    myBarChart.running = true;

    for (var i = 0; i < data.length; i++) {
        var target = i;
        for (var j = i - 1; j >= 0; j--) {
            if (data[target] < data[j]) {
                myBarChart.swap(data, target--, j);
            } else {
                break;
            }
        }
    }
}

function mergeSort_bar() {
    now = new Date().getTime();
    var data = [...myBarChart.chart.data.datasets[0].data];
    myBarChart.running = true;

    mergeSort_divide(data, 0, data.length - 1);
}

function mergeSort_divide(data, min, max) {
    if (max - min == 0) return;
    else if (max - min == 1) {
        if (data[min] > data[max])
            myBarChart.swap(data, min, max);
    }
    else {
        var mid = Math.floor((min + max) / 2);
        mergeSort_divide(data, min, mid);
        mergeSort_divide(data, mid + 1, max);
        mergeSort_merge(data, min, max, mid);
    }
}
function mergeSort_merge(data, min, max, mid) {
    var i = min;
    while (i <= mid) {
        if (data[i] > data[mid + 1]) {
            myBarChart.swap(data, i, mid + 1);
            for (var j = mid + 1; j < max; j++) {
                if (data[j] > data[j + 1]) {
                    myBarChart.swap(data, j, j + 1);
                }
            }
        }
        i++;
    }
}

function quickSort_bar() {
    now = new Date().getTime();
    var data = [...myBarChart.chart.data.datasets[0].data];
    myBarChart.running = true;

    quickSort_pivot(data, 0, data.length - 1);
}

function quickSort_pivot(data, min, max) {
    if (min < max) {
        var pivot = quickSort_partition(data, min, max);
        quickSort_pivot(data, min, pivot);
        quickSort_pivot(data, pivot + 1, max);
    }
    return;
}
function quickSort_partition(data, min, max) {
    var pivot = data[Math.floor((min + max) / 2)]; // 부분리스트의 중간 요소를 피벗으로 설정
    while (true) {
        while (data[min] < pivot) min++;
        while (data[max] > pivot && min <= max) max--;
        if (min >= max) return max;
        myBarChart.swap(data, min, max);
    }

}

function heapSort_bar() {
    now = new Date().getTime();
    var data = [...myBarChart.chart.data.datasets[0].data];
    myBarChart.running = true;

    for (let i = data.length - 1; i >= 0; i--) {
        heapSort_heapify_bar(data, i)
        if (data[0] > data[i]) {
            myBarChart.swap(data, 0, i);
        }
    }
}
function heapSort_heapify_bar(data, i) {
    let index = parseInt(i / 2) - 1;
    while (index >= 0) {
        const left = index * 2 + 1;
        const right = index * 2 + 2;

        if (data[left] >= data[right] && data[index] < data[left]) {
            myBarChart.swap(data, index, left);
        } else if (data[right] > data[left] && data[index] < data[right]) {
            myBarChart.swap(data, index, right);
        }
        index--;
    }
}

function heapSort_tree() {
    now = new Date().getTime();
    var data = [...firstArray];
    myTreeChart.running = true;

    /* 최대 힙 구현*/
    var tree = [];
    for (var i = 0; i < data.length; i++) {
        heapSort_tree_add(tree, i, data[i]);
    }

    for (var i = data.length - 1; i >= 0; i--) {
        heapSort_tree_pop(tree, i);
        heapSort_tree_heapify(tree, i);
    }
}

function heapSort_tree_add(tree, index, value) {
    var data = { id: index, name: value, fill: '#333d4d' };
    if (tree.length == 0) {
        tree.push(data);
    } else {
        var parents = myTreeChart.getNode(tree, Math.floor((index - 1) / 2));
        if (index % 2 == 1) {
            parents.children = [];
        }
        parents.children.push(data);
    }
    myTreeChart.update(JSON.parse(JSON.stringify(tree)));
    myTreeChart.removeListChild();

    while (index > 0) {
        var node = myTreeChart.getNode(tree, index);
        var parents = myTreeChart.getNode(tree, (Math.floor((index - 1) / 2)));
        if (parents.name > node.name) {
            break;
        } else {
            var temp = node.name;
            node.name = parents.name;
            parents.name = temp;
            myTreeChart.update(JSON.parse(JSON.stringify(tree)));
            index = parents.id;
        }
    }
}

function heapSort_tree_pop(tree, index) {
    myTreeChart.addListChild(tree[0].name);
    if (index > 0) {
        tree[0].name = myTreeChart.pop(tree, index);
    } else {
        tree = [];
    }
    myTreeChart.update(JSON.parse(JSON.stringify(tree)));
}


function heapSort_tree_heapify(tree) {
    var temp = tree[0]
    while ('children' in temp) {
        if (temp.children.length == 1) {
            if (temp.children[0].name > temp.name) {
                var value = temp.name;
                temp.name = temp.children[0].name;
                temp.children[0].name = value;
                myTreeChart.update(JSON.parse(JSON.stringify(tree)));
            }
            temp = temp.children[0]
        } else {
            if (temp.name > temp.children[0].name && temp.name > temp.children[1].name) {
                break;
            } else {

                var biggerChildren = temp.children[0].name > temp.children[1].name ? temp.children[0] : temp.children[1];
                var value = temp.name;
                temp.name = biggerChildren.name;
                biggerChildren.name = value;
                myTreeChart.update(JSON.parse(JSON.stringify(tree)));
                temp = biggerChildren;
            }
        }
    }
}


function treeSort_tree() {
    now = new Date().getTime();
    var data = [...firstArray];
    myTreeChart.running = true;
    var tree = [];
    for (var i = 0; i < data.length; i++) {
        treeSort_tree_add(tree, i, data[i]);
        myTreeChart.update(JSON.parse(JSON.stringify(tree)));
        myTreeChart.removeListChild();
    }
    treeSort_tree_pop(tree, tree[0]);
}

function treeSort_tree_add(tree, index, value) {
    var data = { id: index, name: value, fill: '#333d4d' };
    if (tree.length == 0) {
        tree.push(data);
    } else {
        var temp = tree[0];
        while (true) {
            if (!temp.hasOwnProperty('children')) {
                temp.children = [{ id: null, circle: { fill: "#FFFFFF" }, fill: '#333d4d' }, { id: null, circle: { fill: "#FFFFFF" }, fill: '#333d4d' }];
            }
            if (temp.name > value) {
                if (temp.children[0].id == null) {
                    temp.children[0] = data;
                    return;
                } else {
                    temp = temp.children[0];
                }
            } else {
                if (temp.children[1].id == null) {
                    temp.children[1] = data;
                    return;
                } else {
                    temp = temp.children[1];
                }
            }
        }
    }
}

function treeSort_tree_pop(tree, node) {
    if (node.id != null) {
        if (node.hasOwnProperty('children')) {
            treeSort_tree_pop(tree, node.children[0]);        }
        myTreeChart.highLight(tree, node.name);
        myTreeChart.addListChild(node.name);

        if (node.hasOwnProperty('children')) {
            treeSort_tree_pop(tree, node.children[1]);
        }
    }
}

function timSort_bar() {
    now = new Date().getTime();
    var data = [...myBarChart.chart.data.datasets[0].data];
    myBarChart.running = true;
    var run = 8;

    for (var i = 0; i < data.length; i += run) {
        timsort_bar_insertion(data, i, Math.min((i + run - 1), (data.length - 1)));
    }

    for (var size = run; size < data.length; size *= 2) {
        for (let left = 0; left < data.length; left += 2 * size) {
            timsort_bar_merge(data, left, left + size - 1, Math.min((left + 2 * size - 1), (data.length - 1)))
        }

    }
}


function timsort_bar_insertion(data, left, right) {
    for (let i = left + 1; i <= right; i++) {
        let target = i;
        for (let j = i - 1; j >= left; j--) {
            if (data[target] < data[j]) {
                myBarChart.swap(data, target--, j);
            } else {
                break;
            }
        }
    }

}

function timsort_bar_merge(data, min, mid, max) {
    var i = min;
    while (i <= mid) {
        if (data[i] > data[mid + 1]) {
            myBarChart.swap(data, i, mid + 1);
            for (var j = mid + 1; j < max; j++) {
                if (data[j] > data[j + 1]) {
                    myBarChart.swap(data, j, j + 1);
                }
            }
        }
        i++;
    }
}

function introSort_bar() {
    now = new Date().getTime();
    var data = [...myBarChart.chart.data.datasets[0].data];
    myBarChart.running = true;
    var depth = parseInt(Math.log(data.length) * 2);
    introSort_bar_intro(data, depth, 0, data.length - 1);
}

function introSort_bar_intro(data, depth, min, max) {
    if (depth == 0) {
        if (max - min > 16) {
            introSort_bar_heapsort(data, min, max);
        } else {
            introSort_bar_insertonsort(data, min, max);
        }
    } else {
        if (min >= max) {
            return;
        }
        var pivot = introSort_bar_partition(data, min, max);
        introSort_bar_intro(data, depth - 1, min, pivot);
        introSort_bar_intro(data, depth - 1, pivot + 1, max);
    }
}

function introSort_bar_insertonsort(data, min, max) {
    for (var i = min; i < max; i++) {
        var target = i;
        for (var j = i - 1; j >= 0; j--) {
            if (data[target] < data[j]) {
                myBarChart.swap(data, target--, j);
            } else {
                break;
            }
        }
    }
}

function introSort_bar_heapsort(data, min, max) {
    var list = data.slice(min, max);
    for (let i = list.length - 1; i >= 0; i--) {
        introSort_bar_heapify(data, list, min, i);
        if (list[0] > list[i]) {
            var temp = list[0];
            list[0] = list[i];
            list[i] = temp;
            myBarChart.swap(data, min, min + i);
        }
    }
}


function introSort_bar_heapify(data, list, min, i) {
    let index = parseInt(i / 2) - 1;
    while (index >= 0) {
        const left = index * 2 + 1;
        const right = index * 2 + 2;

        if (list[left] >= list[right] && list[index] < list[left]) {
            var temp = list[index];
            list[index] = list[left];
            list[left] = temp;
            myBarChart.swap(data, min + index, min + left);

        } else if (list[right] > list[left] && list[index] < list[right]) {
            var temp = list[index];
            list[index] = list[right];
            list[right] = temp;
            myBarChart.swap(data, min + index, min + right);
        }
        index--;
    }
}


function introSort_bar_partition(data, min, max) {
    var pivot = data[Math.floor((min + max) / 2)]; // 부분리스트의 중간 요소를 피벗으로 설정
    while (true) {
        while (data[min] < pivot) min++;
        while (data[max] > pivot && min <= max) max--;
        if (min >= max) return max;
        myBarChart.swap(data, min, max);
    }

}

function radixSort_bar() {
    now = new Date().getTime();
    var data = [...myBarChart.chart.data.datasets[0].data];
    myBarChart.running = true;

    var top = 0;
    for (var i = 0; i < data.length; i++) {
        if (top < data[i]) top = data[i];
    }
    var maxRadix = top.toString().length;
    var radix = 0;

    while (radix < maxRadix) {
        var index = 0;
        for (var num = 0; num < 10; num++) {
            for (var i = 0; i < data.length; i++) {
                let str = String(data[i]);
                var k = str[str.length - 1 - radix];
                if (k == null) k = 0;
                if (k == String(num)) {
                    if (index != i) {
                        data.splice(index, 0, data.splice(i, 1)[0]);
                        myBarChart.update([...data]);
                    }
                    index++;
                }
            }
        }
        radix++;
    }
}

function radixSort_table() {
    now = new Date().getTime();
    var data = [...firstArray];
    myTableChart.running = true;

    var buckets = [];
    for (var i = 0; i < 10; i++) {
        buckets.push([]);
    }

    var top = 0;
    for (var i = 0; i < data.length; i++) {
        if (top < data[i]) top = data[i];
    }
    var maxRadix = top.toString().length;
    var radix = 0;

    while (radix < maxRadix) {
        while (data.length > 0) {
            var value = data.shift();
            var num = parseInt(value / Math.pow(10, radix) % 10);
            buckets[num].push(value);
            myTableChart.insert(value, buckets[num].length, num);
            myTableChart.removeListChild();
        }
        for (var i = 0; i < 10; i++) {
            var length = buckets[i].length;
            while (buckets[i].length > 0) {
                var value = buckets[i].shift();
                data.push(value);
                myTableChart.remove(length - buckets[i].length, i);
                myTableChart.addListChild(value);
            }
        }
        radix++;
    }

}