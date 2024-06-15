var now, interval = 100;
var firstArray, option, group;
var myBarChart, myTreeChart, myTreeList, myTableChart, myTableList;

let isVisible = false;
const func = function() {
    if (!isVisible && checkVisible('#chart_area')) {
        generateArray();
        isVisible = true;
    }
    isVisible && window.removeEventListener('scroll', func);
}
window.addEventListener('scroll', func);

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

function generateArray() {
    console.log("START");
    /* 입력 변수 받아오기 */
    var size = Number($('#size').val());
    var min = Number($('#min').val());
    var max = Number($('#max').val());

    let set = new Set();
    if ((max - min + 1) * 0.7 < size) { alert("Make Number range wider!"); return; }
    if (size == 0) { size = 50; min = 1; max = 100; }
    while (set.size < size) {
        var randNum = Math.floor(Math.random() * (max - min + 1)) + min; -
            set.add(randNum);
    }

    firstArray = Array.from(set);

    if ($('#barChart').length) {
        if (myBarChart) {
            myBarChart.reset();
        }
        myBarChart = new BarChart($('#barChart'), [...firstArray]);
    }

    if ($('#treeChart').length) {
        if (myTreeChart != undefined) {
            myTreeChart.reset();
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
        myTableChart = new TableChart('tableChart');
        myTableList = $("#tableList");

        myTableList.empty();
        for (let num of firstArray) {
            var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) + '</span>')
            dom.appendTo(myTableList);
        }
    }
}


function bar_pause() {
    if (myBarChart) {
        if (myBarChart.running) {
            myBarChart.running = false;
            myBarChart.stop();
            $('#bar_startBtn').attr("onclick", "bar_resume()");
        }
    }
}

function bar_reset() {
    if (myBarChart) {
        myBarChart.running = false;
        myBarChart.reset();
        $('#bar_startBtn').attr("onclick", "bar_start()");
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
        $('#TreeSortingBtn').attr("onclick", "tree_start()");
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
        $('#TreeSortingBtn').attr("onclick", "table_start()");
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