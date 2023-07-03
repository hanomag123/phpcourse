<?php
$accessValue = ['login' => 'admin', 'password' => 'admin'];
$error = false;
$requiredLogin = false;
$requiredPassword = false;

print_r($_POST);

if (isset($_POST['login'], $_POST['password'])) {
  $login = $_POST['login'];
  $password = $_POST['password'];


  if ($login === '') {
    $requiredLogin = true;
  } else if ( $password === '') {
    $requiredPassword = true;
  }else if ($login === $accessValue['login'] && $password === $accessValue['password']) {
    header('Location: ./home.php');
  } else {
    $error = true;
  }

}
?>

<html>

<head>
  <title>Форма для логина</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>

<body>
  <div class="container">
    <h1 class="display-4 mt-4 pb-4 text-center" style="font-size:40px">Задача 4 - Форма для логина</h1>
    <p class="display-10">Создать скрипт “login.php” с формой, со следующими полями: логин, пароль, кнопка “Войти”. В коде есть “проходная” пара значений “admin” - “admin”, после ввода которой кнопка “Войти” перенаправляет на другой скрипт “home.php”, который выводит на страницу текст “Добро пожаловать”. Иначе над полями формы красным цветом выводится текст “Совпадения по введенным логину/паролю не найдены, попробуйте что-нибудь еще.” После перезагрузки страницы содержимое поля логина должно быть равно ранее отправленному значению. До анализа значений полей нужно сделать проверку, что они не пусты. В случае пустоты вывести рядом с соответствующим полем текст, что это поле обязательно для заполнения.</p>
    <form method="post">
      <div class="form-group">
        <label for="exampleInputPassword1">логин</label>
        <?= $error ? '<div style="color: red;">Совпадения по введенным логину/паролю не найдены, попробуйте что-нибудь еще.</div>' : '' ?>
        <input type="text" class="form-control" name='login' id="exampleInputPassword1" value="<?=  isset($_POST['login']) ? $_POST['login'] : '' ?>">
        <?= $requiredLogin ? '<div style="color: red;">Данное поле обязательно для заполнения</div>' : '' ?>
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">пароль</label>
        <?= $error ? '<div style="color: red;">Совпадения по введенным логину/паролю не найдены, попробуйте что-нибудь еще.</div>' : '' ?>
        <input type="text" class="form-control" name="password" id="exampleInputEmail1" value="">
        <?= $requiredPassword ? '<div style="color: red;">Данное поле обязательно для заполнения</div>' : '' ?>
      </div>
      <button type="submit" class="btn btn-primary">Войти</button>
    </form>


  </div>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>

</html>