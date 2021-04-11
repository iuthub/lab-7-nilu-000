<?php
$db = new PDO('mysql:host=localhost;dbname=blog', 'admin', '0aeC1SmiEJAk1odU');
// write statements
$allUsersStmt = $db->prepare('SELECT * FROM users');
$allUsersStmt->execute();
$users = $allUsersStmt->fetchAll();