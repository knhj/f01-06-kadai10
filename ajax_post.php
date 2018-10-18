<?php

include('functions.php');
//入力チェック(受信確認処理追加)
if(
    !isset($_POST['name']) || $_POST['name']=="" ||
    !isset($_POST['email']) || $_POST['email']=="" ||
    !isset($_POST['youtube']) || $_POST['youtube']==""
){
    exit('ParamError');
}

//1. POSTデータ取得
$name   = $_POST['name'];
$email   = $_POST['email'];
$youtube = URLtoID($_POST['youtube']);

$sql = 'INSERT INTO '. $ajax_table .'(id, name, email, youtube, indate)VALUES(NULL, :a1, :a2, :a3, sysdate())';


//2. DB接続します(エラー処理追加)
$pdo = db_conn();

//３．データ登録SQL作成
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':a1', $name, PDO::PARAM_STR);
$stmt->bindValue(':a2', $email, PDO::PARAM_STR);
$stmt->bindValue(':a3', $youtube, PDO::PARAM_STR);
$status = $stmt->execute();

//４．データ登録処理後
if($status==false){
    queryError($stmt);
}else{
    $nowtime = date("Y-m-d H:i:s");
    $array = [$name, $email, $youtube,$nowtime];
    echo json_encode($array);  //phpはこの形
    exit;
}



?>