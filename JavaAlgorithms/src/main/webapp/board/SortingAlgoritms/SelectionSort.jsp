
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Selection Sort</h1>
</div>

<p>In computer science, <strong>selection</strong> sort is an in-place comparison sorting algorithm. It has an O(n2) time complexity, which makes it inefficient on large lists, and generally performs worse than the similar insertion sort. Selection sort is noted for its simplicity and has performance advantages over more complicated algorithms in certain situations, particularly where auxiliary memory is limited.<br> The algorithm divides the input list into two parts: a sorted sublist of items which is built up from left to right at the front (left) of the list and a sublist of the remaining unsorted items that occupy the rest of the list. Initially, the sorted sublist is empty and the unsorted sublist is the entire input list. The algorithm proceeds by finding the smallest (or largest, depending on sorting order) element in the unsorted sublist, exchanging (swapping) it with the leftmost unsorted element (putting it in sorted order), and moving the sublist boundaries one element to the right.<br> The
	time efficiency of selection sort is quadratic, so there are a number of sorting techniques which have better time complexity than selection sort.</p>

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
	<input class="btn btn-primary" id="startButton" type="button" onclick="startSort('selection')" value="Start" style="display: none">
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
		<div class="table-responsive small" style="width: 100%; height: 200px; overflow: auto">
			<table class="table table-striped table-sm" id="process-table">
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
