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
	<p>자바 프로그램을 실행 가능한 형태로 변환하는 과정은 크게 두 단계로 나눌 수 있습니다: 소스 코드를 바이트 코드로 변환하는 컴파일 단계와 바이트 코드를 실제로 실행하는 단계입니다. 각 단계를 차례대로 자세히 설명하겠습니다.</p>

	<h3>1. 컴파일 단계</h3>
	<p>1.1 소스 코드 작성</p>
	<ul>
		<li><strong>작업:</strong> 개발자는 텍스트 편집기(예: 메모장, Eclipse, IntelliJ)에서 자바 소스 코드를 작성합니다.</li>
		<li><strong>파일:</strong> 이 코드는 <code>.java</code> 확장자를 가진 파일로 저장됩니다. 예를 들어, <code>HelloWorld.java</code>라는 파일이 있을 수 있습니다.</li>
	</ul>
	<p>1.2. 컴파일러 호출</p>
	<ul>
		<li><strong>명령어:</strong> 자바 컴파일러(<code>javac</code>)를 사용하여 소스 코드를 컴파일합니다. 명령 프롬프트나 터미널에서 <code>javac HelloWorld.java</code> 명령을 실행합니다.</li>
		<li><strong>역할:</strong> <code>javac</code>는 자바 컴파일러로, 소스 코드를 읽고 구문 및 의미를 검사한 후, 오류가 없다면 이를 바이트 코드로 변환합니다.</li>
		<li><strong>출력:</strong> 컴파일이 성공하면, <code>HelloWorld.class</code> 파일이 생성됩니다. 이 파일은 자바 바이트 코드로 작성되어 있습니다.</li>
	</ul>

	<h3>2. 실행 단계</h3>
	<p>2.1. 클래스 로더</p>
	<ul>
		<li><strong>역할:</strong> JVM(Java Virtual Machine)의 클래스 로더는 프로그램 실행 시 필요한 <code>.class</code> 파일을 메모리에 로드합니다.</li>
		<li><strong>설명:</strong> 클래스 로더는 프로그램 실행 중 필요한 클래스 파일을 동적으로 로드합니다. 이때, 프로그램에 필요한 모든 클래스를 찾아 메모리에 올립니다.</li>
	</ul>

	<p>2.2. 바이트 코드 검증</p>
	<ul>
		<li><strong>역할:</strong> JVM의 바이트 코드 검증기(Bytecode Verifier)는 로드된 바이트 코드가 유효하고 안전한지 검증합니다.</li>
		<li><strong>설명:</strong> 이 검증 과정은 바이트 코드가 잘못된 동작을 하지 않도록 하고, 보안을 강화합니다. 예를 들어, 배열의 범위를 벗어나지 않도록 합니다.</li>
	</ul>

	<p>2.3. 인터프리터 / JIT 컴파일러</p>
	<ul>
		<li><strong>인터프리터:</strong> 바이트 코드를 한 줄씩 읽어서 즉시 실행합니다. 초기 실행 속도가 빠르지만, 전체 성능은 상대적으로 느릴 수 있습니다.</li>
		<li><strong>JIT(Just-In-Time) 컴파일러:</strong> 자주 사용되는 바이트 코드 부분을 네이티브 머신 코드(컴퓨터가 직접 실행할 수 있는 코드)로 변환합니다. 이 과정은 처음에는 시간이 걸리지만, 이후에는 성능이 매우 향상됩니다.</li>
		<li><strong>역할:</strong> 인터프리터와 JIT 컴파일러는 함께 작동하여 프로그램을 효율적으로 실행합니다. 처음에는 인터프리터가 코드를 실행하고, 자주 사용되는 부분은 JIT 컴파일러가 네이티브 코드로 변환합니다.</li>
	</ul>
	<p>2.4. 실행</p>
	<ul>
		<li><strong>설명:</strong> 변환된 네이티브 코드가 실행되어 프로그램이 동작합니다. 이 단계에서 프로그램이 실제로 수행됩니다.</li>
	</ul>
	
	<img src="resources/img/java-compile.png">
	<p>이 과정을 통해 자바 프로그램은 다양한 플랫폼에서 실행될 수 있는 형태로 변환되고, 실행됩니다. 프로그램이 실행되면 코드는 메모리에 적재됩니다. 메모리에 적재된 프로그램은 프로세스로서 명령어를 CPU로 전달하고 CPU는 이를 연산으로 처리할 수 있습니다. 여기까지의 과정은 컴퓨터 공학의 깊은 부분입니다.</p>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>자바 가상 머신 (Java Virtual Machine, JVM)</h2>
	</div>
	<p>자바 가상 머신(JVM)은 자바 애플리케이션을 실행하기 위한 런타임 환경입니다. JVM은 자바 프로그램을 독립적인 환경에서 실행할 수 있게 해주며, 특정 플랫폼에 종속되지 않고 다양한 시스템에서 실행될 수 있도록 합니다.</p>

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

	<h3>향후 발전</h3>

	<ul>
		<li><strong>프로젝트 Loom:</strong> 동시성 모델을 개선하여 더 많은 스레드를 효율적으로 관리할 수 있도록 합니다. 이는 고성능 서버 애플리케이션 개발에 큰 도움이 될 것입니다.</li>
		<li><strong>프로젝트 Panama:</strong> 자바와 네이티브 코드 간의 상호 운용성을 개선하여 자바 애플리케이션이 네이티브 라이브러리를 더 쉽게 사용할 수 있도록 합니다.</li>
		<li><strong>프로젝트 Valhalla:</strong> 자바 언어에 값 타입(Value Type)을 도입하여, 더 나은 성능과 메모리 효율성을 제공합니다.</li>
	</ul>

	<h3>결론</h3>

	<p>JVM은 자바 프로그램을 실행하기 위한 핵심 기술로, 자바의 플랫폼 독립성과 보안성을 실현하는 데 중요한 역할을 합니다. 최근의 발전과 프로젝트들을 통해 성능과 기능 면에서 계속해서 발전해 나가고 있으며, 앞으로도 더 많은 혁신을 기대할 수 있습니다.</p>




</body>
</html>