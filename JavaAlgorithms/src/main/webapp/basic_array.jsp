<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Sorting Algorithms</title>
</head>
<body>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>Java Arrays</h1>
	</div>
	<h2>배열이란?</h2>
	<p>배열(Array)은 동일한 타입의 여러 개의 값을 하나의 변수로 관리할 수 있는 자료구조입니다. 자바의 배열은 고정 크기를 가지며, 생성된 후에는 크기를 변경할 수 없습니다.</p>

	<h2>배열의 선언과 생성</h2>

	<h3>배열 선언</h3>
	<p>배열을 선언할 때는 배열의 타입과 이름을 지정합니다. 선언하는 방법은 다음과 같습니다:</p>
	<pre class="line-numbers">
        <code class="language-java">int[] numbers;
		String[] names;</code>
	</pre>

	<h3>배열 생성</h3>
	<p>배열을 생성할 때는 <code>new</code> 연산자를 사용하여 배열의 크기를 지정합니다:
	</p>
	<pre class="line-numbers">
        <code class="language-java">numbers = new int[5];
		names = new String[10];</code>
	</pre>

	<h3>배열 선언과 생성을 동시에 하기</h3>
	<p>배열을 선언하고 생성하는 작업을 동시에 할 수도 있습니다:</p>
	<pre class="line-numbers">
        <code class="language-java">int[] numbers = new int[5];
        String[] names = new String[10];</code>
	</pre>

	<h3>배열 초기화</h3>
	<p>배열을 선언하고 생성하면서 동시에 초기화할 수 있습니다:</p>
	<pre class="line-numbers">
        <code class="language-java">int[] numbers = {1, 2, 3, 4, 5};
        String[] names = {"Alice", "Bob", "Charlie", "David", "Eve"};</code>
	</pre>

	<h2>배열 요소 접근</h2>
	<p>배열의 각 요소는 인덱스를 통해 접근할 수 있습니다. 인덱스는 0부터 시작합니다.</p>
	<pre class="line-numbers">
        <code class="language-java">int firstNumber = numbers[0]; // 첫 번째 요소
        names[1] = "John"; // 두 번째 요소 변경</code>
	</pre>

	<h2>배열의 길이</h2>
	<p>배열의 길이는 <code>length</code> 속성을 사용하여 얻을 수 있습니다:
	</p>
	<pre class="line-numbers">
        <code class="language-java">int length = numbers.length;</code>
	</pre>

	<h2>예제 코드</h2>
	<p>다음은 자바 배열의 선언, 생성, 초기화, 그리고 요소 접근을 보여주는 간단한 예제입니다:</p>
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

	<h2>주요 특징</h2>
	<ul>
		<li><strong>고정 크기</strong>: 배열의 크기는 생성 시에 결정되며, 이후 변경할 수 없습니다.</li>
		<li><strong>동일 타입 요소</strong>: 배열은 동일한 타입의 요소들로 구성됩니다.</li>
		<li><strong>인덱스로 접근</strong>: 배열 요소는 0부터 시작하는 인덱스로 접근할 수 있습니다.</li>
		<li><strong>효율적 메모리 사용</strong>: 배열은 메모리상에 연속적으로 저장되어 있어 빠른 접근이 가능합니다.</li>
	</ul>

	<h2>주의 사항</h2>
	<ul>
		<li><strong>배열 크기 초과 접근</strong>: 배열의 인덱스를 잘못 접근하면 <code>ArrayIndexOutOfBoundsException</code>이 발생합니다.</li>
		<li><strong>초기화되지 않은 배열 요소</strong>: 기본 타입 배열은 0 또는 기본값으로 초기화되지만, 참조 타입 배열은 <code>null</code>로 초기화되므로 <code>NullPointerException</code>에 주의해야 합니다.</li>
	</ul>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>Deep Copy / Shallow Copy</h2>
	</div>
	<p>간단한 코드를 한번 살펴보도록 합시다.</p>
	<pre class="line-numbers">
        <code class="language-java">public class Main {
		
		    static int snum = 10;
		
		    public static void main(String[] args) {
		        int num = 1;
		        int[] arr = { 1 };
		
		        f1(num);
		        f2(arr);
		
		        System.out.println("num :" + num);
		        System.out.println("arr[0] :" + arr[0]);
		
		    }
		
		    static void f1(int num) {
		        num += 1;
		    }
		
		    static void f2(int[] arr) {
		        arr[0] += 1;
		    }
		}</code>
    </pre>
	<p>어떤 결과가 나타날까요? <code>num</code>의 경우 <code>add()</code>메서드에 의해 그 값이 호출됩니다. 1을 더해줬지만 출력 값은 변하지 않습니다. 하지만 배열의 경우 2가 출력됩니다. <code>add()</code> 함수에 그 값이 변경되었습니다. 어떤 차이가 다른 결과를 만들어 낸 걸까요? 이는 <strong>깊은 복사(Deep Copy)</strong>와 <strong>얕은 복사(Shallow Copy)</strong>의 차이를 의미합니다.
	</p>

	<p>앞서 Java 코드가 어떻게 컴파일 되는지 설명했습니다. 자바 가상 머신(JVM) 내부 메모리 영역에 변수가 저장되는데 그 종류에 따라 세 영역에 나누어 저장됩니다.</p>
	<ul>
		<li><strong>Method(Static) 영역</strong>: 클래스와 클래스 변수(Static 변수), 메소드가 저장됩니다.</li>
		<li><strong> Stack 영역</strong>: 기본형 변수(Primitive Types)가 저장됩니다. 지역변수와 매개변수가 여기에 해당합니다.</li>
		<li><strong> Heap 영역</strong>: 참조형 변수(Reference Type)가 저장됩니다. 데이터 타입을 가지는 객체(인스턴스), 배열이 여기에 저장됩니다.</li>
	</ul>

	<p>간단한 코드를 통해 우리가 선언하는 변수가 어떻게 저장되고 복제되는지 알아보도록 합시다.</p>

	<div class="row">
		<img class="col-6" src="resources/img/copy_1.png">
	</div>
	<p>다음과 같은 코드가 실행되면 먼저 각 클래스, static 변수, 메서드가 Method 영역에 저장됩니다.</p>

	<div class="row">
		<img class="col-6" src="resources/img/copy_2.png"> <img class="col-6" src="resources/img/copy.png">
	</div>
	<p>main 메서드가 실행되면 stack 영역에 값이 저장됩니다. 중요한 점은 참조형 변수입니다. 기본형 변수인 <code>int</code>는 값 그 자체를 저장합니다. 하지만 참조형 변수인 <code>int[]</code>(배열)은 그 주소값을 저장합니다. 배열 내부에 값은 Heap 영역에 저장되죠. 주소값은 그 장소를 가리키게 됩니다.
	</p>
	<div class="row">
		<img class="col-6" src="resources/img/copy_3.png"> <img class="col-6" src="resources/img/copy.png">
	</div>
	<p>먼저 함수 <code>f1()</code>이 실행되면 Stack 영역에 새로운 Stack 프레임 영역이 만들어집니다. 매개변수의 <code>num</code>은 다른 위치에 해당합니다. 값만 가져오게 되는 것이죠. 때문에 Stack 프레임 내부 값이 변경되어도 메서드 종료와 함께 사라지며 main의 <code>num</code>은 아무 영향도 받지 않게 되는 것입니다.
	</p>

	<div class="row">
		<img class="col-6" src="resources/img/copy_4.png"> <img class="col-6" src="resources/img/copy.png">
	</div>
	<p>반면에 <code>f2()의 경우</code> Stack 프레임 영역에서 만들어진 <code>arr</code>값은 같은 주소값을 가져오게 됩니다. 여전히 배열의 값이 저장된 Heap 영역을 가리키게 됩니다. 따라서 같은 주소값을 가리키는 변수는 영향을 끼치게 됩니다. <code>arr</code>의 값이 변경에 영향을 받게 됩니다.
	</p>
	<pre class="line-numbers">
        <code class="language-java">import java.util.Arrays;
		public class Main {		
		    public static void main(String[] args) {
		
		        int num1 = 1;
		        int num2 = num1;
		        num1 += 1;
		        System.out.println("num1 :" + num1 + " / num2:" + num2);
		
		        int[] arr1 = { 1, 2, 3, 4 };
		        int[] arr2 = arr1;
		
		        arr1[0] = 7;
		        arr2[3] = 9;
		
		        System.out.println("arr1 :" + Arrays.toString(arr1) + " / arr2 :" + Arrays.toString(arr2));
		
		    }
		}</code>
    </pre>

	<p>다음 코드의 결과를 예측할 수 있을까요? 기본형 변수 <code>num1</code>은 1로 값이 초기화 되었습니다. <code>num2</code>또한 선언되는데 이 값은 num1의 값을 복사하게 됩니다. 두 값은 개별 위치에 저장되기 때문에 하나의 값이 변경되어도 다른 값은 영향을 받지 않습니다.
	</p>
	<p>하지만 참조형 변수 <code>arr1</code>은 주소값을 가지고 있으며 배열을 가르키고 있습니다. <code>arr2</code>의 선언과 <code>arr1</code>의 복제는 배열의 내용이 아니라 그 주소값을 복제하게 됩니다. 따라서 <code>arr1</code>과 <code>arr2</code>에 대한 값 변경은 동일한 주소값이 가리키는 원본에 적용되게 됩니다. 여기까지의 개념을 <strong>얕은 복사(Shallow Copy)</strong>라고 합니다.
	</p>

	<p>그렇다면 배열은 복제할 수 없는 것일까요? 아닙니다. 개별의 주소값으로 배열을 선언하고 각 원소를 복제하는 방법으로 서로 영향받지 않는 동일한 내용의 배열을 생성할 수 있습니다. <strong>깊은 복사(Deep Copy)</strong>이라고 이러한 방법은 다음과 같이 구현이 가능합니다.
	</p>
	<ol>
		<li><code>for</code>문을 통한 원소 복제 <pre class="line-numbers">
    <code class="language-java">int[] arr1 = { 1, 2, 3, 4 };
    int[] arr2 = new int[4];

    for (int i = 0; i < arr1.length; i++) {
        arr2[i] = arr1[i];
    }</code>
    </pre>
			<p>가장 단순한 방법으로 동일한 길이의 배열을 만들고 <code>for</code>문을 통해 배열 원소값을 불러와 복제하는 방법입니다.
		</p></li>

		<li><code>clone()</code> <pre class="line-numbers">
    <code class="language-java">int[] arr1 = { 1, 2, 3, 4 };
    int[] arr2 = arr1.clone();</code>
    </pre></li>


		<li><code>Arrays.copyOf()</code> <pre class="line-numbers">
    <code class="language-java">int[] arr1 = { 1, 2, 3, 4 };
    int[] arr2 = Arrays.copyOf(arr1, arr1.length);</code>
    </pre>대상 배열에 특정 길이만큼 복제할 수 있습니다.</li>


		<li><code>System.arraycopy()</code> <pre class="line-numbers">
    <code class="language-java">System.arraycopy</code>    
    </pre> <pre class="line-numbers">
    <code class="language-java">int[] arr1 = { 1, 2, 3, 4 };
    int[] arr2 = new int[4];
    //(원본 배열, 원본 시작점, 대상 배열, 대상 시작점, 북제 길이)
    System.arraycopy(arr1, 0, arr2, 0, arr1.length);</code>
    </pre>
			<p>배열의 복제 부분을 세세하게 조정할 수 있는 명령어입니다.</p></li>

	</ol>



</body>
</html>