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
		<h2>변수의 종류와 선언</h2>
	</div>
	<p>변수는 프로그래밍 언어의 벽돌과 같습니다. 벽돌 없이 집을 지을 수 없듯 변수 없이 의미있는 프로그램을 만들기는 어렵습니다. 변수란 값을 저장하기 위한 공간입니다.
		그리고 변수는 다양한 타입을 가지고 있습니다.</p>

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
						<li><strong>long</strong>: 64비트, -2<sup>63</sup>에서 2<sup>63</sup>-1까지의 값을 저장합니다. <code>long</code>
							리터럴은 숫자 뒤에 'L'을 붙여 표현합니다 (예: 123L).</li>
					</ul>
				</li>
				<li>부동 소수점형
					<ul>
						<li><strong>float</strong>: 32비트, 단정도 부동 소수점 숫자를 저장합니다. <code>float</code> 리터럴은 숫자 뒤에
							'F'를 붙여 표현합니다 (예: 3.14F).</li>
						<li><strong>double</strong>: 64비트, 배정도 부동 소수점 숫자를 저장합니다. 기본 소수점 숫자는 <code>double</code>
							타입으로 간주합니다.</li>
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
		<li>클래스 타입 : 객체 지향 프로그래밍의 핵심으로, 클래스는 데이터와 메서드를 포함할 수 있습니다. 참조형 변수는 클래스의 인스턴스를 가리킵니다. <pre
				class="line-numbers">
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
		<li>배열 타입 : 동일한 타입의 변수들을 모아놓은 자료구조입니다. 배열은 고정된 크기를 가지며, 인덱스를 통해 접근합니다. <pre
				class="line-numbers">
        <code class="language-java">public class ArrayExample {
            public static void main(String[] args) {
                int[] numbers = {1, 2, 3, 4, 5};
            }
        }</code>
    </pre></li>
		<li>인터페이스 타입 : 인터페이스는 클래스가 구현해야 하는 메서드의 집합을 정의합니다. 인터페이스 타입 변수는 이를 구현한 클래스의 객체를 참조할 수 있습니다. <pre
				class="line-numbers">
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
	<p>변수는 다양한 종류 만큼 그 사용법도 다양합니다. 올바른 변수 사용은 코드들은 더 부드럽게 작동할 수 있습니다. 참조형 변수의 경우 그 '메모리'를 저장합니다. 이는
		컴퓨터 구조와 프로그램 사이에 아주 중요한 개념입니다. 이를 이해하기 위해서는 우리가 선언한 변수가 어떻게 저장되는지 알아야 할 필요가 있습니다.</p>
	<h3>기본형과 참조형의 차이</h3>
	<ul>
		<li><strong>저장 방식</strong>: 기본형 변수는 값 자체를 저장하고, 참조형 변수는 객체의 메모리 주소를 저장합니다.</li>
		<li><strong>메모리 할당</strong>: 기본형 변수는 스택 메모리에 할당되며, 참조형 변수는 힙 메모리에 할당된 객체를 참조합니다.</li>
	</ul>

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>형 변환</h1>
	</div>

	<p>변수는 특정한 타입을 가지고 있습니다. 이는 선언과 함께 결정됩니다. 하지만 <strong>형 변환</strong>을 사용해 타입을 변경하는 방법도 있습니다.
		문자열을 정수로, 정수를 실수로 변환할 수 있습니다.
	</p>

	<ol>
		<li>묵시적 형 변환(Implicit Casting)
			<p>묵시적 형 변환은 변환에 대한 특별한 지시 없이 그 형을 변환시키는 것을 의미합니다. 변환하는 타입의 크기가 더 클 경우 데이터의 손실이 없기 때문에 안전하게 그
				데이터를 변환할 수 있기 때문입니다.</p> <pre class="line-numbers">
    <code class="language-java">int intVal = 100;
    long longVal = intVal;  // int에서 long으로 묵시적 형변환
    float floatVal = longVal;  // long에서 float로 묵시적 형변환</code>
            </pre>
		</li>
		<li>명시적 형변환 (Explicit Casting)
			<p>반면에 크기가 더 작은 형태로 변환하는 경우 데이터가 변경될 가능성이 있습니다. 따라서 명시적으로 데이터 형변환을 해줄 필요가 있습니다.</p> <pre
				class="line-numbers">
    <code class="language-java">double doubleVal = 100.04;
    int intVal = (int) doubleVal;  // double에서 int로 명시적 형변환 (소수점 이하가 잘림)</code>
            </pre>
			<p>다음과 같이 <code>(타입)</code>으로 그 형태 변화를 할 수 있습니다.
		</p>
		</li>
	</ol>

	<p>여기까지의 내용은 수치형 데이터와 char와 같은 수치를 기반으로 하는 문자(ASCII) 형태에 해당합니다. 문자열과 수치형 사이에 형변환은 다른 방법을 사용해야
		합니다.</p>

	<ol>
		<li>문자열 -> 정수
			<p>문자열의 경우 <code>Integer.parseInt(문자열)</code>을 활용해 변환할 수 있습니다.
		</p> <pre class="line-numbers">
    <code class="language-java">String s = "12345";
    int i = Integer.parseInt(s);</code>
            </pre>
		</li>
		<li>정수 -> 문자열
			<p>정수의 경우 <code>Integer.toString(정수)</code>을 활용해 변환할 수 있습니다.
		</p> <pre class="line-numbers">
    <code class="language-java">int i = 12345;
    String s = Integer.toString(i);</code>
            </pre>
		</li>
	</ol>



	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>변수의 저장과 메모리</h2>
	</div>
	<p>우리는 컴퓨터에게 어떠한 값을 기억하도록 할 수 있습니다. 하지만 그걸 찾아올 수 없다면 아무 의미가 없겠죠? 그래서 특정한 값을 저장하고 이를 불러올 수 있도록
		해야합니다. 그것을 선언이라고 합니다. 변수는 선언과 동시에 컴퓨터 메모리에 공간을 차지하게 됩니다.</p>
	<p>변수 선언은 동시에 해당 변수가 메모리에 존재하는 '주소값'을 저장하는 것에 해당합니다. 변수의 <strong>주소값</strong>으로부터 변수의 <strong>크기</strong>만큼
		값을 저장하게 됩니다. 만약 변수에 저장된 값이 필요하다면 그 <strong>주소값</strong>으로 이동해서 변수의 <strong>크기</strong>만큼의 값을 가져오게
		되는 것입니다. 우리가 프로그래밍 언어를 배울 때 변수의 크기에 대해 알아야 하는 이유이기도 합니다.
	</p>
	<p>배열의 출력하면 확인할 수 있는 이상한 값이 어떤 의미일까요? 이것이 바로 주소값입니다. 변수의 경우 그 저장된 값을 출력하지만 배열의 경우 해당 배열의 <strong>주소값</strong>을
		출력해줍니다. 우리가 배열에 각 요소를 접근하는 방법은 해당 <strong>주소값</strong>으로부터 변수의 <strong>크기</strong>만큼 깡총깡총 건너뛰어 값을
		가져오게 되는 것이죠!
	</p>

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h2>변수의 종류와 생명주기</h2>
	</div>
	<p>작성된 프로그램의 변수 또한 생명 주기를 가지고 있다는 것을 아시나요? 마치 살아있는 것처럼요!앞서 컴파일에 대해 설명하며 변수가 메모리에 저장됨을 말씀 드렸습니다.
		메모리에서 프로그램이 종료되면 변수의 공간도 반환됩니다. 어떻게 모든게 영원할 수 있겠어요?</p>
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
	<p>아직 설명하지 못한 요소들이 많이 있습니다. <code>static</code>과 <code>class</code>와 같은 핵심적인 내용입니다. 아쉽지만 일단은
		변수라는 것이 선언의 위치에 따라 그 접근 방법과 생명 주기가 다양하다는 것만 알고 넘어가도록 합시다.
	</p>



</body>
</html>