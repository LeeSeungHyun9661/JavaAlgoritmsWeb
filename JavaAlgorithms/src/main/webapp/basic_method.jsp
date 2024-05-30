<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Sorting Algorithms</title>
</head>
<body>
	<div>
		<div
			class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<h2>메서드</h2>
		</div>
		<p>메서드는 특정 작업을 수행하기 위한 코드 블록입니다. 반복적으로 실행해야 하는 부분, 코드를 역할로 분리할 부분을 위해서 메서드를 정의하고 사용합니다. 메서드는
			보통 다음과 같은 형식으로 정의됩니다.</p>
		<pre class="line-numbers">
            <code class="language-java">반환형 메서드명(매개변수 목록) {
                // 메서드 몸체
            }</code>
        </pre>

		<p>메서드는 다음과 같은 구성 요소로 이루어져 있습니다.</p>
		<ul>
			<li><strong>반환형</strong>: 메서드가 반환하는 값의 데이터 타입을 명시합니다. 반환값이 없을 경우 <code>void</code>를 사용합니다.</li>
			<li><strong>메서드명</strong>: 메서드의 이름을 정의합니다. 보통 소문자로 시작하고 동사 형태를 사용합니다.</li>
			<li><strong>매개변수 목록</strong>: 메서드가 입력받을 값들을 정의합니다. 각 매개변수는 데이터 타입과 변수명으로 이루어집니다.</li>
			<li><strong>메서드 몸체</strong>: 메서드가 수행할 작업을 정의하는 코드 블록입니다.</li>
		</ul>

		<p>또한 메서드는 크게 두 가지로 나뉩니다:</p>
		<ul>
			<li><strong>인스턴스 메서드</strong>: 객체의 인스턴스에 속하는 메서드입니다. 이 메서드는 객체를 생성한 후에만 호출할 수 있습니다.</li>
			<li><strong>정적 메서드</strong>: 클래스에 속하는 메서드입니다. 객체를 생성하지 않고도 호출할 수 있습니다. 정적 메서드는 <code>static</code>
				키워드로 선언합니다.</li>
		</ul>

		<p>아래는 자바에서 메서드를 정의하는 예제입니다</p>
		<pre class="line-numbers">
            <code class="language-java">public class MyClass {
                // 인스턴스 메서드
                public void instanceMethod() {
                    System.out.println("This is an instance method.");
                }
            
                // 정적 메서드
                public static void staticMethod() {
                    System.out.println("This is a static method.");
                }
            }</code>
        </pre>
	</div>
</body>
</html>