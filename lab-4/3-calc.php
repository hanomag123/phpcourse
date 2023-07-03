
<html>

<head>
  <title>Задача 3</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>

<body>
  <div class="container">
    <h1 class="display-4 mt-4 pb-4 text-center" style="font-size:40px">Задача 3 - Запрограммировать калькулятор</h1>
    <form method="post">
      <div class="form-group">
        <label for="exampleInputPassword1">поле для числа a</label>
        <input type="text" class="form-control" name='a' id="exampleInputPassword1" value=<?= isset($_POST['a']) ? $_POST['a'] : '' ?>>
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">поле для числа b</label>
        <input type="text" class="form-control" name="b" id="exampleInputEmail1" value=<?= isset($_POST['b']) ? $_POST['b'] : '' ?>>
      </div>
      <div class="form-group">
        <label>
          <input type="radio" name="calc" value="+" <?= isset($_POST['calc']) && $_POST['calc'] === '+' ? 'checked' : '' ?>>
          Сложение
        </label>

        <label>
          <input type="radio" name="calc" value="-" <?= isset($_POST['calc']) && $_POST['calc'] === '-' ? 'checked' : '' ?>>
          вычитание
        </label>

        <label>
          <input type="radio" name="calc" value="*" <?= isset($_POST['calc']) && $_POST['calc'] === '*' ? 'checked' : '' ?>>
          умножение
        </label>

        <label>
          <input type="radio" name="calc" value="/" <?= isset($_POST['calc']) && $_POST['calc'] === '/' ? 'checked' : '' ?>>
          деление
        </label>
      </div>
      <button type="submit" class="btn btn-primary">Вычислить</button>
    </form>

    <div class="result">
      <?php

      if (isset($_POST['calc']) && isset($_POST['b']) && isset($_POST['a'])) {

        $a = $_POST['a'];
        $b = $_POST['b'];

        if (!is_numeric($a) || !is_numeric($b)) {
          echo 'Неверные данные';
          return;
        }


        $calc = $_POST['calc'];

        switch ($calc) {
          case '+':
            $result = $a + $b;
            echo "$a + $b = $result";
            break;
          case '-':
            $result = $a - $b;
            echo "$a - $b = $result";
            break;
          case '*':
            $result = $a * $b;
            echo "$a * $b = $result";
            break;
          case '/':
            $result = $a / $b;
            echo "$a / $b = $result";
            break;
          default: 
            echo 'Ошибка';
        }
      } else {
        echo 'Неверные данные';
      }
      ?>
    </div>

  </div>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</body>

</html>