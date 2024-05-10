function swap(arr, i, j) {
    var temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}

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