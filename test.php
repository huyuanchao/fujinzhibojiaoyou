<?php
echo time();

$data=file_get_contents('index.html');
echo $data;
echo 'aaaaaa'
echo json_decode($data);
echo '....';
?>