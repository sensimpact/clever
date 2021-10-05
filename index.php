<!doctype html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Clever. Test task</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css"/>
  <link rel="stylesheet" href="styles.css?v=1"/>
</head>
<body>

<p>
  <span class="error"></span>
  <a href="#modal" class="run" rel="modal:open">Запуск</a>
</p>

<div id="modal" class="modal">
  <form action="javascript:void(0)">
    <label>
      Ваш трек: <b></b><br><br>
      <input name="value" type="text" autocomplete="Off"/>
    </label>
    <button id="run">Отправить</button>
  </form>
  <div class="response">
    Ответ: <b></b>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script src="script.js"></script>
</body>
</html>
