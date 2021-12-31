<?php
echo time();

$data=file_get_content('index.html');
echo $data;
echo 'aaaaaa'
echo json_decode($data);
echo '....';
?>