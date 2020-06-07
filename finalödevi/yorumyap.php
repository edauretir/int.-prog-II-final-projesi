<?php

$_server = "localhost";
$_kadi = "blog";
$_sifre = "blog123";
$_dbadi = "blog";

$_kopru = new mysqli($_server, $_kadi, $_sifre, $_dbadi);

if ( $_kopru -> connect_error ) {
  echo "Bağlanılmadı";}

else {
  echo "Bağlandı." ; }


$_yazar = "eda";
$_eposta = "eda.uretir1907@gmail.com";
$_icerik = "bu yazıyı beğendim."


$_uyekayit ="insert into yorumlar (isim, soyisim, eposta) values ('$_yazar', '$_eposta', '$_icerik')";
$_kopru -> query($_uyekayit);


?>
