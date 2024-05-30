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
		<h1>Static</h1>
	</div>
	<p>변수의 복사에 대해 설명하며 Static 변수가 메소드 영역에 저장된다는 설명을 드렸습니다. 따라서 프로그램 시작과 동시에 생성되고 프로그램이 종료될 때 까지
		유지됩니다. 특정 클래스의 인스턴스들이 공통적으로 사용할 수 있습니다. 즉 <strong>static 키워드는 클래스 멤버(변수와 메소드)에 사용되어 그 멤버가
			클래스 레벨에서 접근 가능하게 만듭니다.</strong> 이는 객체 인스턴스가 아닌 클래스 자체에 속하게 됩니다.
	</p>

	<ol>
		<li>정적 변수 (Static Variable)
			<p>정적 변수는 클래스에 하나만 존재하며, 모든 인스턴스가 공유합니다.</p>
			<ul>
				<li>클래스 로딩 시 메모리에 할당됩니다.</li>
				<li>모든 인스턴스가 동일한 값을 공유합니다.</li>
				<li>인스턴스 생성 없이 클래스명으로 직접 접근할 수 있습니다.</li>
			</ul> <pre class="line-numbers">
	<code class="language-java">public class Example {
	    public static int staticVar = 0;
	
	    public void increment() {
	        staticVar++;
	    }
	
	    public static void main(String[] args) {
	        Example obj1 = new Example();
	        Example obj2 = new Example();
	        
	        obj1.increment();
	        obj2.increment();
	        
	        System.out.println(Example.staticVar); // 출력: 2
	    }
	}</code>
			</pre>
		</li>
		<li>정적 메소드 (Static Method)
			<p>정적 메소드는 인스턴스와 무관하게 클래스에 속하며, 정적 변수에 접근하거나 정적 메소드를 호출할 때 사용됩니다.</p>
			<ul>
				<li>인스턴스 변수나 인스턴스 메소드를 직접 사용할 수 없습니다.</li>
				<li>클래스명으로 직접 호출할 수 있습니다.</li>
			</ul> <pre class="line-numbers">
	<code class="language-java">public class MathUtils {
	    public static int add(int a, int b) {
	        return a + b;
	    }
	
	    public static void main(String[] args) {
	        int sum = MathUtils.add(5, 3);
	        System.out.println(sum); // 출력: 8
	    }
       }</code>
			</pre>
		</li>
		<li>정적 블록 (Static Block)
			<p>정적 블록은 클래스가 메모리에 로드될 때 한 번 실행되며, 주로 정적 변수를 초기화하는 데 사용됩니다.</p> <pre class="line-numbers">
	<code class="language-java">public class StaticBlockExample {
	    public static int staticVar;
	
	    static {
	        staticVar = 10;
	        System.out.println("Static block executed.");
	    }
	
	    public static void main(String[] args) {
	        System.out.println(StaticBlockExample.staticVar); // 출력: 10
	    }
	}</code>
			</pre>
		</li>
		<li>정적 내부 클래스 (Static Nested Class)
			<p>정적 내부 클래스는 외부 클래스의 인스턴스와 무관하게 동작할 수 있습니다.</p> <pre class="line-numbers">
	<code class="language-java">public class OuterClass {
	    static class InnerClass {
	        void display() {
	            System.out.println("Static Inner Class");
	        }
	    }
	
	    public static void main(String[] args) {
	        OuterClass.InnerClass inner = new OuterClass.InnerClass();
	        inner.display(); // 출력: Static Inner Class
	    }
	}</code>
			</pre>
		</li>
	</ol>
	<code></code>
	<p><code>static</code>은 편리하지만 메모리에 계속 남아있습니다. 따라서 <code>static</code>의 너무 많은 사용은 프로그램 메모리 사용량을
		증가시키고 자주 사용하지 않을 경우 메모리 누수의 원인이 될 수 있습니다.</p>
</body>
</html>