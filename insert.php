<?php
//POSTデータ取得
$title = $_POST['title'];
$url = $_POST['url'];
$comment = $_POST['comment'];


//DB接続
try {
    $pdo = new PDO('mysql:dbname=gs_yoshiyoshi;charset=utf8;host=localhost', 'root', 'root');
} catch (PDOException $e) {
    exit('DBConnectError:' . $e->getMessage());
}

//データ登録SQL
$stmt = $pdo->prepare("INSERT INTO gs_bm_table(id, bookname, bookurl, bookcomment, indate)VALUES(NULL, :title, :url, :comment, sysdate())");
$stmt->bindValue(':title', $title,  PDO::PARAM_STR);
$stmt->bindValue(':url', $url, PDO::PARAM_STR);
$stmt->bindValue(':comment', $comment, PDO::PARAM_STR);
$status = $stmt->execute();

//データ登録処理後
if($status==false) {
    $error = $stmt->errorInfo();
    exit("ErrorMessage:" . $error[2]);
} else{
    header('Location: index.php');

}
?>