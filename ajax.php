<?php

require_once 'db.php';
/** @var object $db */
header('Content-Type: application/json');

$arData = [];
if (isset($_POST['params'])):
  $arParams = json_decode($_POST['params'], true)[0];
  $id = (int)$arParams['id'];
  $price = (float)$arParams['price'];
  $name = 'Товар ' . rand(0, 9999);
  $query = 'INSERT INTO products(name, price) VALUES (:name, :price)';
  $statement = $db->prepare($query);
  $statement->bindValue(':name', $name);
  $statement->bindValue(':price', $price);
  $status = 0;
  if ($statement->execute()):
    $status = 1;
    $query = 'SELECT code FROM barcodes WHERE product_id = :product_id';
    $statement = $db->prepare($query);
    $statement->bindValue(':product_id', $id);
    if ($statement->execute()):
      $arResult = $statement->fetchObject();
      $arData['BarCode'] = ((int)$arResult->code) ?: 0;
    else:
      $status = 0;
    endif;
  else:
    $status = 0;
  endif;
  $arData['status'] = $status;
endif;

if (isset($_POST['ans'])):
  $arData = json_decode($_POST['ans'], true)[0];
  $code = $arData['BarCode'];
  $value = $arData['value'];
  $description = str_replace('а', '@', $value);
  $description .= ' | Date: ' . date('d.m.Y');
  $query = "UPDATE barcodes SET description = :description WHERE code = :code";
  $statement = $db->prepare($query);
  $statement->bindValue(':code', $code);
  $statement->bindValue(':description', $description);
  $arData = [];
  if ($statement->execute()):
    $arData['message'] = $description;
  else:
    $arData['message'] = 'Ошибка обновления записи';
  endif;
endif;

echo json_encode($arData);
