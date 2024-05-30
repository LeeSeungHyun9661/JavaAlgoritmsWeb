<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<div
		class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
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
		<li><strong>인스턴스(Instance)</strong>:클래스로 부터 생성된 객체로 클래스는 객체를 정의한 틀이고 실제 프로그램은 인스턴스를 통해 동작하게
			됩니다.
			<ul>
				<li>main() 메서드는 단지 프로그램을 실행하는 진입점이고 실제 클래스를 사용하려면 new() 연산을 통해 인스턴스를 생성해야 함</li>
				<li>main() 에서 클래스부에 선언된 변수(멤버)를 접근할 수 없으며 인스턴스를 통해 사용해야함(인스턴스 변수)</li>
				<li>인스턴스에서 변수와 메서드 사용은 인스턴스명.변수명, 인스턴스명, 메서드명과 같은 형식으로 사용</li>
			</ul></li>
		<li><strong>변수(Variable)</strong>:일반적인 프로그램언어의 변수와 같은 개념으로 하나의 값을 저장할 수 있는 저장공간을 뜻합니다.</li>
		<li><strong>메서드(Method)</strong>:일반적인 프로그램언어의 함수와 유사합니다. 함수는 단순한 기능을 모듈화 한것이지만 메서드는 객체의
			동작(행위)을 정의 합니다.</li>

		<li><strong>주석(Comment)</strong>:프로그램 실행에 아무 영향도 주지 않습니다. 코드에 대한 여러 설명과 메모의 역할을 합니다. 올바른 주석
			처리는 코드의 가독성을 높여줍니다.</li>
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


	<p>각 구성 요소에 대해 식별자는 규칙에 따라 작성되어야 합니다. 이미 지정되어 있는 식별자 코드와 충돌하지 않도록 하기 위해서죠. 어떠한 코드들은 이미 그 이름 자체에
		기능이 부여되어 있습니다.</p>
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




</body>
</html>