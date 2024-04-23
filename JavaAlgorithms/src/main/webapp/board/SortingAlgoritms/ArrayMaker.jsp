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
	<div id="array-list">
	</div>
</div>

<script>
	function makeArray() {
		/* 입력 변수 받아오기 */
		var size = Number($("#size").val());
		var min = Number($("#min").val());
		var max = Number($("#max").val());
		
		/* 값 범위가 너무 작으면 재생성 요청 */
		if ((max - min + 1) * 0.7 < size) {
			alert("Make Number range wider!");
			return;
		}
		
		/* 난수 배열 생성 */
		
		while (arr.size < size) {
			arr.add(Math.floor(Math.random() * (max - min + 1)) + min);
		}		
		
		$("#array-list").empty();
		
		for (let num of arr) {
			var dom = $('<span class="badge rounded-pill text-bg-secondary">' + String(num) +'</span>')
			dom.appendTo($("#array-list"));
		}
	}
</script>