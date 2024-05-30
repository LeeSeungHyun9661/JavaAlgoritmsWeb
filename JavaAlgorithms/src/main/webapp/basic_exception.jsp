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
		<h1>오류와 예외처리</h1>
	</div>
	<img src="resources/img/error.png" style="max-height: 50vh;">
	<p>프로그래머에게 오류는 가장 싫지만 동시에 가장 필요한 요소입니다. 모든 내용을 단 한번에 오류없이 작성할 수 있다면 좋겠지만 그럴수는 없죠. 끊임없이 오류를 만나고
		그 원인을 파악하는 과정은 필수적인 사항입니다.</p>
	<p>자바에서도 오류는 계속 나타납니다. 이러한 오류는 다양한 원인에 의해 나타납니다. 우리가 해야 할 일은 이러한 오류를 잘 파악하고 그에 대처하는 방법입니다. 이번엔
		오류와 예외처리에 대해 알아봅시다.</p>


	<ol>
		<li><strong>오류 (Error)</strong>
			<p><strong>오류(Error)</strong>는 주로 JVM(Java Virtual Machine)에서 발생하며, 시스템 수준의 심각한 문제를 나타냅니다.
				일반적으로 이러한 오류는 애플리케이션 레벨에서 잡아서 처리할 수 없습니다. 대부분의 경우, 오류는 프로그램의 비정상 종료를 초래하며, 개발자가 이를 직접 처리하려고
				시도하기보다는, 오류를 방지할 수 있는 방법을 찾아야 합니다. 대표적인 오류들에는 이러한것들이 있습니다.</p>
			<ul>
				<li><code>StackOverflowError</code>: 무한 재귀 호출로 인해 스택이 넘치는 경우 발생.
					<div class="col">
						<div>
							<pre class="line-numbers">
<code class="language-java">public class ErrorExample {
 public static void main(String[] args) {
     causeStackOverflowError();
 }

 public static void causeStackOverflowError() {
        causeStackOverflowError();
    }        
}</code>
            </pre>
						</div>
						<div>
							<img src="resources/img/stackoverflowerror.png">
						</div>
					</div></li>
				<li><code>OutOfMemoryError</code>: JVM이 더 이상 메모리를 할당할 수 없는 경우 발생.</li>
			</ul></li>

		<li><strong>예외 (Exception)</strong>
			<p><strong>예외(Exception)</strong>는 프로그램에서 발생할 수 있는 문제를 나타내며, 대부분의 예외는 개발자가 적절히 처리할 수 있습니다.
				예외는 다시 <strong>체크 예외(Checked Exception)</strong>와 <strong>언체크 예외(Unchecked Exception)</strong>로
				나뉩니다.</p>

			<ul>
				<li><strong>체크 예외 (Checked Exception)</strong>
					<p>체크 예외는 컴파일 시점에 반드시 처리해야 하는 예외입니다. 주로 외부 환경(파일, 네트워크 등)과의 상호작용에서 발생하는 예외가 해당됩니다.</p>

					<ul>
						<li><code>IOException</code>: 파일 읽기/쓰기 중 발생하는 예외.
							<div class="col">
								<div>
									<pre class="line-numbers">
<code class="language-java">import java.io.FileReader;
import java.io.IOException;

public class CheckedExceptionExample {
    public static void main(String[] args) {
        try {
            FileReader file = new FileReader("nonexistentfile.txt");
        } catch (IOException e) {
            System.out.println("파일을 읽을 수 없습니다: " + e.getMessage());
        }
    }
}</code>
            </pre>
								</div>
								<div>
									<img src="resources/img/ioexceptionerror.png">
								</div>
							</div></li>
						<li><code>SQLException</code>: 데이터베이스 작업 중 발생하는 예외.</li>
					</ul></li>

				<li><strong>언체크 예외 (Unchecked Exception)</strong>
					<p>언체크 예외는 런타임 시점에 발생하며, 개발자가 반드시 처리하지 않아도 되는 예외입니다. 주로 프로그래머의 실수로 인해 발생하는 경우가 많습니다.</p>
					<ul>
						<li><code>NullPointerException</code>: null 참조를 역참조할 때 발생.</li>
						<li><code>ArrayIndexOutOfBoundsException</code>: 배열의 잘못된 인덱스를 참조할 때 발생.
							<div class="col">
								<div>
									<pre class="line-numbers">
 <code class="language-java">public class UncheckedExceptionExample {
    public static void main(String[] args) {
        String str = null;
        try {
            System.out.println(str.length());
        } catch (NullPointerException e) {
            System.out.println("Null 객체의 메서드를 호출했습니다: " + e.getMessage());
        }
    }
}</code>
            </pre>
								</div>
								<div>
									<img src="resources/img/nullerror.png">
								</div></li>
					</ul></li>
			</ul></li>

		<li><strong>예외 처리 키워드</strong>

			<ul>
				<li><strong>try-catch</strong>
					<p>예외가 발생할 가능성이 있는 코드를 <code>try</code> 블록에 작성하고, 예외가 발생했을 때의 처리를 <code>catch</code> 블록에
						작성합니다.
				</p> <pre class="line-numbers">
<code class="language-java">try {
    // 예외가 발생할 가능성이 있는 코드
} catch (ExceptionType e) {
    // 예외 처리 코드
}</code>
                    </pre></li>

				<li><strong>finally</strong>
					<p><code>finally</code> 블록은 예외 발생 여부와 관계없이 항상 실행됩니다. 주로 자원 해제 코드를 작성할 때 사용됩니다.</p> <pre
						class="line-numbers">
<code class="language-java">try {
    // 예외가 발생할 가능성이 있는 코드
} catch (ExceptionType e) {
    // 예외 처리 코드
} finally {
    // 항상 실행되는 코드
}</code>
                    </pre></li>

				<li><strong>throw</strong>
					<p>직접 예외를 발생시킬 때 사용합니다.</p> <pre class="line-numbers">
<code class="language-java">public void checkAge(int age) {
    if (age < 18) {
        throw new IllegalArgumentException("나이는 18세 이상이어야 합니다.");
    }
}</code>
                    </pre></li>

				<li><strong>throws</strong>
					<p>메서드가 처리하지 않고 호출한 쪽으로 예외를 전달할 때 사용합니다.</p> <pre class="line-numbers">
<code class="language-java">public void readFile(String fileName) throws IOException {
    FileReader file = new FileReader(fileName);
}</code>
                    </pre></li>
			</ul></li>

		<li><strong>사용자 정의 예외</strong>
			<p>개발자는 필요에 따라 사용자 정의 예외를 만들 수 있습니다. 사용자 정의 예외는 <code>Exception</code> 클래스를 상속받아 정의합니다.
		</p> <pre class="line-numbers">
<code class="language-java">class MyException extends Exception {
    public MyException(String message) {
        super(message);
    }
}

public class Main {
    public static void main(String[] args) {
        try {
            throw new MyException("사용자 정의 예외 발생");
        } catch (MyException e) {
            System.out.println("예외 처리: " + e.getMessage());
        }
    }
}</code>
            </pre></li>

		<li><strong>예외 처리 주의 사항</strong>
			<ul>
				<li><strong>적절한 예외 처리</strong>: 가능한 한 구체적인 예외를 잡아서 처리합니다.</li>
				<li><strong>예외 정보 기록</strong>: 예외 발생 시 로그를 남겨서 문제를 추적할 수 있도록 합니다.</li>
				<li><strong>자원 해제</strong>: <code>finally</code> 블록을 사용하여 파일, 네트워크 연결 등 자원을 적절히 해제합니다.</li>
				<li><strong>사용자 정의 예외</strong>: 의미 있는 예외를 정의하여 특정 상황에 맞는 예외 처리를 합니다.</li>
			</ul>
			<p>자바의 예외처리 메커니즘을 잘 활용하면 프로그램의 안정성을 높이고, 예상치 못한 상황에서도 적절히 대응할 수 있습니다.</p></li>
	</ol>



</body>
</html>