<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1 class="h2">Selection Sort</h1>
	<!-- 
	<div class="btn-toolbar mb-2 mb-md-0">
		<div class="btn-group me-2">
			<button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
			<button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
		</div>
		<button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle d-flex align-items-center gap-1">
			<svg class="bi">
                    <use xlink:href="#calendar3"></use></svg>
			This week
		</button>
	</div> -->
</div>

<h2>
	Array Maker
	<a class="btn btn-primary" data-bs-toggle="collapse" href="#collapse-array" role="button" aria-expanded="false" aria-controls="collapse">
		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-down" viewBox="0 0 16 16">
      <path fill-rule="evenodd" d="M1.646 6.646a.5.5 0 0 1 .708 0L8 12.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
      <path fill-rule="evenodd" d="M1.646 2.646a.5.5 0 0 1 .708 0L8 8.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708" />
    </svg>
	</a>
</h2>

<div class="collapse" id="collapse-array">
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
<div class="collapse" id="collapse-process">
	<div class="card card-body">
		<div class="table-responsive small" style="width:100%; height:200px; overflow:auto">
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
