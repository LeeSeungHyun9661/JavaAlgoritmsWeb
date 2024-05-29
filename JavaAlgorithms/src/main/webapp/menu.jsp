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
		<div class="offcanvas-md offcanvas-end bg-body-tertiary" tabindex="-1" id="sidebarMenu" aria-labelledby="sidebarMenuLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="sidebarMenuLabel">Java Algorithms</h5>
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#sidebarMenu" aria-label="Close"></button>
			</div>

			<!-- Side Bar -->
			<div class="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
				<!-- Accordion -->
				<div class="accordion" id="accordionExample">

					<!-- Sorting Algoritms -->
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button <%if (!group.equals("/basic") && !group.equals("/main.do")) {%> collapsed <%}%>" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_basic" aria-expanded="false" aria-controls="collapseOne">Basic</button>
						</h2>
						<div id="collapse_basic" class="accordion-collapse collapse <%if (group.equals("/basic") || group.equals("/main.do")) {%> show <%}%>" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<ul class="nav flex-column">
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" id="pageBtn" href="basic_ide.do"> IDE </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" id="pageBtn" href="basic_jvm.do"> JVM </a></li>
                                    <li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" id="pageBtn" href="basic_grammer.do"> Basic Grammer </a></li>
                                    <li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" id="pageBtn" href="basic_array.do"> Array and Copy </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" id="pageBtn" href="basic_loop.do"> Loop and Conditional </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" id="pageBtn" href="basic_io.do"> Input / Output </a></li>
								</ul>
							</div>
						</div>
					</div>


					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button <%if (!group.equals("/oop")) {%> collapsed <%}%>" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_oop" aria-expanded="false" aria-controls="collapseThree">Object-Oriented Programming</button>
						</h2>
						<div id="collapse_oop" class="accordion-collapse collapse <%if (group.equals("/oop")) {%> show <%}%>" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<ul class="nav flex-column mb-auto">

									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="oop_features.do"> Features </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="oop_class.do"> Class </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="oop_inheritance.do"> Inheritance </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="oop_abstract.do"> Abstract </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="oop_polymo.do"> Polymorphism </a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="oop_capsule.do"> Capsule </a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button <%if (!group.equals("/ds")) {%> collapsed <%}%>" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_ds" aria-expanded="false" aria-controls="collapseThree">Data Structure</button>
						</h2>
						<div id="collapse_ds" class="accordion-collapse collapse <%if (group.equals("/ds")) {%> show <%}%>" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<ul class="nav flex-column mb-auto">

									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="ds_collection.do"> <svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg> Collection
									</a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="ds_list.do"> <svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg> List
									</a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="ds_map.do"> <svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg> Map
									</a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="ds_generic.do"> <svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg> Generic
									</a></li>
									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="ds_queuestack.do"> <svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg> Queue & Stack
									</a></li>

								</ul>
							</div>
						</div>
					</div>

					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button <%if (!group.equals("/sorting")) {%> collapsed <%}%>" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_sorting" aria-expanded="false" aria-controls="collapseThree">Sorting</button>
						</h2>
						<div id="collapse_sorting" class="accordion-collapse collapse <%if (group.equals("/sorting")) {%> show <%}%>" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<ul class="nav flex-column mb-auto">

									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="oop_generic.do"> <svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg> Capsule
									</a></li>

								</ul>
							</div>
						</div>
					</div>


					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button collapsed  <%if (!group.equals("/gui")) {%> collapsed <%}%>" type="button" data-bs-toggle="collapse" data-bs-target="#collapse_gui" aria-expanded=<%if (group.equals("/gui")) {%> "true" <%} else {%>"false"<%}%> aria-controls="collapseThree">GUI</button>
						</h2>
						<div id="collapse_gui" class="accordion-collapse collapse <%if (group.equals("/gui")) {%> show <%}%>" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<ul class="nav flex-column mb-auto">

									<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="#" onclick="document.location.href='/JavaAlgorithms/templates/datastructure/array.html'"> <svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg> Shell Sort
									</a></li>

								</ul>
							</div>
						</div>
					</div>



				</div>
				<hr class="my-3">

				<ul class="nav flex-column mb-auto">
					<li class="nav-item"><a class="nav-link d-flex align-items-center gap-2" href="https://getbootstrap.kr/docs/5.3/examples/dashboard/#"> <svg class="bi">
                            <use xlink:href="#door-closed"></use>
                        </svg> Sign out
					</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>


