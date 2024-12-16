<?php

namespace App\Helper;

use Termwind\Components\Span;

class OrderStatus
{
    const PENDING = 1; //heleki bu sifaris sorgusu gozlemededi - yeni admin hele tesdiqlemiyib
    const CONFIRMED = 2; //admin derefden tesdiq edildi
    const SHIPPED = 3; //catdirilma merhelesi - curyere verilib
    const DELIVERED = 4; //musteriye catdirilib
    const CANCELED = 5; //sifaris legv edildi user terefden (confirmed edilmemis muddetde cansel ede bilerik, yeni status ne qeder ki 1-dirse cansel ede bilerik)
    const RETURNED = 6; //musteri sifarisi qaytardi
    const FAILED = 7; //bu sorgu redd edildi

}
