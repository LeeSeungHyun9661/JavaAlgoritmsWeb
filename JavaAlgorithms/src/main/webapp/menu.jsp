<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Sorting Algorithms</title>
</head>
<body>
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
							<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Sorting Algoritms</button>
						</h2>
						<div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<ul class="nav flex-column">
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" id="pageBtn" href="introduction.do">
											<svg class="bi">
                                            <use xlink:href="#house-fill"></use>
                                        </svg>
											Introduction
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" id="pageBtn" href="/JavaAlgorithms/templates/sorting/BubbleSort.html">
											<svg class="bi">
                                            <use xlink:href="#house-fill"></use>
                                        </svg>
											Bubble Sort
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" id="pageBtn" href="#" onclick="document.location.href='/JavaAlgorithms/templates/sorting/SelectionSort.html'">
											<svg class="bi">
                                            <use xlink:href="#file-earmark"></use>
                                        </svg>
											Selection Sort
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="#" onclick="document.location.href='/JavaAlgorithms/templates/sorting/InsertionSort.html'">
											<svg class="bi">
                                            <use xlink:href="#cart"></use>
                                        </svg>
											Insertion Sort
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="#" onclick="document.location.href='/JavaAlgorithms/templates/sorting/MergeSort.html'">
											<svg class="bi">
                                            <use xlink:href="#people"></use>
                                        </svg>
											Merge Sort
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="#" onclick="document.location.href='/JavaAlgorithms/templates/sorting/QuickSort.html'">
											<svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg>
											Quick Sort
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="#" onclick="document.location.href='/JavaAlgorithms/templates/sorting/HeapSort.html'">
											<svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg>
											Heap Sort
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="#" onclick="document.location.href='/JavaAlgorithms/templates/sorting/TreeSort.html'">
											<svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg>
											Tree Sort
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="#" onclick="document.location.href='/JavaAlgorithms/templates/sorting/TimSort.html'">
											<svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg>
											Tim Sort
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="#" onclick="document.location.href='/JavaAlgorithms/templates/sorting/IntroSort.html'">
											<svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg>
											Intro Sort
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="#" onclick="document.location.href='/JavaAlgorithms/templates/sorting/RadixSort.html'">
											<svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg>
											Radix Sort
										</a>
									</li>

									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="#" onclick="document.location.href='/JavaAlgorithms/templates/sorting/ShellSort.html'">
											<svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg>
											Shell Sort
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>


					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseThree">Data Structure</button>
						</h2>
						<div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
							<div class="accordion-body">
								<ul class="nav flex-column mb-auto">
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" aria-current="page" href="#" onclick="document.location.href='/JavaAlgorithms/templates/datastructure/array.html'">
											<svg class="bi">
                                            <use xlink:href="#puzzle"></use>
                                        </svg>
											Shell Sort
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" href="https://getbootstrap.kr/docs/5.3/examples/dashboard/#">
											<svg class="bi">
                                            <use xlink:href="#file-earmark-text"></use>
                                        </svg>
											Last quarter
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" href="https://getbootstrap.kr/docs/5.3/examples/dashboard/#">
											<svg class="bi">
                                            <use xlink:href="#file-earmark-text"></use>
                                        </svg>
											Social engagement
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link d-flex align-items-center gap-2" href="https://getbootstrap.kr/docs/5.3/examples/dashboard/#">
											<svg class="bi">
                                            <use xlink:href="#file-earmark-text"></use>
                                        </svg>
											Year-end sale
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<hr class="my-3">

				<ul class="nav flex-column mb-auto">
					<li class="nav-item">
						<a class="nav-link d-flex align-items-center gap-2" href="https://getbootstrap.kr/docs/5.3/examples/dashboard/#">
							<svg class="bi">
                            <use xlink:href="#door-closed"></use>
                        </svg>
							Sign out
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>


