<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Sorting Algorithms</title>
</head>
<body>
	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>배열</h1>
	</div>
	<p>배열(Array)은 동일한 타입의 여러 개의 값을 하나의 변수로 관리할 수 있는 자료구조입니다. 자바의 배열은 고정 크기를 가지며, 생성된 후에는 크기를 변경할 수
		없습니다.</p>

	<ol>
		<li><strong>배열 선언</strong>
			<p>배열을 선언할 때는 배열의 타입과 이름을 지정합니다. 선언하는 방법은 다음과 같습니다.</p> <pre class="line-numbers">
        <code class="language-java">int[] numbers;
        String[] names;</code>
    </pre></li>

		<li><strong>배열 생성</strong>
			<p>배열을 생성할 때는 <code>new</code> 연산자를 사용하여 배열의 크기를 지정합니다.
		</p> <pre class="line-numbers">
        <code class="language-java">numbers = new int[5];
        names = new String[10];</code>
    </pre>
			<p>배열을 선언하고 생성하는 작업을 동시에 할 수도 있습니다.</p> <pre class="line-numbers">
        <code class="language-java">int[] numbers = new int[5];
        String[] names = new String[10];</code>
    </pre></li>

		<li><strong>배열 초기화</strong>
			<p>배열을 선언하고 생성하면서 동시에 초기화할 수 있습니다:</p> <pre class="line-numbers">
        <code class="language-java">int[] numbers = {1, 2, 3, 4, 5};
        String[] names = {"Alice", "Bob", "Charlie", "David", "Eve"};</code>
    </pre></li>


		<li><strong>배열 요소 접근</strong>
			<p>배열의 각 요소는 인덱스를 통해 접근할 수 있습니다. 인덱스는 0부터 시작합니다.</p> <pre class="line-numbers">
        <code class="language-java">int firstNumber = numbers[0]; // 첫 번째 요소
        names[1] = "John"; // 두 번째 요소 변경</code>
    </pre></li>

		<li><strong>배열의 길이</strong>
			<p>배열의 길이는 <code>length</code> 속성을 사용하여 얻을 수 있습니다:
		</p> <pre class="line-numbers">
        <code class="language-java">int length = numbers.length;</code>
    </pre></li>
	</ol>

	<p>다음은 자바 배열의 선언, 생성, 초기화, 그리고 요소 접근을 보여주는 간단한 예제입니다.</p>
	<pre class="line-numbers">
        <code class="language-java">public class ArrayExample {
            public static void main(String[] args) {
                // 배열 선언 및 생성
                int[] numbers = new int[5];
        
                // 배열 초기화
                numbers[0] = 10;
                numbers[1] = 20;
                numbers[2] = 30;
                numbers[3] = 40;
                numbers[4] = 50;
        
                // 배열 요소 접근
                for (int i = 0; i < numbers.length; i++) {
                    System.out.println("Element at index " + i + ": " + numbers[i]);
                }
        
                // 배열 선언 및 초기화
                String[] names = {"Alice", "Bob", "Charlie"};
        
                // 배열 요소 접근
                for (int i = 0; i < names.length; i++) {
                    System.out.println("Name at index " + i + ": " + names[i]);
                }
            }
        }</code>
    </pre>

	<p>자바의 배열은 다음과 같은 특징을 가집니다.</p>
	<ul>
		<li><strong>고정 크기</strong>: 배열의 크기는 생성 시에 결정되며, 이후 변경할 수 없습니다.</li>
		<li><strong>동일 타입 요소</strong>: 배열은 동일한 타입의 요소들로 구성됩니다.</li>
		<li><strong>인덱스로 접근</strong>: 배열 요소는 0부터 시작하는 인덱스로 접근할 수 있습니다.</li>
		<li><strong>효율적 메모리 사용</strong>: 배열은 메모리상에 연속적으로 저장되어 있어 빠른 접근이 가능합니다.</li>
		<li><strong>배열 크기 초과 접근</strong>: 배열의 인덱스를 잘못 접근하면 <code>ArrayIndexOutOfBoundsException</code>이
			발생합니다.</li>
		<li><strong>초기화되지 않은 배열 요소</strong>: 기본 타입 배열은 0 또는 기본값으로 초기화되지만, 참조 타입 배열은 <code>null</code>로
			초기화되므로 <code>NullPointerException</code>에 주의해야 합니다.</li>
	</ul>
</body>
</html>