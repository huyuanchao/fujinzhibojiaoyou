<?php
echo time();

$data=file_get_content('index.html');
echo json_decode($data);
?>