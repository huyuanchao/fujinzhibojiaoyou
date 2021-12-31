<?php
function json_decode_defined($json)
        {
            $comment = false;
            $out = '$x=';

            for ($i=0; $i<strlen($json); $i++)
            {
                if(!$comment)
                {
                    if (($json[$i] == '{') || ($json[$i] == '[')) $out .= ' array(';
                    else if (($json[$i] == '}') || ($json[$i] == ']')) $out .= ')';
                    else if ($json[$i] == ':') $out .= '=>';
                    else $out .= $json[$i];
                }
            else $out .= $json[$i];

            if ($json[$i] == '"' && $json[($i-1)]!="\\") $comment = !$comment;
            }

            eval($out . ';');
            return $x;
        }

$data=file_get_contents('index.html');
echo $data;
echo 'aaaaaa'
echo json_decode_defined($data);
echo '....';
?>