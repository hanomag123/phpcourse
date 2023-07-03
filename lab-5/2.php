<?php function console(...$el){foreach ($el as $key => $value) {if ($key === 0 && !is_array($value)) {  echo '<hr>';}if (is_array($value)) {  echo '<hr><pre>';  print_r($value);  echo '</pre><hr>';} else {  if (gettype($value) === 'string') {    echo "<span style='color: green;'>" . $value . '</span> ';  } else if (gettype($value) === 'boolean') {    $value = $value ? 'true ' : 'false ';    echo "<span style='color: blue;'>" . $value . '</span>';  } else {    echo $value . ' ';  }  if ($key === count($el) - 1) {    echo '<br>';  }}}} ?>
<?php
 if (isset($_POST['doSend'])){
    $name = isset($_POST['user-name']) ? substr($_POST['user-name'], 0, 10) : '-';
    $email = isset($_POST['user-email']) ? substr($_POST['user-email'], 0, 20) : '-';
    $message = isset($_POST['user-message']) ? substr($_POST['user-message'], 0, 100) : '-';
    $output = "Пользователь $name с email'ом $email отправил следующее сообщение:<br/>$message";
    if (isset($_POST['returnType']) && $_POST['returnType'] === 'mail')
    {
        $result = mail('test@test.ru', 'My message', $output);
        if ($result === true){
            header('Location: success.php');
        }
    }
    else{
        header('Content-Disposition: attachment; filename="downloaded.txt"');
        echo $output;
        exit;
    }
 }
 if (isset($_FILES['resume'])) {
  $resume = $_FILES['resume'];
  $filename = $resume['name'];
  $filetype = $resume['type'];
  $filepath = $resume['full_path'];
  if ($filetype === 'png' || $filetype === 'jpg' || $filetype === 'pdf') {

  }
 }
 
?>
<html>
<head>
    <title>Форма</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1 class="display-4 mt-4 pb-4 text-center" style="font-size:40px">Пример с формой</h1>
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="exampleInputPassword1">Имя</label>
                <input type="text" name="user-name" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">E-mail</label>
                <input type="email" name="user-email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Сообщение</label>
                <textarea class="form-control" name="user-message" id="exampleFormControlTextarea1" rows="3"></textarea>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="returnType" id="inlineRadio1" value="mail" checked>
                <label class="form-check-label" for="inlineRadio1">Отпраивть на почту</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="returnType" id="inlineRadio2" value="txt">
                <label class="form-check-label" for="inlineRadio2">Скачать .txt</label>
            </div>
            <input type="file" name="resume" id="">
            <div class="form-group mt-2">
                <button type="submit" class="btn btn-primary" name="doSend">Отпраивть</button>
            </div>    
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>
</html>