<?php
$db = mysqli_connect ('localhost', 'root', '', 'shot-1');
if (isset($_POST['submit'])){
	$username = mysqli_real_escape_string($db, trim($_POST['username']));
	$password1 = mysqli_real_escape_string($db, trim($_POST['password1']));
	$password2 = mysqli_real_escape_string($db, trim($_POST['password2']));
	if(!empty($username) && !empty($password1) && !empty($password2) && $password1 == $password2 ) {
		$query = "SELECT * FROM `signup` WHERE username == '$username'";
		$data = mysqli_query ($db, $query);	
		if(mysqli_num_rows($data) == 0) {
			$query = "INSERT INTO `signup` (id, username, password) VALUES (NULL, '$username', SHA('$password1'))";
			mysqli_query($db, $query);
			echo 'Готово, можете ввойти';
			mysqli_close($db);
			exit();
		}
			else {
				echo "Логин существует";
			}
		}
	}
?>

<!DOCTYPE html>
<HTML>
<head>
	<meta charser="utf-8">
	<link href="style/style.css" rel="stylesheet">
</head>
<body>

<header>
<ul>
	<li><a href="/">Главная</a></li>
	<li><a href="/">Новости</a></li>
	<li><a href="/">Журнал</a></li>
	<li><a href="/">Обратная связь</a></li>
</ul>
</header>
<content>

	<form method="POST" action = "<?php echo $_SERVER['PHP_SELF']; ?>">	
		<lable for="username">Введите логин</lable>
	<input type="text" name="username">
		<lable for="password1">Введите пароль</lable>
	<input type="password" name="password1">
		<lable for="password2">Введите пароль еще раз</lable>
	<input type="password" name="password2">
	<button type="submit" name="submit">Вход</button>
</form>
</content>	
	<?php
	
	
	?>

<folder class="clear">
	<p>Все права защищены</p>
</folder>
</content>
</body>
</HTML>