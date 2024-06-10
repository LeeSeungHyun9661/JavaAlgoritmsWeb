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
		<h1>추상화</h1>
	</div>
	<p>자바에서 추상화(Abstraction)는 객체 지향 프로그래밍의 중요한 개념 중 하나로, 복잡한 시스템을 단순화하여 이해하기 쉽도록 만드는 과정입니다. 추상화는
		구체적인 구현 세부 사항을 숨기고, 필요한 기능이나 특성만을 노출함으로써 사용자에게 편리한 인터페이스를 제공합니다. 이를 통해 코드를 보다 읽기 쉽게 만들고 유지보수를 용이하게
		합니다.</p>
	<p>자바에서 추상화를 구현하는 두 가지 주요 도구는 추상 클래스(Abstract Class)와 인터페이스(Interface)입니다.</p>

	<h3>추상 클래스</h3>
	<p>추상 클래스는 하나 이상의 추상 메서드(구현이 없는 메서드)를 포함할 수 있는 클래스입니다. 추상 클래스는 객체를 직접 생성할 수 없으며, 이를 상속받은 하위
		클래스가 추상 메서드를 구현해야 합니다. 추상 클래스는 다음과 같은 특징을 가집니다.</p>
	<ul>
		<li><strong>공통 기능의 제공</strong>: 여러 하위 클래스에 공통으로 사용될 수 있는 메서드나 필드를 정의할 수 있습니다.</li>
		<li><strong>부분적인 구현</strong>: 일부 메서드는 구현하고, 일부 메서드는 추상 메서드로 남겨두어 하위 클래스에서 구현하게 할 수 있습니다.</li>
	</ul>

	<h3>인터페이스</h3>
	<p>인터페이스는 모든 메서드가 추상 메서드로만 이루어져 있는 구조입니다. 자바 8부터는 디폴트 메서드와 정적 메서드를 인터페이스에 포함할 수 있게 되었지만, 기본적으로
		인터페이스는 메서드의 서명(signature)만 정의하고 구현은 제공하지 않습니다. 인터페이스의 주요 특징은 다음과 같습니다.</p>
	<ul>
		<li><strong>다중 상속</strong>: 자바는 클래스의 다중 상속을 지원하지 않지만, 인터페이스는 여러 개를 구현할 수 있습니다.</li>
		<li><strong>계약(Contract) 역할</strong>: 특정 클래스가 어떤 메서드를 반드시 구현해야 하는지를 명시합니다.</li>
	</ul>


	<h3>추상화의 이점</h3>
	<ol>
		<li><strong>코드의 재사용성 증가</strong>: 추상 클래스와 인터페이스를 통해 공통의 기능을 정의하고 재사용할 수 있습니다.</li>
		<li><strong>유지보수 용이</strong>: 코드의 구조가 명확해져 변경이 필요할 때 특정 부분만 수정하면 되므로 유지보수가 쉽습니다.</li>
		<li><strong>유연성 향상</strong>: 인터페이스를 사용하여 다형성을 구현하면, 다양한 구현체를 교체하여 사용할 수 있어 코드의 유연성이 증가합니다.</li>
		<li><strong>캡슐화</strong>: 추상화는 세부 구현을 감추고 외부에 필요한 기능만 노출함으로써 캡슐화를 강화합니다.</li>
	</ol>
	<p>결론적으로, 추상화는 자바에서 중요한 설계 원칙으로, 복잡성을 줄이고 코드의 가독성과 유지보수성을 높이는 데 크게 기여합니다. 추상 클래스와 인터페이스를 적절히
		활용하면 더 구조적이고 유연한 프로그램을 작성할 수 있습니다.</p>


	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>캡슐화</h1>
	</div>
	<p>캡슐화(Encapsulation)는 객체 지향 프로그래밍의 핵심 개념 중 하나로, 객체의 데이터(상태)와 그 데이터를 조작하는 메서드(행동)를 하나의 단위로 묶는
		것을 의미합니다. 캡슐화를 통해 데이터의 접근을 제한하고, 객체 내부의 데이터 변조를 방지하여 코드의 안정성과 보안성을 높일 수 있습니다.</p>

	<ul>
		<li><strong>데이터 은닉(Data Hiding)</strong>: 객체의 내부 데이터를 외부에서 직접 접근하지 못하게 하여, 데이터를 보호하고 무결성을
			유지합니다.</li>
		<li><strong>공용 인터페이스 제공</strong>: 객체의 데이터를 조작할 수 있는 공용 메서드를 제공하여, 데이터의 접근과 변경을 제어합니다.</li>
	</ul>

	<h3>접근 제어자와 Getter, Setter</h3>
	<p>자바에서 캡슐화를 구현하는 방법은 주로 접근 제어자(Access Modifiers)를 사용하는 것입니다. 자바는 네 가지 주요 접근 제어자를 제공합니다:</p>
	<ul>
		<li><strong>public</strong>: 같은 클래스 내에서만 접근 가능합니다.</li>
		<li><strong>private</strong>: 같은 패키지 내에서만 접근 가능합니다.</li>
		<li><strong>protected</strong>: 같은 패키지 내 및 상속받은 클래스에서 접근 가능합니다.</li>
		<li><strong>default</strong>: 모든 클래스에서 접근 가능합니다.</li>
	</ul>

	<p>이러한 캡슐화를 통해 내부 데이터를 숨길 수 있습니다. 숨겨진 내부 데이터에 대한 호출과 변경의 경우 메서드를 활용합니다. 값의 호출은 Getter, 값의 변경은
		Setter 함수에 해당합니다.</p>
</body>
</html>