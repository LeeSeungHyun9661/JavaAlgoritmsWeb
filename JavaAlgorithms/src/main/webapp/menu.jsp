<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Sorting Algorithms</title>
</head>
<body>
	<%
	String group = (String) request.getAttribute("group");
	%>

	<div class="sidebar border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary">
		<div class="offcanvas-md offcanvas-end bg-body-tertiary" tabindex="-1" id="sidebarMenu"
			aria-labelledby="sidebarMenuLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="sidebarMenuLabel">Java Algorithms</h5>
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
					data-bs-target="#sidebarMenu" aria-label="Close"></button>
			</div>

			<!-- Side Bar -->
			<div class="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
				<!--  -->
				<ul class="nav flex-column mb-auto">
					<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" href="index.jsp">HOME</a></li>

				</ul>

				<!-- Accordion -->
				<div class="accordion accordion-flush" id="accordionExample">
					<!-- Sorting Algoritms -->
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button <%if (!group.equals("/basic")) {%> collapsed <%}%>"
								type="button" data-bs-toggle="collapse" data-bs-target="#collapse_basic"
								aria-expanded="false" aria-controls="collapseOne">기초</button>
						</h2>
						<div id="collapse_basic"
							class="accordion-collapse collapse <%if (group.equals("/basic")) {%> show <%}%>"
							data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<ul class="nav flex-column">
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_ide.do">IDE</a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_jvm.do">JVM</a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_grammer.do"> 기본 구조와 문법 </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_variable.do"> 변수 </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_operator.do"> 연산자 </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_method.do"> 메서드 </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_array.do"> 배열 </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_copy.do"> 복사 </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_loop.do"> 반복문과 조건문 </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_static.do"> Static </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_exception.do"> 오류와 예외처리 </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" id="pageBtn" href="basic_io.do"> 입력 / 출력 </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" href="oop_class.do"> 객체지향과 클래스 </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" href="oop_inheritance.do"> 상속과 다형성 </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" href="oop_abstract.do"> 추상화와 캡슐화 </a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button <%if (!group.equals("/ds")) {%> collapsed <%}%>"
								type="button" data-bs-toggle="collapse" data-bs-target="#collapse_ds" aria-expanded="false"
								aria-controls="collapseOne">정렬 알고리즘</button>
						</h2>
						<div id="collapse_ds"
							class="accordion-collapse collapse <%if (group.equals("/ds")) {%> show <%}%>"
							data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<ul class="nav flex-column mb-auto">
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" href="ds_collection.do"> Collection </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" href="ds_list.do"> List </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" href="ds_map.do"> Map </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" href="ds_generic.do"> Generic </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" href="ds_queuestack.do"> Queue & Stack </a></li>

								</ul>
							</div>
						</div>
					</div>

					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button <%if (!group.equals("/gui")) {%> collapsed <%}%>"
								type="button" data-bs-toggle="collapse" data-bs-target="#collapse_gui" aria-expanded="false"
								aria-controls="collapseOne">그래픽 인터페이스</button>
						</h2>
						<div id="collapse_gui"
							class="accordion-collapse collapse <%if (group.equals("/gui")) {%> show <%}%>"
							data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<ul class="nav flex-column mb-auto">

									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2"
										aria-current="page" href="oop_features.do"> 특징 </a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


