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


$_makalebasligi = "fdgfdgh";
$_yazar = "eda";
$_tarihi = "180420";
$_makaleicerigi = "deneme"


$_uyekayit ="insert into makale (isim, soyisim, eposta) values ('$_makalebasligi', '$_yazar', '$_tarihi', '$_makaleicerigi')";
$_kopru -> query($_uyekayit);


?>
