<?php

include('functions.php');
//1.  DB接続します
$pdo = db_conn();

//２．データ登録SQL作成
$stmt = $pdo->prepare('SELECT * FROM '.$ajax_table);
$status = $stmt->execute();

//３．データ表示
$view = array();
if($status==false){
  errorMsg($stmt);
}else{
  //Selectデータの数だけ自動でループしてくれる
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){

    $view[] = $result['name'];
    $view[] = $result['email'];
    $view[] = $result['indate'];
    $view[] = $result['youtube'];


    // $view .= '<div>名前：'.$result['name'].'</div>';
    // $view .= '<div>Email:'.$result['email'].'</div>';  
    // $view .= '<div>投稿時刻:'.$result['indate'].'</div>';  
    // $view .= ' <iframe width="560" height="315" src="https://www.youtube.com/embed/';
    // $view .= $result['youtube'];
    // $view .= '" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>';
    
  }
}


//４．データ登録処理後
if($status==false){
    queryError($stmt);
}else{
    echo json_encode($view);  //phpはこの形
    exit;
}



?>