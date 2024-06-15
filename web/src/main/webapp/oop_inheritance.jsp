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
		<h1>상속</h1>
	</div>
	<p>프로그래머 'Tom'은 25세이며 'A'라는 이름의 회사를 다닙니다. Tom은 개와 고양이를 키우고 있습니다. 개는 'Max'이며 5살입니다. 고양이 'Lily'는
		3살입니다. Tom은 Max와 걷고 달리기를 하지만 고양이 Lily는 게을러서 걷기만 하고, 대신 점프를 할 줄 압니다. 셋 모두 음식을 먹지만 그건 Tom이 일을 열심히 하기
		때문입니다. Max는 멍멍! Lily는 야옹! Tom은 랄랄라~ 노래를 부릅니다.</p>
	<p>단란한 Tom네 집에 대해 Java 클래스로 표현해봅시다. 내용을 정리하면 다음과 같습니다.</p>

	<pre class="line-numbers">
    <code class="language-java">class Programmer { // 프로그래머 클래스
	    String name; // 이름
	    int age; // 나이
	    String company; // 회사
	    int money; // 재산
	
	    Programmer(String name, int age, String company) { // 생성자
	        this.name = name;
	        this.age = age;
	        this.company = company;
	        int money = 0;
	    }
	
	    void walk() {// 걷기
	        System.out.println(this.name + "is walking");
	    };
	
	    void run() {// 달리기
	        System.out.println(this.name + "is running");
	    };
	
	    void eat() {// 먹기
	        System.out.println(this.name + "is eating");
	    };
	
	    void work(int pay) {// 일하기
	        System.out.println(this.name + "is working");
	        this.money += pay;
	    };
	
	    void sing() {// 노래하기
	        System.out.println(this.name + "is singing: 랄랄라~");
	    };
	}
	
	class Dog { // 개 클래스
	    String name; // 이름
	    int age; // 나이
	
	    Dog(String name, int age) { // 생성자
	        this.name = name;
	        this.age = age;
	    }
	
	    void walk() {// 걷기
	        System.out.println(this.name + "is walking");
	    };
	
	    void run() {// 뛰기
	        System.out.println(this.name + "is running");
	    };
	
	    void eat() {// 먹기
	        System.out.println(this.name + "is eating");
	    };
	
	    void sing() {// 노래하기
	        System.out.println(this.name + "is singing: 멍멍~");
	    };
	
	}
	
	class Cat { // 고양이 클래스
	    String name; // 이름
	    int age; // 나이
	
	    Cat(String name, int age) { // 생성자
	        this.name = name;
	        this.age = age;
	    }
	
	    void walk() {// 걷기
	        System.out.println(this.name + "is walking");
	    };
	
	    void jump() {// 뛰기
	        System.out.println(this.name + "is running");
	    };
	
	    void eat() {// 먹기
	        System.out.println(this.name + "is eating");
	    };
	
	    void sing() {// 노래하기
	        System.out.println(this.name + "is singing: 냐옹~");
	    };
	
	}
	
	</code>
    </pre>

	<p>개와 고양이 그리고 프로그래머를 위한 세 개의 클래스가 만들어졌습니다. 동일한 변수와 메서드도 있지만 그 특성을 반영하는 차별화된 각자의 변수도 가지고 있습니다.
		이대로 사용해도 좋습니다. 하지만 동일한 내용의 반복은 프로그래밍에 비효율적인 방법입니다. 만약 Tom이 돈을 많이 벌어서 펭귄과 호랑이, 금붕어와 앵무새까지 사게 되는 날에는
		클래스가 계속 늘어날 것입니다. 반복되는 내용도 계속 늘어나고 코드의 유연성은 떨어질 것입니다. 공통된 내용을 묶어줄 수 있는 상속을 사용해보도록 합시다.</p>

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>부모 클래스의 생성과 상속 활용</h1>
	</div>

	<p>공통된 내용(이름, 나이, 걷기, 먹기)를 포함하고 있는 Animal 클래스를 만들었습니다. 이를 상속하기 위해서는 클래스에 <code>extends</code>
		키워드를 사용합니다. 상속한 클래스는 <strong>부모 클래스</strong>, 상속 받은 클래스는 <strong>자식 클래스</strong>라고 합니다. 자식 클래스는 부모
		클래스에서 선언한 변수와 함수를 활용할 수 있습니다.
	</p>
	<pre class="line-numbers">
    <code class="language-java">class Parent { // 부모 클래스
        int parentVal; // 부모 클래스 변수
        void parentFun(){ // 부모 클래스 메서드
        }
    }
    
    class Child extends parent { // 자식 클래스
        int childVal; // 자식 클래스 변수
        void childFun(){ // 자식 클래스 메서드
        }
    }
    
    public class Main {
        public static void main(String[] args) {
            Child child = new Child(); // 자식 클래스 인스턴스 생성
            child.patentVal; // 자식 클래스가 부모에서 정의한 변수를 포함한다.
        }
    }</code>
    </pre>

	<p>자바 상속을 사용할 경우 다음과 같은 내용을 참고 합시다.</p>
	<ul>
		<li><strong>is-a 관계 유지</strong>: 상속을 사용할 때는 반드시 자식 클래스가 부모 클래스의 일종이라는 is-a 관계가 성립해야 합니다. 예를
			들어, Bird 클래스와 Penguin 클래스의 관계에서는 Penguin이 Bird의 일종이므로 상속이 적절합니다. 상속으로 표현하고자 하는 관계는 부모가 자식을 포함하는 더
			큰 분류에 해당합니다.</li>
		<li><strong>메서드 오버라이딩 (Overriding)</strong>: 부모 클래스가 정의한 내용을 자식 클래스가 따르도록 되어있지만 이를 자식 클래스가
			재정의할 수도 있습니다. 이를 오버라이딩이라고 하며 자식 클래스에서 부모 클래스의 메서드를 재정의할 때는 <code>@Override</code> 애너테이션을 사용하여
			컴파일러가 이를 확인하게 합니다.</li>
		<li><strong>접근 제어자 (Access Modifiers)</strong>: 상속받은 메서드나 필드의 접근 제어자를 적절히 설정해야 합니다. 부모 클래스의 <code>private</code>
			멤버는 자식 클래스에서 접근할 수 없으며, <code>protected</code>나 <code>public</code>을 사용하면 접근할 수 있습니다.</li>
		<li><strong>생성자 호출</strong>: 자식 클래스의 생성자에서 반드시 부모 클래스의 생성자를 호출해야 합니다.</li>
		<li><strong>메서드 숨김(Method Hiding)</strong>: 부모 클래스의 static 메서드는 자식 클래스에서 오버라이딩할 수 없고, 같은 이름의
			static 메서드를 정의하면 메서드 숨김이 발생합니다.</li>
		<li><strong>업캐스팅(Upcasting)과 다운캐스팅(Downcasting)</strong>: 부모 클래스 타입의 참조 변수로 자식 클래스 객체를 참조할 수
			있습니다(업캐스팅). 반대로, 자식 클래스 타입의 참조 변수로 부모 클래스 객체를 참조하려면 명시적 캐스팅이 필요합니다(다운캐스팅).</li>
		<li><strong>다중 상속 불가</strong>: 자바는 다중 상속을 지원하지 않습니다. 이는 클래스 간의 복잡한 상속 관계와 충돌을 피하기 위함입니다. 다중
			상속의 필요성이 있을 때는 인터페이스를 구현하는 방법을 사용합니다.</li>
	</ul>

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>super</h1>
	</div>
	<p>상속의 개념에서 자식 클래스는 부모 클래스 요소에 대해 호출할 수 있습니다. 이는 super 키워드를 통해 가능합니다. 부모 클래스의 멤버(필드, 메서드, 생성자)를
		자식 클래스에서 참조할 때 사용됩니다. 예시를 살펴봅시다.</p>

	<ol>
		<li><strong>부모 클래스 생성자 호출</strong>
			<div class="row">

				<div class="col-6">
					<pre class="line-numbers">
    <code class="language-java">class Parent {
        int b;
    
        Parent(int b) {
            this.b = b;
        };
    }</code>
            </pre>

				</div>
				<div class="col-6">
					<pre class="line-numbers">
    <code class="language-java">class Child extends Parent {
        String a;
    
        Child(String a) {
            a = "A";
        }
    }</code>
            </pre>
				</div>
			</div>
			<p>해당 코드는 오류가 발생합니다. 부모 클래스의 생성자는 <code>int</code>값을 받아 클래스 변수에 저장합니다. 이를 상속하는 자식 클래스는 반면에 <code>String</code>값을
				받아서 클래스 변수에 저장합니다. 자식 클래스의 생성자만으로는 부모 클래스의 생성자를 만족할 수 없습니다. 따라서 <code>super()</code> 키워드를 통해서 부모
				클래스의 생성자에 값을 전달해주어야 합니다.<br>(기본적으로 자식 클래스의 생성자는 자동으로 <code>super()</code>가 포함되어 있습니다. 이는
				파라미터가 없는 부모 클래스의 생성자를 의미합니다. 만약 부모 클래스의 생성자가 파라미터를 받지 않는다면 자식 클래스에 <code>super()</code> 키워드를 포함할
				필요가 없습니다.)
		</p>
			<div class="row">

				<div class="col-6">
					<pre class="line-numbers">
    <code class="language-java">class Parent {
        int b;
    
        Parent(int b) {
            this.b = b;
        };
    }</code>
            </pre>

				</div>
				<div class="col-6">
					<pre class="line-numbers">
    <code class="language-java">class Child extends Parent {
        String a;    
        Child(String a, int b) {
            super(b);
            a = "A";
        }
    }</code>
            </pre>
				</div>
			</div>
			<p>자식 클래스의 생성자에게 전달받는 두 값중 <code>b</code>의 경우 <code>super()</code>키워드를 따라 부모 클래스의 생성자로 이동합니다.
		</p></li>
	</ol>
	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>다형성</h1>
	</div>
	<p>다형성(Polymorphism)은 객체 지향 프로그래밍의 핵심 개념 중 하나로, 동일한 인터페이스를 통해 서로 다른 데이터 타입들을 처리할 수 있는 기능을
		의미합니다. 다형성은 코드의 유연성과 재사용성을 높이며, 유지보수를 용이하게 합니다. 자바에서 다형성은 주로 상속과 인터페이스를 통해 구현됩니다.</p>
	<p>다형성은 오버로딩과 오버라이딩 두 가지 방법이 있습니다.</p>

	<ul>
		<li><strong>메서드 오버로딩</strong>: 같은 이름의 메서드를 여러 개 정의하되, 매개변수의 타입이나 개수를 다르게 하여 구현하는 방식입니다. 이는
			컴파일 시간 다형성의 한 예입니다.</li>
		<li><strong>메서드 오버라이딩</strong>: 상위 클래스의 메서드를 하위 클래스에서 재정의하는 방식입니다. 이는 런타임 다형성의 한 예입니다.</li>
	</ul>

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>오버라이딩</h1>
	</div>

	<p>해당 내용을 참고하여 Tom의 집을 다시 만들어 봅시다. 상속을 위해서는 공통된 내용을 묶어줄 수 있는 부모 클래스를 만들어야 합니다. Animal 클래스를 만들고
		이를 상속받는 클래스를 만들어봅시다.</p>
	<pre class="line-numbers">
    <code class="language-java">class Animal {
        String name; // 이름
        int age; // 나이
    
        public Animal(String name, int age) {
            this.name = name;
            this.age = age;
        }
        void walk() {// 걷기
            System.out.println(this.name + "is walking");
        };
        void eat() {// 먹기
            System.out.println(this.name + "is eating");
        };
    }
    
    class Dog extends Animal { // 자식 클래스 - 개

	    Dog(String name, int age) { // 생성자
	        super(name, age);
	    }
	
	    void run() {// 뛰기
	        System.out.println(this.name + "is running");
	    };
	
	    void sing() {// 노래하기
	        System.out.println(this.name + "is singing: 랄랄라~");
	    };
	
	}
	
	class Cat extends Animal { // 자식 클래스 - 고양이
	
	    Cat(String name, int age) { // 생성자
	        super(name, age);
	    }
	
	    void jump() {// 뛰기
	        System.out.println(this.name + "is running");
	    };
	
	    void sing() {// 노래하기
	        System.out.println(this.name + "is singing: 랄랄라~");
	    };
	
	}
	
	class Programmer extends Animal {// 자식 클래스 - 프로그래머
	    String company; // 회사
	    int money; // 재산
	
	    Programmer(String name, int age, String company) { // 생성자
	        super(name, age);
	        this.company = company;
	        int money = 0;
	    }
	
	    void run() {// 달리기
	        System.out.println(this.name + "is running");
	    };     
	
	    void work(int pay) {// 일하기
	        System.out.println(this.name + "is working");
	        this.money += pay;
	    };
	
	    void sing() {// 노래하기
	        System.out.println(this.name + "is singing: 랄랄라~");
	    };
	}</code>
    </pre>
	<img src="resources/img/inheri.png">

	<pre class="line-numbers">
    <code class="language-java">public class Main {
	    public static void main(String[] args) {
	
	        Programmer tom = new Programmer("tom", 25, "A");
	        Dog max = new Dog("max", 5);
	        Cat lily = new Cat("lily", 3);
	
	        // 다 함께 산책
	        tom.walk();
	        max.walk();
	        lily.walk();
	
	        // 운동 시간
	        tom.run();
	        max.run();
	        lily.jump();
	
	        // 톰은 돈을 벌어야 해요!
	        tom.work(1000);
	    }
	}</code>
    </pre>

	<p>정리하자면, <strong>상속</strong>이라는 개념은 클래스를 구성할 때 부모 클래스를 만들고 공통된 내용을 포함한 자식 클래스에 상속해주는 것을 의미한다.
	</p>


</body>
</html>