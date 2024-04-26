<div class="table-responsive small">
	<form class="overflow-hidden" id="form" name="form" action="">
		<div class="row g-3 align-items-center ">
			<div class="col-auto">
				<input type="number" name="size" id="size" class="form-control" placeholder="Array Size">
			</div>
			<div class="col-auto">
				<input type="number" name="min" id="min" class="form-control" placeholder="Min">
			</div>
			<div class="col-auto">
				<span id="passwordHelpInline" class="form-text"> ~ </span>
			</div>
			<div class="col-auto">
				<input type="number" name="max" id="max" class="form-control" placeholder="Max">
			</div>
			<div class="col-auto">
				<input type="button" onclick="makeArray()" value="Generate">
			</div>
			<div class="col-auto">
				<span id="passwordHelpInline" class="form-text"> Array size is under 70% of number range!</span>
			</div>
		</div>
	</form>

	<div class="card card-body">
		<div id="array-list">
		</div>
	</div>

	<!-- Array List -->
	
</div>