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
		<h1>객체지향 언어의 특징</h1>
	</div>

	<p>자바는 <strong>'객체 지향 프로그래밍 언어'</strong>입니다. <strong>객체(object)</strong>는 자바 언어의 모든 인스턴스의 기반이
		됩니다. 세상에 존재하는 것은 모두 객체에 해당합니다. 클래스는 이러한 객체를 잡아줄 수 있는 틀을 의미합니다. 클래스와 객체에 대한 개념과 이를 기반으로 하는 자바의 '객체
		지향적' 성격은 프로그래밍 언어를 이해하는데 핵심적인 역할을 합니다.
	</p>

	<p>객체 지향 언어의 네 가지 특징은 다음과 같습니다.</p>
	<div class="row">
		<img class="col-6" src="resources/img/oopfeature.png">
		<ol class="col-6">
			<li><strong>상속(Inheritance)</strong>
				<p>객체지향 언어는 새로운 클래스가 기존의 클래스를 기반으로 만들어질 수 있게 합니다. 이를 통해 코드 재사용성을 높이고, 계층 구조를 통해 클래스 간의 관계를
					정의할 수 있습니다. 자식 클래스는 부모 클래스의 속성과 메소드를 상속받아 사용할 수 있으며, 필요에 따라 이를 확장하거나 수정할 수 있습니다.</p></li>
			<li><strong>캡슐화(Encapsulation)</strong>
				<p>객체지향 언어는 데이터와 데이터를 처리하는 메소드를 하나의 객체로 묶어 관리합니다. 이를 통해 데이터의 접근을 제한하고, 객체의 내부 상태를 외부에서 직접
					접근하지 못하도록 보호합니다. 이는 정보 은닉(Information Hiding)이라고도 불리며, 객체 간의 상호 작용은 공개된 메소드를 통해서만 이루어집니다.</p></li>
			<li><strong>다형성(Polymorphism)</strong>
				<p>다형성은 동일한 인터페이스를 통해 서로 다른 데이터 타입을 처리할 수 있는 능력을 의미합니다. 객체지향 언어에서는 주로 메소드 오버로딩(Method
					Overloading)과 메소드 오버라이딩(Method Overriding)을 통해 다형성을 구현합니다. 이는 동일한 메소드 이름이 상황에 따라 다른 동작을 하도록 할 수
					있게 해줍니다.</p></li>
			<li><strong>추상화(Abstraction)</strong>
				<p>추상화는 복잡한 시스템으로부터 불필요한 세부 사항을 숨기고, 중요한 부분만을 노출하여 간단하게 만드는 개념입니다. 객체지향 언어에서는 추상
					클래스(Abstract Class)와 인터페이스(Interface)를 통해 추상화를 구현할 수 있습니다. 이를 통해 구현 세부 사항을 숨기고, 구현 객체 간의 상호 작용을
					단순화할 수 있습니다.</p></li>
		</ol>
	</div>
	<p>복잡한 내용입니다. 하지만 이러한 내용을 하나하나 살펴보게 된다면 자바가 얼마나 유용하고 견고한 언어인지 알게될 것입니다.</p>

	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>클래스</h1>
	</div>
	<p>여기 차량에 대한 정보가 있습니다. 네 대의 차량이 존재하며 이름, 차종, 제조사, 가격과 같은 성격을 가지고 있습니다.</p>
	<div class="row">
		<div class="col-6">
			<pre class="line-numbers">
    <code class="language-java">String car1_name = "A";
    String car1_type = "Van";
    String car1_company = "aCompany";
    int car1_price = 150;

    String car2_name = "B";
    String car2_type = "Sedan";
    String car2_company = "bCompany";
    int car2_price = 200;

    String car3_name = "C";
    String car3_type = "Truck";
    String car3_company = "aCompany";
    int car3_price = 100;

    String car4_name = "D";
    String car4_type = "Sedan";
    String car4_company = "cCompany";
    int car4_price = 180;</code>
    </pre>
		</div>
		<img class="col-6" src="resources/img/4car.png">
	</div>

	<p>각각의 차량에 대해 개별적인 변수를 선언할 수 있습니다. 네? 100대의 차량이요? 그럼 100번 추가하면 됩니다. 네? 20만대요? 맙소사 다른 방법을 찾아야
		합니다. 하나의 대상에 대한 변수를 효율적으로 관리할 수 있는 <strong>틀</strong>이 필요합니다.
	</p>

	<ol>
		<li><strong>클래스 생성</strong>
			<p>클래스의 기본 구조는 다음과 같습니다.</p> <pre class="line-numbers">
    <code class="language-java">public class ClassName {
	    // 필드 (멤버 변수)
	    dataType fieldName;
	
	    // 메서드
	    returnType methodName(parameters) {
	        // 메서드 몸체
	    }
	}</code>
    </pre>
			<p>이번엔 클래스를 통해 차량에 대한 틀을 만들고 이를 기반으로 인스턴스를 선언해봅시다.</p> <pre class="line-numbers">
    <code class="language-java">class Car {
        String name;
        String type;
        String company;
        int price;
    }
    
    public class Main {
        public static void main(String[] args) {
            Car car1 = new Car();
        }

    }</code>
    </pre></li>
		<li><strong>클래스 생성자</strong>
			<p>클래스는 인스턴스로써 생성될 때 초기 변수와 행동을 지정할 수 있습니다. 이는 클래스의 생성자를 통해 구현됩니다. 클래스는 기본생성자를 가지고 있으며 구조는 <code>
					클래스이름(){}</code>로 설정되어 있습니다. 이는 아무 매개변수도 받지 않음을 의미합니다. 그렇다면 <code>Car</code> 클래스가 생성자로 초기 값을 받을 수 있도록
				만들어봅시다.
		</p> <pre class="line-numbers">
    <code class="language-java">class Car {
	    String name;
	    String type;
	    String company;
	    int price;
	
	    public Car(String name, String type, String company, int price) { // 생성자
	        this.name = name;
	        this.type = type;
	        this.company = company;
	        this.price = price;
	
	    }
	}
    
    public class Main {
        public static void main(String[] args) {
            Car car1 = new Car("A", "Van", "aCompany", 150); // 객체 선언과 동시에 생성자를 통해 클래스 변수 선언;
        }

    }</code>
    </pre>
			<p><code>Car</code> 클래스는 인스턴스로 생성될 때 생성자와 같이 매개변수를 전달 받습니다. 전달받은 매개변수는 클래스 변수에 저장하는데 <code>this.</code>
				키워드를 통해 해당 클래스 변수에 접근하고 값이 저장됩니다. 생성자에 유의해야 할 점은 다음과 같습니다.</p>
			<ul>
				<li>생성자의 이름은 클래스와 같아야 합니다.</li>
				<li>반환 타입을 명시하지 않습니다.</li>
				<li>생성자는 여러 개 만들수 있습니다.</li>
				<li>생성자에서 초기화가 필요한 모든 필드를 초기화하는 것이 좋습니다.</li>
			</ul> <br>
			<p>생성자의 경우 여러개 만들수 있으며, 하나의 생성자만 있을 경우 기본 생성자를 대체합니다. 이러한 점을 활용해 다양한 초기값 유형에 대해 대처할 수 있습니다.</p> <pre
				class="line-numbers">
    <code class="language-java">class Car {
        String name;
        String type;
        String company;
        int price;
        // 생성자 1
        public Car(String name, String type, String company, int price) {
            this.name = name;
            this.type = type;
            this.company = company;
            this.price = price;
    
        }        
        // 생성자 2
        public Car(String name, String company) {
            this.name = name;
            this.type = "Truck";
            this.company = company;
            this.price = 300;
    
        }
    }
    
    public class Main {
        public static void main(String[] args) {
            Car car1 = new Car("A", "Van", "aCompany", 150); // 생성자 1에 따라 초기값 지정 
            Car car2 = new Car("B", "bCompany"); // 생성자 2에 따라 초기값 지정
        }

    }</code>
    </pre></li>
		<li><strong>클래스 사용</strong>
			<p>이제 생성된 클래스 객체를 사용해보자 객체에서 값을 받아오는 방법은 다음과 같습니다.</p> <pre class="line-numbers">
    <code class="language-java">Class Car {
	    String name;
	    String type;
	    String company;
	    int price;
	
	    public Car(String name, String type, String company, int price) {
	        this.name = name;
	        this.type = type;
	        this.company = company;
	        this.price = price;	
	    }
	
	    public void sale(int salePrice) { //입력된 가격만큼 할인
	        this.price -= salePrice;
	    }
	}
    
    public class Main {
        public static void main(String[] args) {
	        System.out.println("car1 name is" + car1.name);
	        System.out.println("car1 price is" + car1.price);	
	        car1.sale(30);
	        System.out.println("car1 discounted price is " + car1.price);
        }

    }</code>
    </pre> <code>.</code>은 내부 클래스 변수나 메서드에 접근하기 위해 사용할 수 있습니다. 하지만 언제나 사용 가능한 것이 아닌데 이는 클래스 접근자에 의해 제어될 수
			있기 때문입니다.</li>
		<li><strong>클래스 접근 제어자</strong>
			<p>클래스 내부의 모든 변수와 메서드에 접근할 수 있다는 점은 불필요한 내부 구현을 드러내고 외부와의 연결에 혼란을 초래할 수 있습니다. 올바르지 않은 내부 접근은
				코드의 안정성을 해치기도 합니다. 이를 방지하기 위해 접근제어자를 사용해 클래스 내부 메서드나 변수에 접근을 제어할 수 있습니다.</p>

			<ol>
				<li><code>public</code>: 어디서든 접근할 수 있습니다. 클래스, 인터페이스, 메서드, 필드 등에 사용됩니다.</li>
				<li><code>protected</code>: 같은 패키지 내의 클래스와 서브 클래스(상속받은 클래스)에서 접근할 수 있습니다. 클래스 외부에서는 접근할 수
					없지만, 상속받은 클래스에서는 접근할 수 있습니다. 주로 상속 관계에서 사용됩니다.</li>
				<li><code>default</code> (패키지 프라이빗, 명시적 키워드 없음): 같은 패키지 내의 클래스에서만 접근할 수 있습니다. 접근 제어자를 명시하지
					않으면 기본적으로 <code>default</code> 접근 수준이 적용됩니다.</li>
				<li><code>private</code>: 같은 클래스 내에서만 접근할 수 있습니다. 외부 클래스나 서브 클래스에서는 접근할 수 없습니다. 가장 제한적인 접근
					수준입니다.</li>
			</ol>
			<div class="row">
				<div class="col-6">
					<pre class="line-numbers">
<code class="language-java">package myPackage;

public class MyClass {
    //default 수준의 접근
    int defaultField;
    void defaultMethod() {}
    
    //public 수준의 접근
    public int publicField;
    public void publicMethod() {}        
    
    //protected 수준의 접근
    protected int protectedField;
    protected void protectedMethod() {}    

    //private 수준의 접근    
    private int privateField;
    private void privateMethod() {}
}</code>
                    </pre>
				</div>
				<div class="col-6">
					<pre class="line-numbers">
<code class="language-java">package myPackage;// 동일한 패키지
public class otherClass {
	 public static void main(String[] args) {
	    MyClass myClass = new MyClass();
	    // 동일 패키지에 대한 defalut 접근 가능!
	    myClass.defaultField;
	 }
}</code>
                    </pre>

					<pre class="line-numbers">
<code class="language-java">public class subClass extends MyClass{
    // MyClass를 상속하는 클래스
     public static void main(String[] args) {
        MyClass myClass = new MyClass();
        // 상속 클래스 protected 접근 가능!
        myClass.protectedField;
     }
}</code>
                    </pre>
				</div>
			</div></li>
	</ol>
</body>
</html>