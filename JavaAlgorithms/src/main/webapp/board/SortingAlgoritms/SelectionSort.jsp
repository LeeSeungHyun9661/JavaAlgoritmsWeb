<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Selection Sort</h1>
</div>
<p>
    <strong>Selection Sort</strong> is a simple yet intuitive algorithm for sorting a list. In this algorithm, at each step, the smallest value from the unsorted part of the list is selected and moved to the front of the unsorted part.<br>
    While Selection Sort is straightforward and easy to understand, it is inefficient for large datasets. Its time complexity is always O(n^2), meaning the number of comparisons and swaps grows quadratically with the size of the list.<br>
    Despite its inefficiency, Selection Sort can be effective for sorting small lists or nearly sorted lists. Additionally, it serves as a useful introductory sorting algorithm for learning and understanding sorting concepts.
</p>
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">How It Work?</h1>
</div>
<ul>
    <li>Start at the beginning of the list.</li>
    <li>Traverse through the rest of the list, starting from the current position, to find the minimum value.</li>
    <li>Once the minimum value is found, swap it with the value at the current position.</li>
    <li>Move to the next position and repeat steps 2 and 3 until the end of the list is reached.</li>
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
		
		public class SelectionSort extends Sort  {
		    
		    public SelectionSort(ArrayList&lt;Integerr&gt; list) {
		        super(list);        
		    }
		
		    @Override
		    public void sort() {
		        int size = super.getSize(); 
		        int least, least_j;
		        ArrayList&lt;Integerr&gt; list = super.getList();
		        
		        for(int i = 0; &lt; size -1 ; i++) {   
		            least = list.get(i);        
		            least_j = i;
		            
		            for(int j = i+1; j< size; j++) {
		                if(list.get(j) < least) {           
		                    least = list.get(j);
		                    least_j = j;
		                }
		            }           
		            if(least_j != i) {
		                swap(i,least_j);
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
        <canvas class="my-4 w-100" id="myChart" style="display: none; box-sizing: border-box; height: 445px; width: 1056px;"></canvas>
        <div class="d-flex flex-row justify-content-center">
            <input class="btn btn-primary" id="startButton" type="button" onclick="startSort('bubble')" value="Start" style="display: none">
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