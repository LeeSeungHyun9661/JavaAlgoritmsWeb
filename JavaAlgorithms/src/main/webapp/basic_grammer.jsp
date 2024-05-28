<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>자바 기초 문법</h1>
	</div>
	<h3>클래스(Class)</h3>
	<p>객체지향 프로그램의 기본 구조로 자바에서 모든 프로그램 소스는 클래스 단위로 시작하게 됩니다.</p>
	<ul>
		<li>프로그램 소스는 .java 파일이고 컴파일된 결과는 .class 가 됨</li>
		<li>일반적으로 클래스 이름과 소스파일명은 동일함</li>
		<li>대부분의 경우 프로그램은 여러 클래스로 구성되며 실행을 위해서는 main() 메서드가 필요함.</li>
	</ul>

	<h3>인스턴스(Instance)</h3>
	<p>클래스로 부터 생성된 객체로 클래스는 객체를 정의한 틀이고 실제 프로그램은 인스턴스를 통해 동작하게 됩니다.</p>
	<ul>
		<li>main() 메서드는 단지 프로그램을 실행하는 진입점이고 실제 클래스를 사용하려면 new() 연산을 통해 인스턴스를 생성해야 함</li>
		<li>main() 에서 클래스부에 선언된 변수(멤버)를 접근할 수 없으며 인스턴스를 통해 사용해야함(인스턴스 변수)</li>
		<li>인스턴스에서 변수와 메서드 사용은 인스턴스명.변수명, 인스턴스명, 메서드명과 같은 형식으로 사용</li>
	</ul>

	<h3>변수(Variable)</h3>
	<p>일반적인 프로그램언어의 변수와 기본 개념은 같습니다.</p>

	<h3>메서드(Method)</h3>
	<p>일반적인 프로그램언어의 함수와 유사합니다. 함수는 단순한 기능을 모듈화 한것이지만 메서드는 객체의 동작(행위)을 정의 합니다.</p>

	<h3>주석(Comment)</h3>
	<p>대부분의 프로그램언어와 같은 주석을 지원하며 JavaDoc 과 같은 특수한 목적의 주석이 있습니다.</p>
	<ul>
		<li>주석은 프로그램 생성에는 관여하지 않습니다.</li>
		<li>하지만 코드 작성자와 개발자들을 위한 메모 작성 기능이 있습니다.</li>
		<li>올바른 주석 처리는 코드 가독성을 높히고 에일리언 코드가 되지 않도록 도와줍니다.</li>
	</ul>

	<p>이러한 식별자는 규칙에 따라 작성되어야 합니다. 어떠한 코드들은 이미 그 이름 자체에 기능이 부여되어 있습니다.</p>
	<ul>
		<li>첫 문자가 문자나 _, $의 특수문자로 시작되어야 한다. 숫자로 시작할 수 없다.</li>
		<li>첫 문자가 아니라면, 문자나 _, $의 특수문자 그리고 숫자로 구성될 수 있다.</li>
		<li>자바의 예약어는 식별자로 사용할 수 없다.</li>
		<li>자바의 식별자는 대소문자를 구분한다.</li>
		<li>식별자 길이는 제한이 없고 공백은 포함할 수 없다.</li>
	</ul>

	<p>이러한 규칙은 반드시 지켜져야 합니다. 반면에 지켜지도록 권장하는 관례또한 존재합니다.</p>
	<ul>
		<li>클래스 이름은 대문자의 명사로 시작</li>
		<li>메서드 이름은 소문자의 동사</li>
		<li>변수는 소문자의 명사</li>
		<li>상수는 대문자의 명사</li>
	</ul>
	<p>자바의 간단한 코드를 작성해봅시다. 자바는 실행을 위해서 main 메서드가 필요합니다. 다음과 같은 코드가 있습니다.</p>
	<pre class="line-numbers">
        <code class="language-java">public class Main {
            public static void main(String[] args) {
                System.out.println("Hello World!");
            }
        }</code>
    </pre>
	<p>해당 코드는 실행 시 Hello World!를 출력하게 됩니다.</p>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>변수의 종류와 선언</h2>
	</div>
	<p>변수는 프로그래밍 언어의 벽돌과 같습니다. 벽돌 없이 집을 지을 수 없듯 변수 없이 의미있는 프로그램을 만들기는 어렵습니다. 변수란 값을 저장하기 위한 공간입니다. 그리고 변수는 다양한 타입을 가지고 있습니다.</p>
	<h2>기본형 (Primitive Types)</h2>
	<p>기본형 변수는 자바의 가장 기본적인 데이터 타입으로, 값 자체를 저장합니다. 총 8가지가 있습니다.</p>

	<h3>1. 정수형</h3>
	<ul>
		<li><strong>byte</strong>: 8비트, -128에서 127까지의 값을 저장합니다.</li>
		<li><strong>short</strong>: 16비트, -32,768에서 32,767까지의 값을 저장합니다.</li>
		<li><strong>int</strong>: 32비트, -2<sup>31</sup>에서 2<sup>31</sup>-1까지의 값을 저장합니다.</li>
		<li><strong>long</strong>: 64비트, -2<sup>63</sup>에서 2<sup>63</sup>-1까지의 값을 저장합니다. <code>long</code> 리터럴은 숫자 뒤에 'L'을 붙여 표현합니다 (예: 123L).</li>
	</ul>

	<h3>2. 부동 소수점형</h3>
	<ul>
		<li><strong>float</strong>: 32비트, 단정도 부동 소수점 숫자를 저장합니다. <code>float</code> 리터럴은 숫자 뒤에 'F'를 붙여 표현합니다 (예: 3.14F).</li>
		<li><strong>double</strong>: 64비트, 배정도 부동 소수점 숫자를 저장합니다. 기본 소수점 숫자는 <code>double</code> 타입으로 간주합니다.</li>
	</ul>

	<h3>3. 문자형</h3>
	<ul>
		<li><strong>char</strong>: 16비트, 단일 문자를 저장합니다. 유니코드 문자를 지원하며, 작은따옴표(' ')로 표현합니다 (예: 'A').</li>
	</ul>

	<h3>4. 논리형</h3>
	<ul>
		<li><strong>boolean</strong>: 1비트, <code>true</code> 또는 <code>false</code> 값을 저장합니다.</li>
	</ul>

	<pre class="line-numbers">
        <code class="language-java">public class PrimitiveTypesExample {
		    public static void main(String[] args) {
		        byte a = 10;
		        short b = 200;
		        int c = 1000;
		        long d = 10000L;
		        float e = 3.14F;
		        double f = 3.14159;
		        char g = 'A';
		        boolean h = true;
		    }
		}</code>
	</pre>

	<h2>참조형 (Reference Types)</h2>
	<p>참조형 변수는 객체의 메모리 주소를 저장합니다. 참조형 변수는 클래스, 배열, 인터페이스 등과 같이 사용자 정의 타입을 포함합니다.</p>

	<h3>1. 클래스 타입</h3>
	<p>객체 지향 프로그래밍의 핵심으로, 클래스는 데이터와 메서드를 포함할 수 있습니다. 참조형 변수는 클래스의 인스턴스를 가리킵니다.</p>

	<pre class="line-numbers">
        <code class="language-java">public class Person {
		    String name;
		    int age;
		    
		    public Person(String name, int age) {
		        this.name = name;
		        this.age = age;
		    }
		}
		
		public class ReferenceTypeExample {
		    public static void main(String[] args) {
		        Person person = new Person("John", 30);
		    }
		}</code>
	</pre>

	<h3>2. 배열 타입</h3>
	<p>동일한 타입의 변수들을 모아놓은 자료구조입니다. 배열은 고정된 크기를 가지며, 인덱스를 통해 접근합니다.</p>

	<pre class="line-numbers">
        <code class="language-java">public class ArrayExample {
		    public static void main(String[] args) {
		        int[] numbers = {1, 2, 3, 4, 5};
		    }
		}</code>
	</pre>

	<h3>3. 인터페이스 타입</h3>
	<p>인터페이스는 클래스가 구현해야 하는 메서드의 집합을 정의합니다. 인터페이스 타입 변수는 이를 구현한 클래스의 객체를 참조할 수 있습니다.</p>

	<pre class="line-numbers">
        <code class="language-java">interface Animal {
		    void makeSound();
		}
		
		class Dog implements Animal {
		    public void makeSound() {
		        System.out.println("Woof");
		    }
		}
		
		public class InterfaceExample {
		    public static void main(String[] args) {
		        Animal dog = new Dog();
		        dog.makeSound();
		    }
		}</code>
	</pre>

	<h2>기본형과 참조형의 차이</h2>
	<ul>
		<li><strong>저장 방식</strong>: 기본형 변수는 값 자체를 저장하고, 참조형 변수는 객체의 메모리 주소를 저장합니다.</li>
		<li><strong>메모리 할당</strong>: 기본형 변수는 스택 메모리에 할당되며, 참조형 변수는 힙 메모리에 할당된 객체를 참조합니다.</li>
		<li><strong>기본값</strong>: 기본형 변수는 기본값을 가지며 (예: <code>int</code>는 0, <code>boolean</code>은 <code>false</code>), 참조형 변수의 기본값은 <code>null</code>입니다.</li>
	</ul>

	<p>자바에서는 기본형과 참조형 변수를 적절히 사용하여 메모리 효율성과 프로그램의 구조를 최적화할 수 있습니다. 각 타입의 특성을 이해하면 자바 프로그래밍을 보다 효율적으로 할 수 있습니다.</p>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>변수의 종류와 생명주기</h2>
	</div>
	<p>작성된 프로그램의 변수 또한 생명 주기를 가지고 있다는 것을 아시나요? 마치 살아있는 것처럼요! 프로그램을 실행하면 물리 저장소의 데이터 코드는 컴파일 과정을 거치고 컴퓨터가 이해할 수 있는 수준의 언어로 변환됩니다. 이후 메모리에 공간을 할당 받고 프로세서로서 역할을 수행합니다. 프로세서는 코드 진행에 선언한 변수 공간을 할당하고 프로세서가 종료되면서 변수는 공간을 반환합니다.</p>
	<p>이렇듯 변수는 어디서 탄생되어 얼마 만큼의 영향을 행사하고 또 소멸할 지 결정해야 합니다. 종류는 다음과 같습니다.</p>


	<h3>1. 인스턴스 변수 (Instance Variables)</h3>
	<ul>
		<li><strong>정의</strong>: 클래스의 인스턴스(객체)에 속하는 변수입니다.</li>
		<li><strong>선언 위치</strong>: 클래스 블록 내, 메서드 외부에서 선언됩니다.</li>
		<li><strong>생명 주기</strong>: 객체가 생성될 때 초기화되고, 객체가 더 이상 사용되지 않으면 가비지 컬렉션에 의해 회수됩니다.</li>
		<li><strong>접근 방법</strong>: 객체를 통해 접근할 수 있습니다.</li>
	</ul>
	<pre class="line-numbers">
        <code class="language-java">public class Person {
		    // 인스턴스 변수
		    String name;
		    int age;
		}</code>
	</pre>
	<h3>2. 클래스 변수 (Class Variables)</h3>
	<ul>
		<li><strong>정의</strong>: 클래스에 속하는 변수로, 모든 인스턴스가 공유합니다. <code>static</code> 키워드를 사용하여 선언합니다.</li>
		<li><strong>선언 위치</strong>: 클래스 블록 내, 메서드 외부에서 선언되며, <code>static</code> 키워드를 포함합니다.</li>
		<li><strong>생명 주기</strong>: 프로그램이 시작될 때 메모리에 할당되고, 프로그램이 종료될 때 해제됩니다.</li>
		<li><strong>접근 방법</strong>: 클래스 이름을 통해 접근할 수 있으며, 객체를 통해서도 접근할 수 있습니다.</li>
	</ul>
	<pre class="line-numbers">
        <code class="language-java">public class Person {
	    // 클래스 변수
	    static int population;
	}</code>
	</pre>
	<h3>3. 지역 변수 (Local Variables)</h3>
	<ul>
		<li><strong>정의</strong>: 메서드, 생성자 또는 블록 내에서 선언된 변수입니다.</li>
		<li><strong>선언 위치</strong>: 메서드, 생성자, 또는 블록 내부에서 선언됩니다.</li>
		<li><strong>생명 주기</strong>: 선언된 블록이 실행될 때 생성되고, 블록이 종료되면 소멸됩니다.</li>
		<li><strong>접근 방법</strong>: 선언된 블록 내부에서만 접근할 수 있습니다.</li>
	</ul>

	<pre class="line-numbers">
        <code class="language-java">public void display() {
		    // 지역 변수
		    int count = 0;
		    System.out.println(count);
		}</code>
	</pre>

	<h3>4. 매개 변수 (Parameters)</h3>
	<ul>
		<li><strong>정의</strong>: 메서드나 생성자의 매개 변수 목록에 선언된 변수입니다.</li>
		<li><strong>선언 위치</strong>: 메서드 또는 생성자의 선언부에서 선언됩니다.</li>
		<li><strong>생명 주기</strong>: 메서드나 생성자가 호출될 때 생성되고, 메서드나 생성자가 종료될 때 소멸됩니다.</li>
		<li><strong>접근 방법</strong>: 해당 메서드 또는 생성자 내부에서 접근할 수 있습니다.</li>
	</ul>
	<pre class="line-numbers">
        <code class="language-java">public void setName(String name) {
		    // 매개 변수
		    this.name = name;
		}</code>
	</pre>


	<div>
		<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<h2>연산자</h2>
		</div>
		<h2>산술 연산자</h2>
		<table>
			<tr>
				<th>연산자</th>
				<th>설명</th>
				<th>예시</th>
			</tr>
			<tr>
				<td>+</td>
				<td>덧셈</td>
				<td>int sum = 5 + 3;</td>
			</tr>
			<tr>
				<td>-</td>
				<td>뺄셈</td>
				<td>int difference = 5 - 3;</td>
			</tr>
			<tr>
				<td>*</td>
				<td>곱셈</td>
				<td>int product = 5 * 3;</td>
			</tr>
			<tr>
				<td>/</td>
				<td>나눗셈</td>
				<td>int quotient = 6 / 3;</td>
			</tr>
			<tr>
				<td>%</td>
				<td>나머지 연산</td>
				<td>int remainder = 6 % 4;</td>
			</tr>
		</table>

		<h2>비교 연산자</h2>
		<table>
			<tr>
				<th>연산자</th>
				<th>설명</th>
				<th>예시</th>
			</tr>
			<tr>
				<td>==</td>
				<td>동등 비교</td>
				<td>boolean isEqual = (x == y);</td>
			</tr>
			<tr>
				<td>!=</td>
				<td>부등 비교</td>
				<td>boolean isNotEqual = (x != y);</td>
			</tr>
			<tr>
				<td>&gt;</td>
				<td>초과 비교</td>
				<td>boolean isGreater = (x &gt; y);</td>
			</tr>
			<tr>
				<td>&lt;</td>
				<td>미만 비교</td>
				<td>boolean isLess = (x &lt; y);</td>
			</tr>
			<tr>
				<td>&gt;=</td>
				<td>이상 비교</td>
				<td>boolean isGreaterOrEqual = (x &gt;= y);</td>
			</tr>
			<tr>
				<td>&lt;=</td>
				<td>이하 비교</td>
				<td>boolean isLessOrEqual = (x &lt;= y);</td>
			</tr>
		</table>

		<h2>논리 연산자</h2>
		<table>
			<tr>
				<th>연산자</th>
				<th>설명</th>
				<th>예시</th>
			</tr>
			<tr>
				<td>&amp;&amp;</td>
				<td>논리 AND</td>
				<td>boolean result = (condition1 &amp;&amp; condition2);</td>
			</tr>
			<tr>
				<td>||</td>
				<td>논리 OR</td>
				<td>boolean result = (condition1 || condition2);</td>
			</tr>
			<tr>
				<td>!</td>
				<td>논리 NOT</td>
				<td>boolean result = !condition1;</td>
			</tr>
		</table>

		<h2>대입 연산자</h2>
		<table>
			<tr>
				<th>연산자</th>
				<th>설명</th>
				<th>예시</th>
			</tr>
			<tr>
				<td>=</td>
				<td>대입</td>
				<td>int x = 5;</td>
			</tr>
			<tr>
				<td>+=</td>
				<td>덧셈 후 할당</td>
				<td>x += 3;</td>
			</tr>
			<tr>
				<td>-=</td>
				<td>뺄셈 후 할당</td>
				<td>x -= 3;</td>
			</tr>
			<tr>
				<td>*</td>
				<td>곱셈 후 할당</td>
				<td>x *= 3;</td>
			</tr>
			<tr>
				<td>/=</td>
				<td>나눗셈 후 할당</td>
				<td>x /= 3;</td>
			</tr>
			<tr>
				<td>%=</td>
				<td>나머지 연산 후 할당</td>
				<td>x %= 3;</td>
			</tr>
		</table>

		<h2>비트 연산자</h2>
		<table>
			<tr>
				<th>연산자</th>
				<th>설명</th>
				<th>예시</th>
			</tr>
			<tr>
				<td>&amp;</td>
				<td>비트 AND</td>
				<td>int result = x &amp; y;</td>
			</tr>
			<tr>
				<td>|</td>
				<td>비트 OR</td>
				<td>int result = x | y;</td>
			</tr>
			<tr>
				<td>^</td>
				<td>비트 XOR</td>
				<td>int result = x ^ y;</td>
			</tr>
			<tr>
				<td>~</td>
				<td>비트 NOT</td>
				<td>int result = ~x;</td>
			</tr>
			<tr>
				<td>&lt;&lt;</td>
				<td>왼쪽으로 이동</td>
				<td>int result = x &lt;&lt; 1;</td>
			</tr>
			<tr>
				<td>&gt;&gt;</td>
				<td>오른쪽으로 이동</td>
				<td>int result = x &gt;&gt; 1;</td>
			</tr>
		</table>

		<h2>단항 연산자</h2>
		<table>
			<tr>
				<th>연산자</th>
				<th>설명</th>
				<th>예시</th>
			</tr>
			<tr>
				<td>+</td>
				<td>단항 덧셈</td>
				<td>int result = +x;</td>
			</tr>
			<tr>
				<td>-</td>
				<td>단항 뺄셈</td>
				<td>int result = -x;</td>
			</tr>
			<tr>
				<td>++</td>
				<td>증가 연산자</td>
				<td>x++;</td>
			</tr>
			<tr>
				<td>--</td>
				<td>감소 연산자</td>
				<td>x--;</td>
			</tr>
			<tr>
				<td>!</td>
				<td>논리 NOT</td>
				<td>boolean result = !condition;</td>
			</tr>
			<tr>
				<td>~</td>
				<td>비트 NOT</td>
				<td>int result = ~x;</td>
			</tr>
		</table>
	</div>

	<div>
		<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<h2>메서드</h2>
		</div>

		<p>메서드는 특정 작업을 수행하기 위한 코드 블록입니다. 메서드는 보통 다음과 같은 형식으로 정의됩니다:</p>
		<pre class="line-numbers">
            <code class="language-java">반환형 메서드명(매개변수 목록) {
			    // 메서드 몸체
			}</code>
		</pre>
		<p>메서드는 크게 두 가지로 나뉩니다:</p>
		<ul>
			<li><strong>인스턴스 메서드</strong>: 객체의 인스턴스에 속하는 메서드입니다. 이 메서드는 객체를 생성한 후에만 호출할 수 있습니다.</li>
			<li><strong>정적 메서드</strong>: 클래스에 속하는 메서드입니다. 객체를 생성하지 않고도 호출할 수 있습니다. 정적 메서드는 <code>static</code> 키워드로 선언합니다.</li>
		</ul>

		<h3>메서드 정의 예제</h3>
		<p>아래는 자바에서 메서드를 정의하는 예제입니다:</p>
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

		<h3>메서드의 구성 요소</h3>
		<p>메서드는 다음과 같은 구성 요소로 이루어져 있습니다:</p>
		<ul>
			<li><strong>반환형</strong>: 메서드가 반환하는 값의 데이터 타입을 명시합니다. 반환값이 없을 경우 <code>void</code>를 사용합니다.</li>
			<li><strong>메서드명</strong>: 메서드의 이름을 정의합니다. 보통 소문자로 시작하고 동사 형태를 사용합니다.</li>
			<li><strong>매개변수 목록</strong>: 메서드가 입력받을 값들을 정의합니다. 각 매개변수는 데이터 타입과 변수명으로 이루어집니다.</li>
			<li><strong>메서드 몸체</strong>: 메서드가 수행할 작업을 정의하는 코드 블록입니다.</li>
		</ul>
	</div>



</body>
</html>