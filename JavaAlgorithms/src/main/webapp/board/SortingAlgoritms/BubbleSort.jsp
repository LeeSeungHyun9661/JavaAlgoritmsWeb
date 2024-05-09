<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Bubble Sort</h1>
</div>
<p>
	<strong>Bubble Sort</strong> is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted.
	<br>
	The name "Bubble Sort" comes from the way smaller elements "bubble" to the top (beginning) of the list, while larger elements "sink" to the bottom (end) of the list with each iteration.
	<br>
	Bubble Sort is straightforward to understand and implement, making it a good introductory sorting algorithm. However, it is not very efficient, especially for large lists, as it has a time complexity of O(n^2) in the worst case scenario. This means that as the number of elements in the list increases, the time it takes to sort the list grows quadratically.
	<br>
	Despite its simplicity and inefficiency for large datasets, Bubble Sort is still sometimes used in educational contexts to teach the concept of sorting algorithms and as a building block for more advanced algorithms.
</p>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">How It Work?</h1>
</div>
<ul>
	<li>Start at the beginning of the list.</li>
	<li>Compare the first two elements of the list. If the first element is greater than the second element, swap them.</li>
	<li>Move to the next pair of elements, and compare them in the same way. Continue this process until you reach the end of the list.</li>
	<li>After the first pass, the largest element will be at the end of the list.</li>
	<li>Repeat steps 1-4 for the remaining elements in the list, excluding the last one on each pass since it's already in its correct position.</li>
	<li>Continue this process until no swaps are needed, indicating that the list is sorted.</li>
</ul>


<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Java Code</h1>
	<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapse-code" role="button" aria-expanded="false" aria-controls="collapse">
		<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="currentColor" class="bi bi-chevron-double-down" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M1.646 6.646a.5.5 0 0 1 .708 0L8 12.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
      <path fill-rule="evenodd" d="M1.646 2.646a.5.5 0 0 1 .708 0L8 8.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
    </svg>
	</a>
</div>

<div class="collapse show" id="collapse-code">
	<pre class="line-numbers">
        <code class="language-java">package sortings;
        import java.util.ArrayList;
        
        public class BubbleSort extends Sort {
        
            public BubbleSort(ArrayList&lt;Integer&gt; list) {
                super(list);
            }
        
            public void sort() {
                int size = super.getSize();
                ArrayList&lt;Integer&gt;list = super.getList();
        
                for (int i = 0; i < size - 1; i++) {
                    for (int j = 0; j < (size - i) - 1; j++) {
                        if (list.get(j) > list.get(j + 1)) {
                            swap(j, j + 1);
                        }
                    }
                }
            }
        
        }</code>
    </pre>
</div>

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Visualization</h1>
	<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapse-chart" role="button" aria-expanded="false" aria-controls="collapse">
		<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="currentColor" class="bi bi-chevron-double-down" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M1.646 6.646a.5.5 0 0 1 .708 0L8 12.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
      <path fill-rule="evenodd" d="M1.646 2.646a.5.5 0 0 1 .708 0L8 8.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
    </svg>
	</a>
</div>
<div class="collapse show" id="collapse-chart">
	<!-- Chart -->
	<div class="d-flex flex-column justify-content-center">
		<canvas class="my-4" id="myChart" style="display: none; box-sizing: border-box; height: 445px; width: 1056px;"></canvas>
		<input class="btn btn-primary" id="startButton" type="button" onclick="startSort()" value="Start" style="display: none">
	</div>
</div>

<h2>
	Setting
	<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapse-setting" role="button" aria-expanded="false" aria-controls="collapse">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-down" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M1.646 6.646a.5.5 0 0 1 .708 0L8 12.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
      <path fill-rule="evenodd" d="M1.646 2.646a.5.5 0 0 1 .708 0L8 8.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
    </svg>
	</a>
</h2>


<div class="collapse show" id="collapse-setting">
	<div class="card card-body">
		<jsp:include page="ArrayMaker.jsp" flush="true" />
		
		<input type="range" class="form-range" min="100" max="2000" value="500" id="speed">
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
	</div>
</div>






<!-- Prism JS -->
<script src="../resources/js/prism.js"></script>
