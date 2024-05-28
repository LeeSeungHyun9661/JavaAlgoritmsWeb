<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Sorting Algorithms</title>
</head>
<body>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>자바 컴파일링 과정</h2>
	</div>
	<h2>컴파일</h2>
	<p>우리가 작성하는 포르그래밍 코드는 단순한 물리적 형태를 취합니다. 사람이 이해할 수 있는 고수준의 언어는 그 자체로 컴퓨터가 이해할 수 없습니다. 따라서 이를 컴퓨터가 이해할 수 있는 저수준의 언어로 변환할 필요가 있습니다. 이 과정을 컴파일이라고 합니다.</p>
	<p>자바 프로그램을 실행 가능한 형태로 변환하는 과정은 크게 두 단계로 나눌 수 있습니다: 소스 코드를 바이트 코드로 변환하는 컴파일 단계와 바이트 코드를 실제로 실행하는 단계입니다.</p>
	<ol>
		<li><strong>소스 코드 작성</strong> : 먼저 개발자가 코드를 작성합니다. 해당 내용은 <code>.java</code>파일로 만들어집니다.</li>
		<li><strong>컴파일러 호출</strong> : 자바 컴파일러(<code>javac</code>)는 소스 코드를 컴파일합니다. <code>.java</code>는 바이트코드로 구성된 <code>.class</code>파일로 변경됩니다.</li>
		<li><strong>JVM 클래스 로더</strong> : JVM(Java Virtual Machine)의 클래스 로더는 프로그램 실행 시 필요한 <code>.class</code> 파일을 JVM 메모리에 로드합니다.</li>
		<li><strong>JVM 바이트 코드 검증</strong> : JVM의 바이트 코드 검증기(Bytecode Verifier)는 로드된 바이트 코드가 유효하고 안전한지 검증합니다. 보안을 강화하고 올바르지 않은 바이크 코드를 찾아냅니다.</li>
		<li><strong>명령어 실행</strong> : 바이크 코드가 검증되었다면 JVM 메모리에 있는 바이크 코드 명령어들을 <strong>실행 엔진</strong>으로 하나씩 가져와 실행합니다. 이때 두 가지 방식을 사용하게 됩니다.
			<ul>
				<li><strong>인터프리터:</strong> 바이트 코드를 한 줄씩 읽어서 즉시 실행합니다. 초기 실행 속도가 빠르지만, 전체 성능은 상대적으로 느릴 수 있습니다.</li>
				<li><strong>JIT(Just-In-Time) 컴파일러:</strong> 자주 사용되는 바이트 코드 부분을 네이티브 머신 코드(컴퓨터가 직접 실행할 수 있는 코드)로 변환합니다. 이 과정은 처음에는 시간이 걸리지만, 이후에는 성능이 매우 향상됩니다.</li>
			</ul>
			<p>인터프리터와 JIT 컴파일러는 함께 작동하여 프로그램을 효율적으로 실행합니다. 처음에는 인터프리터가 코드를 실행하고, 자주 사용되는 부분은 JIT 컴파일러가 네이티브 코드로 변환합니다.</p></li>
	</ol>
	<img src="resources/img/java-compile.png">
	<p>해당 과정은 편하게 자바 코드를 작성하고 실행할 수 있기 때문에 꼭 알 필요는 없습니다. 하지만 좋은 프로그래머가 되기 위해서는 내부 구조가 어떻게 작동되는지 알아야 합니다. 우리가 선언한 변수와 메서드는 어디에 있는지, 어떻게 그 역할을 수행하는지 궁금한 것은 지극히 당연한 일입니다.</p>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>자바 가상 머신 (Java Virtual Machine, JVM)</h2>
	</div>

	<p></p>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2></h2>
	</div>
	<p>컴파일 과정을 설명하며 등장했던 자바 가상 머신(JVM)은 자바 애플리케이션을 실행하기 위한 필수적인 런타임 환경입니다. JVM은 자바 프로그램을 독립적인 환경에서 실행할 수 있게 해주며, 특정 플랫폼에 종속되지 않고 다양한 시스템에서 실행될 수 있도록 합니다.</p>

	<h3>주요 역할</h3>
	<ul>
		<li><strong>바이트코드 실행:</strong> 자바 소스 코드(.java 파일)는 자바 컴파일러에 의해 바이트코드(.class 파일)로 변환되며, 이 바이트코드는 JVM에 의해 실행됩니다.</li>
		<li><strong>메모리 관리:</strong> JVM은 자바 프로그램의 메모리 할당과 해제를 관리하며, 스택 메모리와 힙 메모리를 관리합니다.</li>
		<li><strong>플랫폼 독립성 제공:</strong> 자바 프로그램은 한 번 작성하면 어디서나 실행할 수 있습니다("Write Once, Run Anywhere").</li>
		<li><strong>런타임 환경 제공:</strong> JVM은 자바 프로그램이 실행되는 동안 필요한 모든 런타임 환경을 제공합니다.</li>
	</ul>

	<h3>구성 요소</h3>
	<ul>
		<li><strong>클래스 로더 (Class Loader):</strong> 자바 클래스 파일을 메모리에 로드하는 역할을 합니다.</li>
		<li><strong>실행 엔진 (Execution Engine):</strong> 바이트코드를 기계어로 변환하여 실행합니다.</li>
		<li><strong>메모리 영역 (Memory Areas):</strong> JVM은 여러 메모리 영역을 관리합니다.</li>
		<li><strong>가비지 컬렉터 (Garbage Collector):</strong> 더 이상 사용되지 않는 객체를 자동으로 메모리에서 해제합니다.</li>
		<li><strong>런타임 데이터 영역 (Runtime Data Area):</strong> 자바 프로그램의 실행 중에 필요한 데이터를 저장하는 영역입니다.</li>
	</ul>

	<h3>동작 과정</h3>
	<ol>
		<li><strong>클래스 로딩:</strong> 클래스 로더는 자바 클래스 파일을 로드하고 메모리에 배치합니다.</li>
		<li><strong>바이트코드 검증:</strong> 로드된 클래스 파일이 자바 언어 명세와 JVM 명세에 맞는지 검증합니다.</li>
		<li><strong>메모리 할당:</strong> 객체를 생성하고 힙 메모리에 할당합니다.</li>
		<li><strong>바이트코드 실행:</strong> 실행 엔진은 바이트코드를 해석하고, JIT 컴파일러가 성능을 최적화하여 실행합니다.</li>
		<li><strong>가비지 컬렉션:</strong> 주기적으로 힙 메모리를 검사하여 더 이상 참조되지 않는 객체를 식별하고 메모리를 회수합니다.</li>
	</ol>
	<p>JVM은 자바 프로그램을 실행하기 위한 핵심 기술로, 자바의 플랫폼 독립성과 보안성을 실현하는 데 중요한 역할을 합니다. 최근의 발전과 프로젝트들을 통해 성능과 기능 면에서 계속해서 발전해 나가고 있으며, 앞으로도 더 많은 혁신을 기대할 수 있습니다.</p>
</body>
</html>