<?php
//DB接続関数（PDO）
function db_conn(){
  // $dbname='gs_f01_php05';
  $dbname='gs_f01_db06';
  try {
    $pdo = new PDO('mysql:dbname='.$dbname.';charset=utf8;host=localhost','root','');
  } catch (PDOException $e) {
    exit('DbConnectError:'.$e->getMessage());
  }
  return $pdo;
}
// テーブル名
$table = 'gs_data_table';
$ajax_table = 'gs_ajax_table';

//SQL処理エラー
function queryError($stmt){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit('QueryError:'.$error[2]);
}

/**
* XSS
* @Param:  $str(string) 表示する文字列
* @Return: (string)     サニタイジングした文字列
*/
function h($str){
  return htmlspecialchars($str, ENT_QUOTES, 'UTF-8');
}

//youtubeの直接のURLでも共有で表示されるURLのどちらでも動画のyoutubeIDを抜き出す

function URLtoID($preURL){
  $array = parse_url($preURL);
  // echo count($array);
  if(count($array) == 3){    //こっちは共有から
    // var_dump($array["path"]);
    return substr($array["path"],1);
  }else if(count($array) == 4){       //こっちはURL直接
    // var_dump($array["query"]);
    return substr($array["query"],2);
  }else {
    exit('Not correct URL');
  }
}


?>
