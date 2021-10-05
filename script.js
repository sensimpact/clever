// Загрузка страницы
$(document).ready(function () {
  let params = [];
  params.push({
    'id': 1,
    'price': 100.21,
  });
  $.ajax({
    url: 'ajax.php',
    type: 'post',
    dataType: 'json',
    data: 'params=' + JSON.stringify(params),
  }).done(function (data) {
    const $button = $('a.run');
    if (!data.status) {
      $button.detach();
      $('span.error').text('Данные не найдены');
    } else {
      $button.css('display', 'inline');
      $('#modal label b').text(data['BarCode']);
      $button.data('barCode', data['BarCode']);
    }
  });
});

// Отправка формы
$(document).on('click', 'button#run', function () {
  const $button = $('a.run');
  const $input = $('input[name=value]');
  let ans = [];
  ans.push({
    'BarCode': $button.data('barCode'),
    'value': $input.val()
  });
  $.ajax({
    url: 'ajax.php',
    type: 'post',
    dataType: 'json',
    data: 'ans=' + JSON.stringify(ans),
  }).done(function (data) {
    const $response = $('.response');
    console.log(data);
    $response.css('display', 'block');
    $response.find('b').text(data['message']);
  });
});
