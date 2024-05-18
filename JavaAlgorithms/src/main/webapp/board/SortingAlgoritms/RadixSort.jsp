<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Radix Sort</h1>
</div>
<p>
	<strong>Insertion Sort</strong> is another simple and efficient sorting algorithm that builds the final sorted list one item at a time. It works by repeatedly taking the next item from the unsorted part of the list and inserting it into its correct position within the sorted part of the list.
	<br>
	Insertion Sort is efficient for small lists or nearly sorted lists. Its time complexity is O(n^2) in the worst case scenario, but it can perform well on small datasets or partially sorted lists because it makes a relatively small number of comparisons and swaps compared to other quadratic-time sorting algorithms.
	<br>
	Overall, Insertion Sort is easy to understand and implement, making it a good choice for sorting small datasets or as part of more complex sorting algorithms.
</p>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">How It Work?</h1>
</div>
<ul>
	<li>Start with the second element (index 1) of the list. This element is considered as being part of the sorted list.</li>
	<li>Compare this element with the one before it (the first element in the sorted list). If the current element is smaller, swap them.</li>
	<li>Move to the next unsorted element and repeat step 2 until all elements have been included in the sorted list.</li>
	<li>At each step, the sorted list grows by one element, and the unsorted list shrinks by one element until the entire list is sorted.</li>
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
        
        public class InsertionSort extends Sort{    
            
            public InsertionSort(ArrayList&lt;Integer&gt; list) {
                super(list);
            }
        
            @Override
            public void sort() {
                int size = super.getSize();
                ArrayList&lt;Integer> list = super.getList();
                
                for(int i=1; i&lt;size ; i++) {
                    int target=i; for(int j=i-1; j>= 0; j--) {
                        if(list.get(target) &lt; list.get(j)) {
                            swap(target--,j);
                        }else {
                            break;
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
	<!-- Bar Chart -->
	<div class="d-flex flex-column justify-content-center">
		<canvas class="my-4" id="barChart" style="display: block; box-sizing: border-box; height: 445px; width: 1056px;"></canvas>
		<div class="row mx-auto p-2">
			<div class="col">
				<button type="button" class="btn btn-primary" id="BarSortingBtn" onclick="radixSort_bar()">
					<i class="bi bi-play-fill"></i>
				</button>
			</div>
			<div class="col">
				<button type="button" class="btn btn-primary" id="BarPauseBtn" onclick="bar_pause()">
					<i class="bi bi-pause-fill"></i>
				</button>
			</div>
			<div class="col">
				<button type="button" class="btn btn-primary" id="BarResetBtn" onclick="bar_reset()">
					<i class="bi bi-arrow-clockwise"></i>
				</button>

			</div>
		</div>
	</div>
</div>

<div class="collapse show" id="collapse-chart">
	<!-- Tree Chart -->
	<div class="d-flex flex-column justify-content-center">
		<div class="card card-body">
			<div class="table-responsive small" style="width: 100%; height: 500px;">
				<table class="table table-striped table-sm" id="tableChart">
					<thead>
						<tr>
							<th scope="col">0</th>
							<th scope="col">1</th>
							<th scope="col">2</th>
							<th scope="col">3</th>
							<th scope="col">4</th>
							<th scope="col">5</th>
							<th scope="col">6</th>
							<th scope="col">7</th>
							<th scope="col">8</th>
							<th scope="col">9</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>

		<div class="card card-body">
			<div id="tableList"></div>
		</div>


		<div class="row mx-auto p-2">
			<div class="col">
				<button type="button" class="btn btn-primary" id="TreeSortingBtn" onclick="radixSort_table()">
					<i class="bi bi-play-fill"></i>
				</button>
			</div>
			<div class="col">
				<button type="button" class="btn btn-primary" id="TreepauseBtn" onclick="table_pause()">
					<i class="bi bi-pause-fill"></i>
				</button>
			</div>
			<div class="col">
				<button type="button" class="btn btn-primary" id="TreeresetBtn" onclick="table_reset()">
					<i class="bi bi-arrow-clockwise"></i>
				</button>

			</div>
		</div>
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

