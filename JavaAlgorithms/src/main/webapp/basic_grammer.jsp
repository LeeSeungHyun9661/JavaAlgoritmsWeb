<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>자바 기초 문법</h1>
	</div>
	<p>자바 언어의 기초적인 문법에 대해 알아보도록 합시다. 자바 문법을 구성하는 요소는 클래스, 인스턴스, 변수, 메서드 그리고 주석입니다.</p>

	<ol>
		<li><strong>클래스(Class)</strong>:객체지향 프로그램의 기본 구조로 자바에서 모든 프로그램 소스는 클래스 단위로 시작하게 됩니다.
			<ul>
				<li>프로그램 소스는 .java 파일이고 컴파일된 결과는 .class 가 됩니다.</li>
				<li>일반적으로 클래스 이름과 소스파일명은 동일합니다.</li>
				<li>대부분의 경우 프로그램은 여러 클래스로 구성되며 실행을 위해서는 main() 메서드가 필요합니다.</li>
			</ul></li>
		<li><strong>인스턴스(Instance)</strong>:클래스로 부터 생성된 객체로 클래스는 객체를 정의한 틀이고 실제 프로그램은 인스턴스를 통해 동작하게 됩니다.
			<ul>
				<li>main() 메서드는 단지 프로그램을 실행하는 진입점이고 실제 클래스를 사용하려면 new() 연산을 통해 인스턴스를 생성해야 함</li>
				<li>main() 에서 클래스부에 선언된 변수(멤버)를 접근할 수 없으며 인스턴스를 통해 사용해야함(인스턴스 변수)</li>
				<li>인스턴스에서 변수와 메서드 사용은 인스턴스명.변수명, 인스턴스명, 메서드명과 같은 형식으로 사용</li>
			</ul></li>
		<li><strong>변수(Variable)</strong>:일반적인 프로그램언어의 변수와 같은 개념으로 하나의 값을 저장할 수 있는 저장공간을 뜻합니다.</li>
		<li><strong>메서드(Method)</strong>:일반적인 프로그램언어의 함수와 유사합니다. 함수는 단순한 기능을 모듈화 한것이지만 메서드는 객체의 동작(행위)을 정의 합니다.</li>

		<li><strong>주석(Comment)</strong>:프로그램 실행에 아무 영향도 주지 않습니다. 코드에 대한 여러 설명과 메모의 역할을 합니다. 올바른 주석 처리는 코드의 가독성을 높여줍니다.</li>
	</ol>

	<pre class="line-numbers">
        <code class="language-java">public class Main { // Main.java 파일의 Main 클래스 => 파일 이름과 클래스 이름은 동일해야 한다!
        
		    public static void main(String[] args) { // Main 클래스에 있는 실행을 위한 메서드 => 코드 실행을 위해서는 반드시 필요하다.
		        int number = 1; // 정수형 변수
		        
		        String Hello = "Hello World!"; // 문자열 변수
		        
		        number = addFive(number); // 메서드 호출과 반환값 저장
		    }
		
		    static int addFive(int number) { // 메서드
		        return number + 5; // 반환값
		    }
		}</code>
    </pre>


	<p>각 구성 요소에 대해 식별자는 규칙에 따라 작성되어야 합니다. 이미 지정되어 있는 식별자 코드와 충돌하지 않도록 하기 위해서죠. 어떠한 코드들은 이미 그 이름 자체에 기능이 부여되어 있습니다.</p>
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

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>변수의 종류와 선언</h2>
	</div>
	<p>변수는 프로그래밍 언어의 벽돌과 같습니다. 벽돌 없이 집을 지을 수 없듯 변수 없이 의미있는 프로그램을 만들기는 어렵습니다. 변수란 값을 저장하기 위한 공간입니다. 그리고 변수는 다양한 타입을 가지고 있습니다.</p>

	<h3>기본형 (Primitive Types)</h3>
	<p>기본형 변수는 자바의 가장 기본적인 데이터 타입으로, 값 자체를 저장합니다. 총 8가지가 있습니다.</p>

	<div class="row">
		<div class="col-6">
			<ol>
				<li>정수형
					<ul>
						<li><strong>byte</strong>: 8비트, -128에서 127까지의 값을 저장합니다.</li>
						<li><strong>short</strong>: 16비트, -32,768에서 32,767까지의 값을 저장합니다.</li>
						<li><strong>int</strong>: 32비트, -2<sup>31</sup>에서 2<sup>31</sup>-1까지의 값을 저장합니다.</li>
						<li><strong>long</strong>: 64비트, -2<sup>63</sup>에서 2<sup>63</sup>-1까지의 값을 저장합니다. <code>long</code> 리터럴은 숫자 뒤에 'L'을 붙여 표현합니다 (예: 123L).</li>
					</ul>
				</li>
				<li>부동 소수점형
					<ul>
						<li><strong>float</strong>: 32비트, 단정도 부동 소수점 숫자를 저장합니다. <code>float</code> 리터럴은 숫자 뒤에 'F'를 붙여 표현합니다 (예: 3.14F).</li>
						<li><strong>double</strong>: 64비트, 배정도 부동 소수점 숫자를 저장합니다. 기본 소수점 숫자는 <code>double</code> 타입으로 간주합니다.</li>
					</ul>
				</li>
				<li>문자형
					<ul>
						<li><strong>char</strong>: 16비트, 단일 문자를 저장합니다. 유니코드 문자를 지원하며, 작은따옴표(' ')로 표현합니다 (예: 'A').</li>
					</ul>
				</li>
				<li>논리형
					<ul>
						<li><strong>boolean</strong>: 1비트, <code>true</code> 또는 <code>false</code> 값을 저장합니다.</li>
					</ul>
				</li>
			</ol>
		</div>
		<div class="col-6">
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
		</div>
	</div>

	<h3>참조형 (Reference Types)</h3>
	<p>참조형 변수는 객체의 메모리 주소를 저장합니다. 참조형 변수는 클래스, 배열, 인터페이스 등과 같이 사용자 정의 타입을 포함합니다.</p>

	<ol>
		<li>클래스 타입 : 객체 지향 프로그래밍의 핵심으로, 클래스는 데이터와 메서드를 포함할 수 있습니다. 참조형 변수는 클래스의 인스턴스를 가리킵니다. <pre class="line-numbers">
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
    </pre></li>
		<li>배열 타입 : 동일한 타입의 변수들을 모아놓은 자료구조입니다. 배열은 고정된 크기를 가지며, 인덱스를 통해 접근합니다. <pre class="line-numbers">
        <code class="language-java">public class ArrayExample {
            public static void main(String[] args) {
                int[] numbers = {1, 2, 3, 4, 5};
            }
        }</code>
    </pre></li>
		<li>인터페이스 타입 : 인터페이스는 클래스가 구현해야 하는 메서드의 집합을 정의합니다. 인터페이스 타입 변수는 이를 구현한 클래스의 객체를 참조할 수 있습니다. <pre class="line-numbers">
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
    </pre></li>
	</ol>
	<p>변수는 다양한 종류 만큼 그 사용법도 다양합니다. 올바른 변수 사용은 코드들은 더 부드럽게 작동할 수 있습니다. 참조형 변수의 경우 그 '메모리'를 저장합니다. 이는 컴퓨터 구조와 프로그램 사이에 아주 중요한 개념입니다. 이를 이해하기 위해서는 우리가 선언한 변수가 어떻게 저장되는지 알아야 할 필요가 있습니다.</p>
	<h3>기본형과 참조형의 차이</h3>
	<ul>
		<li><strong>저장 방식</strong>: 기본형 변수는 값 자체를 저장하고, 참조형 변수는 객체의 메모리 주소를 저장합니다.</li>
		<li><strong>메모리 할당</strong>: 기본형 변수는 스택 메모리에 할당되며, 참조형 변수는 힙 메모리에 할당된 객체를 참조합니다.</li>
	</ul>


	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>변수의 저장과 메모리</h2>
	</div>
	<p>우리는 컴퓨터에게 어떠한 값을 기억하도록 할 수 있습니다. 하지만 그걸 찾아올 수 없다면 아무 의미가 없겠죠? 그래서 특정한 값을 저장하고 이를 불러올 수 있도록 해야합니다. 그것을 선언이라고 합니다. 변수는 선언과 동시에 컴퓨터 메모리에 공간을 차지하게 됩니다.</p>
	<p>변수 선언은 동시에 해당 변수가 메모리에 존재하는 '주소값'을 저장하는 것에 해당합니다. 변수의 <strong>주소값</strong>으로부터 변수의 <strong>크기</strong>만큼 값을 저장하게 됩니다. 만약 변수에 저장된 값이 필요하다면 그 <strong>주소값</strong>으로 이동해서 변수의 <strong>크기</strong>만큼의 값을 가져오게 되는 것입니다. 우리가 프로그래밍 언어를 배울 때 변수의 크기에 대해 알아야 하는 이유이기도 합니다.
	</p>
	<p>배열의 출력하면 확인할 수 있는 이상한 값이 어떤 의미일까요? 이것이 바로 주소값입니다. 변수의 경우 그 저장된 값을 출력하지만 배열의 경우 해당 배열의 <strong>주소값</strong>을 출력해줍니다. 우리가 배열에 각 요소를 접근하는 방법은 해당 <strong>주소값</strong>으로부터 변수의 <strong>크기</strong>만큼 깡총깡총 건너뛰어 값을 가져오게 되는 것이죠!
	</p>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>변수의 종류와 생명주기</h2>
	</div>
	<p>작성된 프로그램의 변수 또한 생명 주기를 가지고 있다는 것을 아시나요? 마치 살아있는 것처럼요!앞서 컴파일에 대해 설명하며 변수가 메모리에 저장됨을 말씀 드렸습니다. 메모리에서 프로그램이 종료되면 변수의 공간도 반환됩니다. 어떻게 모든게 영원할 수 있겠어요?</p>
	<p>이렇듯 변수는 어디서 탄생되어 얼마 만큼의 영향을 행사하고 또 소멸할 지 결정해야 합니다. 종류는 다음과 같습니다.</p>

	<ol>
		<li><strong>인스턴스 변수 (Instance Variables)</strong>
			<ul>
				<li><strong>정의</strong>: 클래스의 인스턴스(객체)에 속하는 변수입니다.</li>
				<li><strong>선언 위치</strong>: 클래스 블록 내, 메서드 외부에서 선언됩니다.</li>
				<li><strong>생명 주기</strong>: 객체가 생성될 때 초기화되고, 객체가 더 이상 사용되지 않으면 가비지 컬렉션에 의해 회수됩니다.</li>
				<li><strong>접근 방법</strong>: 객체를 통해 접근할 수 있습니다.</li>
			</ul> <pre class="line-numbers">
	    <code class="language-java">public class Person {
	         // 인스턴스 변수
	         String name;
	         int age;
	     }</code>
    </pre></li>
		<li><strong>클래스 변수 (Class Variables)</strong>
			<ul>
				<li><strong>정의</strong>: 클래스에 속하는 변수로, 모든 인스턴스가 공유합니다. <code>static</code> 키워드를 사용하여 선언합니다.</li>
				<li><strong>선언 위치</strong>: 클래스 블록 내, 메서드 외부에서 선언되며, <code>static</code> 키워드를 포함합니다.</li>
				<li><strong>생명 주기</strong>: 프로그램이 시작될 때 메모리에 할당되고, 프로그램이 종료될 때 해제됩니다.</li>
				<li><strong>접근 방법</strong>: 클래스 이름을 통해 접근할 수 있으며, 객체를 통해서도 접근할 수 있습니다.</li>
			</ul> <pre class="line-numbers">
        <code class="language-java">public class Person {
	        // 클래스 변수
	        static int population;
	    }</code>
    </pre></li>
		<li><strong>지역 변수 (Local Variables)</strong>
			<ul>
				<li><strong>정의</strong>: 메서드, 생성자 또는 블록 내에서 선언된 변수입니다.</li>
				<li><strong>선언 위치</strong>: 메서드, 생성자, 또는 블록 내부에서 선언됩니다.</li>
				<li><strong>생명 주기</strong>: 선언된 블록이 실행될 때 생성되고, 블록이 종료되면 소멸됩니다.</li>
				<li><strong>접근 방법</strong>: 선언된 블록 내부에서만 접근할 수 있습니다.</li>
			</ul> <pre class="line-numbers">
        <code class="language-java">public void display() {
            // 지역 변수
            int count = 0;
            System.out.println(count);
        }</code>
	    </pre></li>
		<li><strong>매개 변수 (Parameters)</strong>
			<ul>
				<li><strong>정의</strong>: 메서드나 생성자의 매개 변수 목록에 선언된 변수입니다.</li>
				<li><strong>선언 위치</strong>: 메서드 또는 생성자의 선언부에서 선언됩니다.</li>
				<li><strong>생명 주기</strong>: 메서드나 생성자가 호출될 때 생성되고, 메서드나 생성자가 종료될 때 소멸됩니다.</li>
				<li><strong>접근 방법</strong>: 해당 메서드 또는 생성자 내부에서 접근할 수 있습니다.</li>
			</ul> <pre class="line-numbers">
	        <code class="language-java">public void setName(String name) {
	            // 매개 변수
	            this.name = name;
	        }</code>
	    </pre></li>
	</ol>
	<p>아직 설명하지 못한 요소들이 많이 있습니다. <code>static</code>과 <code>class</code>와 같은 핵심적인 내용입니다. 아쉽지만 일단은 변수라는 것이 선언의 위치에 따라 그 접근 방법과 생명 주기가 다양하다는 것만 알고 넘어가도록 합시다.
	</p>


	<div>
		<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
			<h2>연산자</h2>
		</div>
		<p>연산자는 프로그램에서 데이터를 처리하고 결과를 산출하기 위한 <strong>연산</strong>의 과정에 사용하는 기호입니다.
		</p>

		<ol>
			<li><strong>산술 연산자</strong>
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
				</table></li>
			<li><strong>비교 연산자</strong>
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
				</table></li>
			<li><strong>논리 연산자</strong>
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
				</table></li>
			<li><strong>대입 연산자</strong>
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
				</table></li>
			<li><strong>비트 연산자</strong>
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
				</table></li>
			<li><strong>단항 연산자</strong>
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
				</table></li>
		</ol>

		<p>또한 연산자는 우선 순위가 정해져 있습니다.</p>
		<table>
			<thead>
				<tr>
					<th>순위</th>
					<th>연산자</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1 (highest)</td>
					<td>() [] .</td>
				</tr>
				<tr>
					<td>2</td>
					<td>++ --</td>
				</tr>
				<tr>
					<td>3</td>
					<td>+ - ! ~ (type) ++ --</td>
				</tr>
				<tr>
					<td>4</td>
					<td>* / %</td>
				</tr>
				<tr>
					<td>5</td>
					<td>+ -</td>
				</tr>
				<tr>
					<td>6</td>
					<td>&lt;&lt; &gt;&gt; &gt;&gt;&gt;</td>
				</tr>
				<tr>
					<td>7</td>
					<td>&lt; &lt;= &gt; &gt;= instanceof</td>
				</tr>
				<tr>
					<td>8</td>
					<td>== !=</td>
				</tr>
				<tr>
					<td>9</td>
					<td>&amp;</td>
				</tr>
				<tr>
					<td>10</td>
					<td>^</td>
				</tr>
				<tr>
					<td>11</td>
					<td>|</td>
				</tr>
				<tr>
					<td>12</td>
					<td>&amp;&amp;</td>
				</tr>
				<tr>
					<td>13</td>
					<td>||</td>
				</tr>
				<tr>
					<td>14</td>
					<td>?:</td>
				</tr>
				<tr>
					<td>15 (lowest)</td>
					<td>= += -= *= /= %= &= ^= |= <<= >>= >>>=</td>
				</tr>
			</tbody>
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

		<p>메서드는 다음과 같은 구성 요소로 이루어져 있습니다:</p>
		<ul>
			<li><strong>반환형</strong>: 메서드가 반환하는 값의 데이터 타입을 명시합니다. 반환값이 없을 경우 <code>void</code>를 사용합니다.</li>
			<li><strong>메서드명</strong>: 메서드의 이름을 정의합니다. 보통 소문자로 시작하고 동사 형태를 사용합니다.</li>
			<li><strong>매개변수 목록</strong>: 메서드가 입력받을 값들을 정의합니다. 각 매개변수는 데이터 타입과 변수명으로 이루어집니다.</li>
			<li><strong>메서드 몸체</strong>: 메서드가 수행할 작업을 정의하는 코드 블록입니다.</li>
		</ul>
		
		<p>또한 메서드는 크게 두 가지로 나뉩니다:</p>
		<ul>
			<li><strong>인스턴스 메서드</strong>: 객체의 인스턴스에 속하는 메서드입니다. 이 메서드는 객체를 생성한 후에만 호출할 수 있습니다.</li>
			<li><strong>정적 메서드</strong>: 클래스에 속하는 메서드입니다. 객체를 생성하지 않고도 호출할 수 있습니다. 정적 메서드는 <code>static</code> 키워드로 선언합니다.</li>
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

		<h3>메서드의 구성 요소</h3>

	</div>



</body>
</html>