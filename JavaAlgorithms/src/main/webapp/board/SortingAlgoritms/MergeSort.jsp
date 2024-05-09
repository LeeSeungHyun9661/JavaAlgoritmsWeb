
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Merge Sort</h1>
</div>

<p>
    <strong>Bubble sort,</strong>sometimes referred to as <strong>sinking sort</strong>, is a simple sorting algorithm that repeatedly steps through the input list element by element, comparing the current element with the one after it, swapping their values if needed. These passes through the list are repeated until no swaps have to be performed during a pass, meaning that the list has become fully sorted. The algorithm, which is a comparison sort, is named for the way the larger elements "bubble" up to the top of the list. This simple algorithm performs poorly in real world use and is used primarily as an educational tool. More efficient algorithms such as quicksort, timsort, or merge sort are used by the sorting libraries built into popular programming languages such as Python and Java. However, if parallel processing is allowed, bubble sort sorts in O(n) time, making it considerably faster than parallel implementations of insertion sort or selection sort which do not parallelize as
    effectively.
</p>

<h2>
    Array Maker
    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapse-array" role="button" aria-expanded="false" aria-controls="collapse">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-down" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M1.646 6.646a.5.5 0 0 1 .708 0L8 12.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
      <path fill-rule="evenodd" d="M1.646 2.646a.5.5 0 0 1 .708 0L8 8.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
    </svg>
    </a>
</h2>

<div class="collapse show" id="collapse-array">
    <div class="card card-body">
        <jsp:include page="ArrayMaker.jsp" flush="true" />
    </div>
</div>

<!-- Chart -->
<div class="d-flex flex-column justify-content-center">
    <canvas class="my-4 w-100" id="myChart" style="display: none; box-sizing: border-box; height: 445px; width: 1056px;"></canvas>
    <input class="btn btn-primary" id="startButton" type="button" onclick="startSort()" value="Start" style="display: none">
</div>

<h2>
    Process Record
    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapse-process" role="button" aria-expanded="false" aria-controls="collapse">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-down" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M1.646 6.646a.5.5 0 0 1 .708 0L8 12.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
      <path fill-rule="evenodd" d="M1.646 2.646a.5.5 0 0 1 .708 0L8 8.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
    </svg>
    </a>
</h2>
<div class="collapse show" id="collapse-process">
    <div class="card card-body">
        <div class="table-responsive small" style="width: 100%; height: 200px; overflow: auto" id="table">
            <table class="table table-striped table-sm" id="table-row">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Time</th>
                        <th scope="col">Job</th>
                        <th scope="col">Index of A</th>
                        <th scope="col">A</th>
                        <th scope="col">Index of B</th>
                        <th scope="col">B</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</div>

<h2>
    Java Code
    <a class="btn btn-primary" data-bs-toggle="collapse" href="#collapse-code" role="button" aria-expanded="false" aria-controls="collapse">
        <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="currentColor" class="bi bi-chevron-double-down" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M1.646 6.646a.5.5 0 0 1 .708 0L8 12.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
      <path fill-rule="evenodd" d="M1.646 2.646a.5.5 0 0 1 .708 0L8 8.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
    </svg>
    </a>
</h2>

<div class="collapse show" id="collapse-code">
    <div class="card card-body">
        <iframe src="https://carbon.now.sh/embed/rdMZ5jMy7DmEIY7rDAy2" style="width: auto; height: 600px; border: 0; transform: scale(1); overflow: hidden;" sandbox="allow-scripts allow-same-origin"> </iframe>
    </div>
</div>
