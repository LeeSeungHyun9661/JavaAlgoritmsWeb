
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Insertion Sort</h1>
</div>

<p>
	<strong>Insertion sort</strong> is a simple sorting algorithm that builds the final sorted array (or list) one item at a time by comparisons. It is much less efficient on large lists than more advanced algorithms such as quicksort, heapsort, or merge sort. However, insertion sort provides several advantages:
</p>
<ul>
	<li>Simple implementation: Jon Bentley shows a three-line C/C++ version that is five lines when optimized.</li>
	<li>Efficient for (quite) small data sets, much like other quadratic (i.e., O(n2)) sorting algorithms</li>
	<li>More efficient in practice than most other simple quadratic algorithms such as selection sort or bubble sort</li>
	<li>Adaptive, i.e., efficient for data sets that are already substantially sorted: the time complexity is O(kn) when each element in the input is no more than k places away from its sorted position</li>
	<li>Stable; i.e., does not change the relative order of elements with equal keys</li>
	<li>n-place; i.e., only requires a constant amount O(1) of additional memory space</li>
	<li>Online; i.e., can sort a list as it receives it When people manually sort cards in a bridge hand, most use a method that is similar to insertion sort.</li>
</ul>
<p>When people manually sort cards in a bridge hand, most use a method that is similar to insertion sort.</p>



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
	<input class="btn btn-primary" id="startButton" type="button" onclick="startSort('insertion')" value="Start" style="display: none">
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
