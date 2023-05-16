<%@ page pageEncoding="UTF-8" %>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../../css/crucigrama2.css">
</head>
<body>


<form action="/front/servlet-check-crucigrama2">
<table class="crucigrama2 mt80">
	<tbody>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td><strong>3</strong></td>
		<td></td>
		<td><strong>4</strong></td>
		<td></td>
		<td><strong>5</strong></td>
		<td></td>
		<td><strong>6</strong></td>
	</tr>
	<tr>
		<td></td>
		<td><strong>2</strong></td>
		<td></td>
		<td><input id="p3-1" name="p3-1" maxlength="1"></td>
		<td></td>
		<td><input id="p4-1" name="p4-1" maxlength="1"></td>
		<td></td>
		<td><input id="p5-1" name="p5-1" maxlength="1"></td>
		<td></td>
		<td><input id="p6-1" name="p6-1" maxlength="1"></td>
	</tr>
	<tr>
		<td><strong>1</strong></td>
		<td><input type="text" id="p2-1" name="p2-1"></td>
		<td><input id="p1-2" name="p1-2" maxlength="1"></td>
		<td><input id="p3-2" name="p3-2" maxlength="1"></td>
		<td><input id="p1-4" name="p1-4" maxlength="1"></td>
		<td><input id="p4-2" name="p4-2" maxlength="1"></td>
		<td><input id="p1-6" name="p1-6" maxlength="1"></td>
		<td><input id="p5-2" name="p5-2" maxlength="1"></td>
		<td><input id="p1-8" name="p1-8" maxlength="1"></td>
		<td><input id="p6-2" name="p6-2" maxlength="1"></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="text" id="p2-2" name="p2-2"></td>
		<td></td>
		<td><input id="p3-3" name="p3-3" maxlength="1"></td>
		<td></td>
		<td><input id="p4-3" name="p4-3" maxlength="1"></td>
		<td></td>
		<td><input id="p5-3" name="p5-3" maxlength="1"></td>
		<td></td>
		<td><input id="p6-3" name="p6-3" maxlength="1"></td>
	</tr>
	<tr>
		<td></td>
		<td><input id="p2-3" name="p2-3" maxlength="1"></td>
		<td></td>
		<td><input id="p3-4" name="p3-4" maxlength="1"></td>
		<td></td>
		<td></td>
		<td></td>
		<td><input id="p5-4" name="p5-4" maxlength="1"></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td><input id="p3-5" name="p3-5" maxlength="1"></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td><input id="p3-6" name="p3-6" maxlength="1"></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
	<tr><td><button type="submit" class="enviar">Enviar</button></td></tr>

	</tbody>

</table>
</form>


<div id="respuestas">
	<label for="palabra1">Cocodrilo</label> <input type="text" id="palabra1">
	<label for="palabra2">Gato</label> <input type="text" id="palabra2">
	<label for="palabra3">Mono</label> <input type="text" id="palabra3">
	<label for="palabra4">Perro</label> <input type="text" id="palabra4">
	<label for="palabra2">Pájaro</label> <input type="text" id="palabra5">
	<label for="palabra2">Mascota</label> <input type="text" id="palabra6">

</div>

<script>
	const palabra1 = document.getElementById('palabra1');
	const palabra2 = document.getElementById('palabra2');
	const palabra3 = document.getElementById('palabra3');
	const palabra4 = document.getElementById('palabra4');
	const palabra5 = document.getElementById('palabra5');
	const palabra6 = document.getElementById('palabra6');
	palabra1.maxLength = 9;
	palabra2.maxLength = 3;
	palabra3.maxLength = 6;
	palabra4.maxLength = 3;
	palabra5.maxLength = 4;
	palabra6.maxLength = 3;



	const palabras1 = [
		document.getElementById('p2-1'),
		document.getElementById('p1-2'),
		document.getElementById('p3-2'),
		document.getElementById('p1-4'),
		document.getElementById('p4-2'),
		document.getElementById('p1-6'),
		document.getElementById('p5-2'),
		document.getElementById('p1-8'),
		document.getElementById('p6-2')
	];
	const palabras2 = [
		document.getElementById('p2-1'),
		document.getElementById('p2-2'),
		document.getElementById('p2-3')
	];
	const palabras3 = [
		document.getElementById('p3-1'),
		document.getElementById('p3-2'),
		document.getElementById('p3-3'),
		document.getElementById('p3-4'),
		document.getElementById('p3-5'),
		document.getElementById('p3-6')
	];
	const palabras4 = [
		document.getElementById('p4-1'),
		document.getElementById('p4-2'),
		document.getElementById('p4-3')
	];
	const palabras5 = [
		document.getElementById('p5-1'),
		document.getElementById('p5-2'),
		document.getElementById('p5-3'),
		document.getElementById('p5-4')
	];
	const palabras6 = [
		document.getElementById('p6-1'),
		document.getElementById('p6-2'),
		document.getElementById('p6-3')
	];

	palabra1.addEventListener('input', () => {
		const text1 = palabra1.value;

		for (let i = 0; i < text1.length; i++) {
			if (i < palabras1.length) {
				palabras1[i].value = text1[i];
			}
		}
	});

	palabra2.addEventListener('input', () => {
		const text2 = palabra2.value;



		for (let i = 0; i < text2.length; i++) {
			if (i < palabras2.length) {
				palabras2[i].value = text2[i];
			}
		}
	});
	palabra3.addEventListener('input', () => {
		const text3 = palabra3.value;



		for (let i = 0; i < text3.length; i++) {
			if (i < palabras3.length) {
				palabras3[i].value = text3[i];
			}
		}
	});
	palabra4.addEventListener('input', () => {
		const text4 = palabra4.value;



		for (let i = 0; i < text4.length; i++) {
			if (i < palabras4.length) {
				palabras4[i].value = text4[i];
			}
		}
	});
	palabra5.addEventListener('input', () => {
		const text5 = palabra5.value;



		for (let i = 0; i < text5.length; i++) {
			if (i < palabras5.length) {
				palabras5[i].value = text5[i];
			}
		}
	});
	palabra6.addEventListener('input', () => {
		const text6 = palabra6.value;



		for (let i = 0; i < text6.length; i++) {
			if (i < palabras6.length) {
				palabras6[i].value = text6[i];
			}
		}
	});
</script>


</body>
</html>