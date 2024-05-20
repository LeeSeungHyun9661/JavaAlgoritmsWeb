
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h1>Introduction to Sorting Algorithms</h1>
</div>
<p>Welcome to our Sorting Algorithms page. On this page, you will find an introduction to various sorting algorithms, their principles, and how they are implemented in Java. Sorting algorithms are a fundamental concept in computer science, as they enable efficient organization and retrieval of data by arranging it in a specific order, such as ascending or descending.</p>

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h2>What is a Sorting Algorithm?</h2>
</div>

<p>A sorting algorithm is a method used to arrange data in a predetermined order. It is one of the most important problems in the field of computer science. Whether the data consists of numbers, words, or other types of information, it often needs to be sorted before use. The key to solving the sorting problem lies in how effectively the data can be sorted.</p>
<p>The primary reason for sorting data is to facilitate efficient searching. Computers often need to handle millions of data points, and databases theoretically need to manage an infinite amount of data. If the data to be searched is not sorted, only sequential search algorithms can be used. However, if the data is sorted, a variety of powerful algorithms can be employed. While data that requires frequent insertion and deletion may rely on sequential search due to the overhead of maintaining sorted order, in most cases, searching far outweighs the need for insertion and deletion. Thus, sorting is crucial for efficient searching.</p>


<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h2>Fast Search Through Sorting Algorithms</h2>
</div>
<p>The main advantage of sorted data is that when you pick an arbitrary value, all values to the right are guaranteed to be greater than or equal to it, and all values to the left are guaranteed to be less than or equal to it. This property allows for efficient searching algorithms like binary search. In binary search, the computer examines the middle value of the candidate range. If the target value is smaller, the left half is ignored; if larger, the right half is ignored.</p>
<p>For example, in a dataset of 4.3 billion sorted items, the worst-case scenario for finding a value (or determining it is absent) involves only 32 comparisons. With 33 comparisons, about 8.6 billion items can be searched. More advanced algorithms, like interpolation search (which estimates the position based on the percentage between the minimum and maximum values), can find the desired value with even fewer comparisons. The primary reason for performing sorting on computers is to enable efficient binary search on the data.</p>

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h2>Time Complexity</h2>
</div>

<p>Time complexity is a method used to analyze the performance of algorithms. Different sorting algorithms perform differently under various conditions. While the absolute execution time can vary based on the user's computer, the relative time complexity depends on the algorithm used.</p>
<p>The types of time complexity are as follows:</p>
<ul>
	<li>
		<strong>Every-Case Time Complexity (<i>T</i>(<i>n</i>))
		</strong>: The number of operations an algorithm performs for input size <i>n</i>. Depends solely on the input size and is constant for any input values.
	</li>
	<li>
		<strong>Worst Case Time Complexity (<i>W</i>(<i>n</i>))
		</strong>: The maximum number of operations an algorithm performs for input size <i>n</i>. Depends on both the input size and input values, representing the maximum operations in the worst scenario.
	</li>
	<li>
		<strong>Best Case Time Complexity (<i>B</i>(<i>n</i>))
		</strong>: The minimum number of operations an algorithm performs for input size <i>n</i>. Depends on both the input size and input values, representing the minimum operations in the best scenario.
	</li>
	<li>
		<strong>Average Case Time Complexity (<i>A</i>(<i>n</i>))
		</strong>: The average number of operations an algorithm performs for input size <i>n</i>. Depends on both the input size and input values, representing the expected operations for all possible inputs.
	</li>
	<li>
		<strong>Big-O Notation</strong>: Big-O notation is used to describe the performance of an algorithm as <i>n</i> becomes very large. It is the most commonly used notation and follows the order:
		<ul>
			<li>
				<i>o</i>(1) &lt; <i>o</i>(log <i>n</i>) &lt; <i>o</i>(<i>n</i>) &lt; <i>o</i>(<i>n</i> log <i>n</i>) &lt; <i>o</i>(<i>n</i>²) &lt; <i>o</i>(<i>n</i>³) &lt; <i>o</i>(2<sup><i>n</i></sup>) &lt; <i>o</i>(<i>n</i>!)
			</li>
		</ul>
	</li>
</ul>

<table>
	<caption>Time Complexity of Sorting Algorithms</caption>
	<thead>
		<tr>
			<th>Algorithm</th>
			<th>Best Case</th>
			<th>Average Case</th>
			<th>Worst Case</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Bubble Sort</td>
			<td>O(n)</td>
			<td>O(n^2)</td>
			<td>O(n^2)</td>
		</tr>
		<tr>
			<td>Selection Sort</td>
			<td>O(n^2)</td>
			<td>O(n^2)</td>
			<td>O(n^2)</td>
		</tr>
		<tr>
			<td>Insertion Sort</td>
			<td>O(n)</td>
			<td>O(n^2)</td>
			<td>O(n^2)</td>
		</tr>
		<tr>
			<td>Merge Sort</td>
			<td>O(n log n)</td>
			<td>O(n log n)</td>
			<td>O(n log n)</td>
		</tr>
		<tr>
			<td>Quick Sort</td>
			<td>O(n log n)</td>
			<td>O(n log n)</td>
			<td>O(n^2)</td>
		</tr>
		<tr>
			<td>Heap Sort</td>
			<td>O(n log n)</td>
			<td>O(n log n)</td>
			<td>O(n log n)</td>
		</tr>
		<tr>
			<td>Tree Sort</td>
			<td>O(n log n)</td>
			<td>O(n log n)</td>
			<td>O(n^2)</td>
		</tr>
		<tr>
			<td>Tim Sort</td>
			<td>O(n log n)</td>
			<td>O(n log n)</td>
			<td>O(n log n)</td>
		</tr>
		<tr>
			<td>Radix Sort</td>
			<td>O(nk)</td>
			<td>O(nk)</td>
			<td>O(nk)</td>
		</tr>
		<tr>
			<td>Shell Sort</td>
			<td>O(n log n)</td>
			<td>Varies</td>
			<td>O(n^2)</td>
		</tr>
		<tr>
			<td>Bucket Sort</td>
			<td>O(n + k)</td>
			<td>O(n + k)</td>
			<td>O(n^2)</td>
		</tr>
		<tr>
			<td>Counting Sort</td>
			<td>O(n + k)</td>
			<td>O(n + k)</td>
			<td>O(n + k)</td>
		</tr>
	</tbody>
</table>

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h2>Sorting Algorithms</h2>
</div>

<p>Let's take a closer look at some common sorting algorithms:</p>

<ol>
	<li>
		<strong>Bubble Sort</strong>: A simple comparison-based algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order.
	</li>
	<li>
		<strong>Selection Sort</strong>: Divides the input list into a sorted and an unsorted region, repeatedly selects the smallest (or largest) element from the unsorted region, and moves it to the end of the sorted region.
	</li>
	<li>
		<strong>Insertion Sort</strong>: Builds the final sorted array one item at a time by iteratively placing each element in its correct position.
	</li>
	<li>
		<strong>Merge Sort</strong>: A divide-and-conquer algorithm that divides the input list into two halves, recursively sorts them, and then merges the two sorted halves.
	</li>
	<li>
		<strong>Quick Sort</strong>: A highly efficient sorting algorithm that works by selecting a 'pivot' element and partitioning the other elements into two sub-arrays, according to whether they are less than or greater than the pivot.
	</li>
	<li>
		<strong>Heap Sort</strong>: Converts the list into a binary heap data structure, then repeatedly extracts the maximum element from the heap and reconstructs the heap until no elements remain.
	</li>
	<li>
		<strong>Tree Sort</strong>: Builds a binary search tree from the input elements and then traverses the tree in-order to produce a sorted sequence.
	</li>
	<li>
		<strong>Tim Sort</strong>: A hybrid sorting algorithm derived from merge sort and insertion sort, designed to perform well on many kinds of real-world data.
	</li>
</ol>


<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
	<h2>Sorting Algorithms and Computer Science</h2>
</div>

<p>Sorting algorithms provide an excellent entry point for understanding computer science and algorithm design. They illustrate fundamental concepts such as data manipulation, algorithmic efficiency, and problem-solving strategies. Aspiring programmers and computer science enthusiasts can deepen their understanding of these concepts by studying sorting algorithms and their applications.</p>

<p>For non-specialists, sorting algorithms may seem trivial at first glance. However, developing highly effective sorting methods demands dedication, expertise, and innovation. Bill Gates' decades-long quest to develop groundbreaking sorting algorithms serves as a testament to the complexity and significance of these algorithms in computer science and beyond.</p>


<!-- Prism JS -->
<script src="../resources/js/prism.js"></script>



