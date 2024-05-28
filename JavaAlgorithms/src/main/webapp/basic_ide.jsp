<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>IDE</h1>
	</div>
	<p>IDE(통합 개발 환경, Integrated Development Environment)는 소프트웨어 개발을 위한 종합 도구 세트를 제공하는 소프트웨어 응용 프로그램입니다. IDE는 개발자가 코드 작성, 편집, 디버깅, 테스트, 그리고 배포를 보다 효율적으로 할 수 있도록 다양한 기능을 통합하여 제공합니다.</p>
	<ol>
		<li><strong>소스 코드 편집기:</strong> 코드 작성과 편집을 위한 텍스트 편집기입니다. 문법 강조(syntax highlighting), 코드 자동 완성(code completion), 코드 탐색 기능을 제공합니다.</li>
		<li><strong>컴파일러/인터프리터:</strong> 작성된 코드를 기계어로 번역하여 실행 가능한 파일로 변환하거나, 즉시 실행하는 도구입니다.</li>
		<li><strong>디버거:</strong> 코드의 논리적 오류를 찾고 수정할 수 있도록 도와주는 도구입니다. 중단점(breakpoint) 설정, 단계별 실행(step-by-step execution), 변수 값 모니터링 등의 기능을 포함합니다.</li>
		<li><strong>빌드 자동화 도구:</strong> 코드를 컴파일하고, 링크하고, 배포하는 과정을 자동화하는 도구입니다. Maven, Gradle, Ant 등이 대표적입니다.</li>
		<li><strong>버전 관리 통합:</strong> Git, Subversion과 같은 버전 관리 시스템과 통합되어 코드의 버전 관리를 지원합니다. 변경 이력 추적, 분기(branch) 관리, 병합(merge) 등의 기능을 제공합니다.</li>
		<li><strong>테스트 도구:</strong> 단위 테스트(unit testing), 통합 테스트(integration testing) 등을 통해 코드의 품질을 확인할 수 있는 도구입니다. JUnit, NUnit 등이 예입니다.</li>
	</ol>


	<p>다음 IDE는 Java 프로그래머들에게 다양한 도구와 기능을 제공하여 코드 작성, 디버깅, 테스트 및 배포 과정을 효율적으로 수행할 수 있도록 돕습니다.</p>

	<div class="row" style="height: auto;">
		<img class="col-2" src="resources/img/intellij.png" style="float: left; object-fit: contain;">
		<ul class="col-4">
			<li><strong>상용 소프트웨어</strong>: 무료 커뮤니티 버전과 유료 얼티밋 버전이 있습니다. 유료 버전은 더 많은 기능을 제공합니다.</li>
			<li><strong>스마트 코드 인텔리전스</strong>: 코드 자동 완성, 코드 분석, 리팩토링 도구 등이 매우 강력합니다.</li>
			<li><strong>다양한 언어 지원</strong>: Java 외에도 Kotlin, Groovy, Scala 등을 지원합니다.</li>
			<li><strong>Java EE 지원</strong>: 엔터프라이즈 애플리케이션 개발을 위한 다양한 도구와 프레임워크를 지원합니다.</li>
			<li><strong>디버깅 및 테스트</strong>: 강력한 디버깅 도구와 JUnit, TestNG 등과의 통합을 제공합니다.</li>
			<li><strong>버전 관리 시스템 통합</strong>: Git, SVN, Mercurial 등과의 원활한 통합을 지원합니다.</li>
		</ul>
		<img class="col-2" src="resources/img/eclipse.png" style="float: left; object-fit: contain;">
		<ul class="col-4">
			<li><strong>오픈 소스</strong>: 무료로 사용 가능하며, 커뮤니티가 활발하게 발전시킵니다.</li>
			<li><strong>플러그인 아키텍처</strong>: 다양한 플러그인을 통해 기능을 확장할 수 있습니다. 예를 들어, Java EE, Web Development, Android Development 등을 위한 플러그인이 있습니다.</li>
			<li><strong>강력한 디버깅 도구</strong>: 코드 디버깅을 위한 다양한 기능을 제공합니다.</li>
			<li><strong>Git 통합</strong>: Git 버전 관리 시스템과 통합되어 있습니다.</li>
			<li><strong>내장 빌드 도구</strong>: Maven 및 Gradle과의 통합을 통해 빌드와 의존성 관리를 손쉽게 할 수 있습니다.</li>
		</ul>
	</div>

	<div class="row" style="height: auto;">
		<img class="col-2" src="resources/img/netbeans.png" style="float: left; object-fit: contain;">
		<ul class="col-4">
			<li><strong>오픈 소스</strong>: 무료로 사용 가능하며, Oracle이 후원하는 IDE입니다.</li>
			<li><strong>모듈화된 아키텍처</strong>: 필요에 따라 기능을 추가하거나 제거할 수 있는 모듈식 구조입니다.</li>
			<li><strong>Java EE 지원</strong>: Java EE 애플리케이션 개발을 위한 다양한 도구를 제공합니다.</li>
			<li><strong>시각적 GUI 디자인 도구</strong>: Swing 및 JavaFX를 사용한 GUI 애플리케이션 개발을 위한 시각적 도구를 제공합니다.</li>
			<li><strong>기본 내장 빌드 도구</strong>: Ant, Maven, Gradle 빌드 시스템을 기본적으로 지원합니다.</li>
			<li><strong>다양한 언어 지원</strong>: Java 외에도 PHP, JavaScript, HTML5, C/C++ 등을 지원합니다.</li>
		</ul>
		<img class="col-2" src="resources/img/JDeveloper.png" style="float: left; object-fit: contain;">
		<ul class="col-4">
			<li><strong>Oracle 제품</strong>: Oracle에서 개발한 IDE로, Oracle 데이터베이스 및 애플리케이션과의 통합이 뛰어납니다.</li>
			<li><strong>Java EE 지원</strong>: Java EE 및 웹 애플리케이션 개발에 특화되어 있습니다.</li>
			<li><strong>ADF 지원</strong>: Oracle의 Application Development Framework를 지원하여, 엔터프라이즈 애플리케이션 개발을 용이하게 합니다.</li>
			<li><strong>시각적 개발 도구</strong>: 시각적 디자이너를 통해 빠르게 UI를 개발할 수 있습니다.</li>
			<li><strong>데이터베이스 통합</strong>: 데이터베이스 개발 및 관리 도구를 통합하여 제공합니다.</li>
		</ul>
	</div>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>어떤 IDE를 선택해야 하는가</h2>
	</div>
	<p>프로그래밍에 정답은 없습니다. 언제나 더 효율적인 방법만이 존재하죠. IDE를 선택하는 기준또한 마찬가지 입니다. 정답은 없습니다. 직접 사용해보고 자신에게 맞는 개발 도구를 사용하는 것이 가장 좋은 방법입니다. 트랜드를 따라가는 방법도 있습니다. 많이 사용된다는 것은 그만큼 정보를 공유하고 문제점을 함께 찾을 사람도 많다는 뜻이니까요.</p>
	<p><a href="https://pypl.github.io/IDE.html#google_vignette">PYPL</a>에서는 구글에서 IDE의 다운로드 페이지가 검색된 결과를 기준으로 순위를 표시합니다. IDE의 사용률에 대한 지표로 사용됩니다.</p>
	<div class="row">
		<div class="col-6">
			<table>
				<tr>
					<th>RANK</th>
					<th>IDE</th>
					<th>Share</th>
					<th>1-year trend</th>
				</tr>
				<tr>
					<td>1</td>
					<td>Visual Studio</td>
					<td>28.23 %</td>
					<td>+0.1 %</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Visual Studio Code</td>
					<td>13.51 %</td>
					<td>-0.5 %</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Eclipse</td>
					<td>11.66 %</td>
					<td>+0.0 %</td>
				</tr>
				<tr>
					<td>4</td>
					<td>pyCharm</td>
					<td>10.73 %</td>
					<td>+2.0 %</td>
				</tr>
				<tr>
					<td>5</td>
					<td>Android Studio</td>
					<td>9.64 %</td>
					<td>+0.6 %</td>
				</tr>
				<tr>
					<td>6</td>
					<td>IntelliJ</td>
					<td>7.45 %</td>
					<td>+0.7 %</td>
				</tr>
				<tr>
					<td>7</td>
					<td>NetBeans</td>
					<td>4.03 %</td>
					<td>-0.4 %</td>
				</tr>
			</table>
		</div>
		<div class="col-6">
			<canvas class="my-4" id="barChart" style="display: block; box-sizing: border-box; height: auto; width: auto;"></canvas>
			<!-- Jquery -->
			<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
			<script>
				const data = {
					labels : [ 'Visual Studio', 'Visual Studio Code',
							'Eclipse', 'pyCharm', 'Android Studio',
							'   IntelliJ', 'NetBeans', 'etc' ],
					datasets : [ {
						data : [ 28.23, 13.51, 11.66, 10.73, 9.64, 7.45, 4.03,
								15.11 ],
						backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
								'rgba(255, 159, 64, 0.2)',
								'rgba(255, 205, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(54, 162, 235, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								'rgba(201, 203, 207, 0.2)' ],
						borderColor : [ 'rgb(255, 99, 132)',
								'rgb(255, 159, 64)', 'rgb(255, 205, 86)',
								'rgb(75, 192, 192)', 'rgb(54, 162, 235)',
								'rgb(153, 102, 255)', 'rgb(201, 203, 207)' ],
						borderWidth : 1
					} ]
				};

				new Chart($('#barChart'), {
					type : 'doughnut',
					data : data,
					options : {
						legend : {
							position : 'right'
						},
					}
				});
			</script>

		</div>
	</div>
	<p>Java 언어 IDE중 Eclipse가 가장 많이 사용되고 있네요. 하지만 IntelliJ가 그 뒤를 바짝 따라오고 있습니다. Java 언어 개발을 위해서는 Eclipse와 IntelliJ를 선택하는 것을 추천드립니다.</p>


	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>Eclipse IDE vs IntelliJ</h2>
	</div>

	<h3>Eclipse</h3>
	<p>Eclipse IDE는 2001년에 IBM에 의해 개발된 소프트웨어 개발 플랫폼으로, IBM의 비주얼 에이지(VisualAge) IDE를 대체하기 위해 만들어졌습니다. Eclipse는 오픈 소스 커뮤니티와 협력하여 발전해왔으며, 다양한 프로그래밍 언어를 지원하는 플러그인 아키텍처를 가지고 있습니다. Java 개발 환경으로서 매우 인기가 높으며, 그 외에도 C/C++, Python, PHP 등 다양한 언어를 지원합니다.</p>
	<h3>IntelliJ IDEA</h3>
	<p>IntelliJ IDEA는 2001년 JetBrains에서 출시한 통합 개발 환경(IDE)으로, 주로 Java 개발을 위해 설계되었습니다. 이 IDE는 코드 완성, 디버깅, 리팩토링 등의 강력한 기능을 제공하며, 다양한 프로그래밍 언어와 버전 관리 시스템을 지원합니다. 무료 버전과 유료 버전으로 나뉘며, 유료 버전은 추가적인 고급 기능을 포함하고 있습니다. IntelliJ IDEA는 개발자의 생산성을 높이고 코드 품질을 향상시키는 데 중점을 둡니다.</p>

	<h3>비교</h3>

	<table border="1">
		<tr>
			<th>항목</th>
			<th>Eclipse</th>
			<th>IntelliJ IDEA</th>
		</tr>
		<tr>
			<td>코드 인텔리전스</td>
			<td>코드 자동 완성, 문법 강조, 코드 분석 기능 제공, 다소 부족</td>
			<td>매우 강력한 코드 자동 완성, 코드 분석, 리팩토링 도구 제공, 생산성 향상</td>
		</tr>
		<tr>
			<td>사용자 인터페이스</td>
			<td>다양한 플러그인과 기능 제공, 초기 설정과 사용법이 복잡할 수 있음</td>
			<td>직관적이고 깔끔한 인터페이스 제공, 초보자도 쉽게 사용 가능</td>
		</tr>
		<tr>
			<td>플러그인 및 확장성</td>
			<td>방대한 플러그인 라이브러리 통해 다양한 언어와 프레임워크 지원</td>
			<td>훌륭한 플러그인 지원, JetBrains에서 제공하는 다양한 도구와 원활한 통합</td>
		</tr>
		<tr>
			<td>성능</td>
			<td>많은 기능 포함으로 속도가 느려질 수 있음</td>
			<td>상대적으로 빠른 성능 제공, 대규모 프로젝트에서도 원활하게 동작</td>
		</tr>
		<tr>
			<td>라이선스</td>
			<td>오픈 소스로 무료 사용 가능</td>
			<td>커뮤니티 버전 무료 제공, 얼티밋 버전은 상용 라이선스 필요</td>
		</tr>
	</table>
</body>
</html>