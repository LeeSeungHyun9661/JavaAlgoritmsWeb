<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Sorting Algorithms</title>
</head>
<body>

	<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
		<h1>입출력</h1>
	</div>

	<p>자바에서 입력과 출력(Input and Output, I/O)은 데이터의 읽기와 쓰기를 의미합니다. 자바는 다양한 I/O 작업을 지원하며, 이를 위해 <code>java.io</code> 패키지를 주로 사용합니다. 여기서는 콘솔 입력/출력, 파일 입력/출력, 그리고 네트워크 입력/출력에 대해 설명하겠습니다.
	</p>

	<h2>1. 콘솔 입력/출력</h2>
	<h3>콘솔 입력</h3>
	<p>콘솔에서 사용자로부터 입력을 받기 위해 <code>Scanner</code> 클래스를 사용할 수 있습니다. <code>Scanner</code> 클래스는 <code>java.util</code> 패키지에 포함되어 있습니다.
	</p>
	<pre class="line-numbers">
		<code class="language-java">import java.util.Scanner;
		
		public class ConsoleInputExample {
		    public static void main(String[] args) {
		        Scanner scanner = new Scanner(System.in);
		        System.out.print("Enter your name: ");
		        String name = scanner.nextLine();
		        System.out.println("Hello, " + name + "!");
		        scanner.close();
		    }
		}</code>
	</pre>
	<p>위 예제에서는 <code>Scanner</code> 객체를 사용하여 사용자의 이름을 입력받고, 입력된 이름을 출력합니다.
	</p>

	<h3>콘솔 출력</h3>
	<p>콘솔에 출력하기 위해 <code>System.out.println()</code> 메서드를 사용할 수 있습니다. 이 메서드는 인수를 출력한 후 줄바꿈을 추가합니다.
	</p>
	<pre class="line-numbers">
		<code class="language-java">public class ConsoleOutputExample {
		    public static void main(String[] args) {
		        System.out.println("Hello, world!");
		    }
		}</code>
	</pre>
	<p>위 예제에서는 "Hello, world!"를 콘솔에 출력합니다.</p>

	<h2>2. 파일 입력/출력</h2>
	<h3>파일 입력</h3>
	<p>파일로부터 데이터를 읽기 위해 <code>FileReader</code>와 <code>BufferedReader</code> 클래스를 사용할 수 있습니다.
	</p>
	<pre class="line-numbers">
		<code class="language-java">import java.io.BufferedReader;
		import java.io.FileReader;
		import java.io.IOException;
		
		public class FileInputExample {
		    public static void main(String[] args) {
		        try (BufferedReader reader = new BufferedReader(new FileReader("input.txt"))) {
		            String line;
		            while ((line = reader.readLine()) != null) {
		                System.out.println(line);
		            }
		        } catch (IOException e) {
		            e.printStackTrace();
		        }
		    }
		}</code>
	</pre>
	<p>위 예제에서는 <code>input.txt</code> 파일의 내용을 한 줄씩 읽어 콘솔에 출력합니다.
	</p>

	<h3>파일 출력</h3>
	<p>파일에 데이터를 쓰기 위해 <code>FileWriter</code>와 <code>BufferedWriter</code> 클래스를 사용할 수 있습니다.
	</p>
	<pre class="line-numbers">
		<code class="language-java">import java.io.BufferedWriter;
				import java.io.FileWriter;
				import java.io.IOException;
				
				public class FileOutputExample {
				    public static void main(String[] args) {
				        try (BufferedWriter writer = new BufferedWriter(new FileWriter("output.txt"))) {
				            writer.write("Hello,file!");
		            writer.newLine();
		            writer.write("This is a second line.");
		        } catch (IOException e) {
		            e.printStackTrace();
		        }
		    }
		}</code>
	</pre>
	<p>위 예제에서는 <code>output.txt</code> 파일에 두 줄의 텍스트를 씁니다.
	</p>

	<h2>3. 네트워크 입력/출력</h2>
	<p>자바에서는 <code>java.net</code> 패키지를 사용하여 네트워크를 통한 I/O를 수행할 수 있습니다. 여기서는 간단한 클라이언트-서버 예제를 통해 네트워크 I/O를 설명하겠습니다.
	</p>

	<h3>서버</h3>
	<p>서버는 특정 포트에서 클라이언트의 연결을 기다립니다.</p>
	<pre class="line-numbers">
		<code class="language-java">import java.io.*;
		import java.net.*;
		
		public class Server {
		    public static void main(String[] args) {
		        try (ServerSocket serverSocket = new ServerSocket(12345)) {
		            System.out.println("Server is listening on port 12345");
		            Socket socket = serverSocket.accept();
		            System.out.println("Client connected");
		
		            BufferedReader input = new BufferedReader(new InputStreamReader(socket.getInputStream()));
		            PrintWriter output = new PrintWriter(socket.getOutputStream(), true);
		
		            String message = input.readLine();
		            System.out.println("Received: " + message);
		            output.println("Hello, client!");
		
		            socket.close();
		        } catch (IOException e) {
		            e.printStackTrace();
		        }
		    }
		}</code>
	</pre>
	<p>위 예제에서는 서버가 포트 12345에서 클라이언트의 연결을 기다리고, 클라이언트로부터 메시지를 받아 응답을 보냅니다.</p>

	<h3>클라이언트</h3>
	<p>클라이언트는 서버에 연결하고 메시지를 보냅니다.</p>
	<pre class="line-numbers">
		<code class="language-java">import java.io.*;
		import java.net.*;
		
		public class Client {
		    public static void main(String[] args) {
		        try (Socket socket = new Socket("localhost", 12345)) {
		            PrintWriter output = new PrintWriter(socket.getOutputStream(), true);
		            BufferedReader input = new BufferedReader(new InputStreamReader(socket.getInputStream()));
		
		            output.println("Hello, server!");
		            String response = input.readLine();
		            System.out.println("Received: " + response);
		
		        } catch (IOException e) {
		            e.printStackTrace();
		        }
		    }
		}</code>
	</pre>
	<p>위 예제에서는 클라이언트가 서버에 연결하고 메시지를 보낸 후, 서버의 응답을 받아 출력합니다.</p>

	<h2>결론</h2>
	<p>자바에서 입력과 출력은 매우 중요한 기능이며, 콘솔, 파일, 네트워크 등 다양한 방식으로 데이터를 주고받을 수 있습니다. 각 상황에 맞는 I/O 클래스를 적절히 사용하여 프로그램의 데이터 처리 기능을 구현할 수 있습니다.</p>
</body>
</html>