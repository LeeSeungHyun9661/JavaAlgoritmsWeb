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
		<h1>반복문과 조건문</h1>
	</div>
	<p>이제 변수와 연산을 배웠습니다. 이것만을 활용해도 프로그램을 만들 수 있습니다. 하지만 더 복잡하고 다양한 작업을 위해서는 '반복과 조건'을 알아야 합니다 만약
		10개의 수를 모두 더하는 프로그램을 만들어야 한다고 가정해 봅시다. 코드를 작성한다면 다음과 같을겁니다.</p>
	<pre class="line-numbers">
        <code class="language-java">public class Main {
            public static void main(String[] args) {
                // 변수 선언
                int num1 = 1;
                int num2 = 2;
                int num3 = 3;
                int num4 = 4;
                ...                
                int num10 = 10;
                
                // 결과값 저장
                int result = 0;
           
                // 덧셈 진행
                result = result + num1;
                result = result + num2;
                result = result + num3;
                ...                
                result = result + num10;
                
                // 결과 저장
                System.out.println(result);
            }
        }</code>
    </pre>
	<p>해당 코드를 활용하면 1에서 10까지의 값을 모두 더할 수 있습니다. 하지만 만약 변수가 100개라면요? 100만개의 값을 대상으로 한다면 100만개의 변수를 모두
		만들어야 할까요? 그렇다면 덧셈과 선언만 200만줄이 될 겁니다. 엄청난 양이죠. 효율적인 방법을 찾아봅시다.</p>

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>반복문</h2>
	</div>

	<p>반복문은 일정한 코드를 원하는 수 만큼 반복하는 것을 목표로 합니다. 그 종류는 세가지를 사용할 수 있습니다. <code>for</code>, <code>while</code>,
		그리고 <code>do-while</code>입니다.
	</p>

	<ol>
		<li>for 문
			<p><code>for</code> 문은 반복 횟수가 명확할 때 주로 사용됩니다. 초기화, 조건식, 증감식을 한 줄에 작성하여 반복을 제어합니다.</p> <pre
				class="line-numbers">
    <code class="language-java">for (초기화; 조건식; 증감식) {
        // 반복 실행할 코드
    }</code>
    </pre>
			<ul>
				<li>초기화는 <code>for</code>문 내부에서 활용할 변수를 선언함을 의미합니다. <code>for</code>문 내부에서만 생성되고 반복문이 종료되면
					사라집니다.
				</li>
				<li>조건식은 반복문의 가장 처음에 그 조건이 참인지 거짓인지 확인하고 참일 경우에만 반복문 내부를 실행합니다.</li>
				<li>증감식은 반복문이 끝나고 증감식을 실행합니다. 일반적인 경우 일정 경우 조건식을 거짓으로 만들 수 있도록 설정합니다.</li>
			</ul> <pre class="line-numbers">
        <code class="language-java">for (int i = 0; i < 10; i++) {
            System.out.println(i);
        }</code>
    </pre>
			<p>해당 코드는 <code>for</code>문의 가장 보편적인 사용법입니다. <code>i</code>는 0부터 1씩 커지며 9까지 출력할 것입니다.
		</p>
			<p>만약 <code>n</code>번의 반복을 원한다면 다음과 같이 <code>i</code>를 선언하고 0으로 초기화 한 후 변수가 <code>n</code>보다
				작다면 <code>i</code>를 1씩 증감시키도록 합니다.
		</li>
		<li>while 문
			<p><code>while</code> 문은 조건식이 참인 동안 반복 실행합니다. 반복 횟수가 명확하지 않을 때 사용됩니다.</p>
			<p><strong>구문</strong></p> <pre class="line-numbers">
    <code class="language-java">while (조건식) {
        // 반복 실행할 코드
    }
    </code>
    </pre> <pre class="line-numbers">
    <code class="language-java">int i = 0;
        while (i < 10) {
            System.out.println(i);
            i++;
    }</code>
    </pre>
			<p>다음과 같이 i가 10보다 작을 경우에 while문 내부의 값을 실행하며 i의 값이 1씩 커지도록 변경합니다.</p>
		</li>
		<li>do-while 문
			<p><code>do-while</code> 문은 최소 한 번은 코드 블록을 실행하고, 그 후 조건식을 평가하여 반복을 계속할지 결정합니다.</p>
			<p><strong>구문</strong></p> <pre class="line-numbers">
    <code class="language-java">do {
        // 반복 실행할 코드
    } while (조건식);</code>
    </pre>
		</li>
	</ol>

	<h3>반복문의 중첩</h3>
	<p>반복문은 다른 반복문 안에 중첩하여 사용할 수 있습니다. 이를 통해 다차원 배열이나 복잡한 조건을 처리할 수 있습니다.</p>
	<pre class="line-numbers">
    <code class="language-java">for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            System.out.println("i: " + i + ", j: " + j);
        }
    }</code>
    </pre>
	<p>이 코드는 두 개의 <code>for</code> 문이 중첩되어 있어, <code>i</code>와 <code>j</code>의 조합을 출력합니다.
	</p>


	<h3>반복문 제어</h3>
	<pre class="line-numbers">
    <code class="language-java">while (true) {
        // 반복 실행할 코드
    }</code>
    </pre>

	<p>다음 코드는 언제 멈출까요? <code>while(ture)</code>는 영원히 멈추지 않습니다. 영원히 말이죠! 이러한 문제를 대처하기 위해 반복문은 제어
		명령어를 사용할 수 있습니다. 반복문 내에서 <code>break</code>와 <code>continue</code> 키워드를 사용하여 제어 흐름을 변경할 수 있습니다.
	</p>
	<ul>
		<li><strong>break</strong>: 현재 반복문을 즉시 종료합니다.</li>
		<li><strong>continue</strong>: 현재 반복의 나머지 부분을 건너뛰고, 다음 반복을 시작합니다.</li>
	</ul>

	<pre class="line-numbers">
        <code class="language-java">for (int i = 0; i < 10; i++) {
            if (i == 5) {
                break; // i가 5일 때 반복문 종료
            }
            System.out.println(i);
        }</code>
    </pre>
	<p>헤당 코드는 i가 5일 때 반복문을 탈출할 수 있도록 제어합니다. <code>i</code>가 5와 같다면 <code>break</code> 명령어를 만나게 되고 <strong>배열
			밖</strong>으로 진행하게 됩니다.
	</p>

	<pre class="line-numbers">
        <code class="language-java">
        for (int i = 0; i < 10; i++) {
            if (i % 2 == 0) {
                continue; // 짝수일 때는 건너뜀
            }
            System.out.println(i);
        }</code>
    </pre>
	<p><code>continue</code>를 활용한다면 원하는 조건에서 반복문 실행을 건너뛰고 다시 처음으로 돌아갈 수 있도록 할 수 있습니다. <code>break</code>와
		차이점은 배열의 밖이 아니라 배열의 처음으로 돌아간다는 것입니다.</p>

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>조건문</h2>
	</div>
	<p>자바 조건문은 특정 조건에 따라 코드의 실행 흐름을 제어하는 데 사용됩니다. 조건문을 사용하면 프로그램이 주어진 조건을 평가하고, 그 조건이 참일 때만 특정 코드를
		실행하도록 할 수 있습니다. 자바에서 가장 기본적인 조건문은 <code>if</code>, <code>if-else</code>, <code>else if</code>, 그리고
		<code>switch</code> 문입니다.
	</p>

	<ol>
		<li><code>if</code> 문
			<p><code>if</code> 문은 조건이 참일 때만 블록 안의 코드를 실행합니다.</p> <pre class="line-numbers">
    <code class="language-java">int number = 10;
    if (number > 0) {
        System.out.println("Number is positive.");
    }</code>
    </pre>
			<p>여기서 <code>number &gt; 0</code> 조건이 참이므로, "Number is positive."가 출력됩니다.
		</p></li>

		<li><code>if-else</code> 문
			<p><code>if-else</code> 문은 조건이 참일 때는 <code>if</code> 블록을, 거짓일 때는 <code>else</code> 블록을 실행합니다.</p>
			<pre class="line-numbers">
    <code class="language-java">int number = -5;
    if (number > 0) {
        System.out.println("Number is positive.");
    } else {
        System.out.println("Number is not positive.");
    }</code>
    </pre>
			<p>여기서는 <code>number &gt; 0</code> 조건이 거짓이므로, "Number is not positive."가 출력됩니다.
		</p></li>
		<li><code>else if</code> 문
			<p>여러 조건을 체크할 때는 <code>else if</code> 문을 사용합니다. 첫 번째 조건이 거짓이면 다음 조건을 체크합니다.
		</p> <pre class="line-numbers">
    <code class="language-java">int number = 0;
    if (number > 0) {
        System.out.println("Number is positive.");
    } else if (number < 0) {
        System.out.println("Number is negative.");
    } else {
        System.out.println("Number is zero.");
    }</code>
    </pre>
			<p>여기서는 <code>number</code>가 0이므로, 마지막 <code>else</code> 블록이 실행되어 "Number is zero."가 출력됩니다.
		</p></li>
		<li><code>switch</code> 문
			<p><code>switch</code> 문은 하나의 변수 값에 따라 여러 경우(case)를 처리할 때 사용합니다. 각 <code>case</code>는 <code>break</code>
				문으로 끝나며, <code>break</code> 문이 없으면 다음 <code>case</code>로 실행이 넘어갑니다.</p> <pre class="line-numbers">
    <code class="language-java">int day = 3;
    switch (day) {
        case 1:
            System.out.println("Monday");
            break;
        case 2:
            System.out.println("Tuesday");
            break;
        case 3:
            System.out.println("Wednesday");
            break;
        default:
            System.out.println("Invalid day");
            break;
    }</code>
    </pre>
			<p>여기서는 <code>day</code>가 3이므로 "Wednesday"가 출력됩니다.
		</p></li>

	</ol>
	<p>조건문은 다양한 상황에서 사용될 수 있습니다. 예를 들어 사용자 입력을 검증하거나, 특정 조건에 따라 다른 동작을 수행하도록 할 때 유용합니다.</p>

</body>
</html>