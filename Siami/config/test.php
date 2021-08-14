<?php 
 
$id = 12987;
define("APP_VERSION", 100); define("AUTHOR", "Program");

var_dump($id);  
echo "Text echo with \t Tab function\n"; var_dump(9223372036854775888); var_dump(0b1111111); var_dump(01237); 

echo <<<'script'
Text echoes with  double space
Enter and \t Tab ("it's a Heredoc data echoes"); \n
script;
echo APP_VERSION; echo "\n";  

function getFinalValue(int $id, $filter): string{
    $finalName = $filter($id);
    $theFunctionThatGetCalled(); 
} 
?>