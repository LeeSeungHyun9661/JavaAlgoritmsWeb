<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Sorting Algorithms</title>
</head>
<body>
	<div>
		<div
			class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
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


</body>
</html>