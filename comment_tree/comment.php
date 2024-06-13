<?php

$comments = array(
    array(1, 1, "Comment 1"),
    array(2, 1, "Comment 2"),
    array(3, 2, "Comment 3"),
    array(4, 1, "Comment 4"),
    array(5, 2, "Comment 5"),
    array(6, 3, "Comment 6"),
    array(7, 7, "Comment 7")
);

// Преобразуем входной массив в ассоциативный массив с ключом по ID
$commentsById = [];
foreach ($comments as $comment) {
    $commentsById[$comment[0]] = [
        'id' => $comment[0],
        'parent_id' => $comment[1],
        'comment' => $comment[2],
        'children' => []
    ];
}

// Строим дерево комментариев
$rootComments = [];
foreach ($commentsById as $comment) {
    if ($comment['parent_id'] === $comment['id']) {
        // Корневой комментарий
        $rootComments[] = &$commentsById[$comment['id']];
    } else {
        // Вложенный комментарий
        $commentsById[$comment['parent_id']]['children'][] = &$commentsById[$comment['id']];
    }
}

// Функция для вывода дерева комментариев в HTML
function renderComments($comments) {
    $html = '';
    foreach ($comments as $comment) {
        $html .= '<div>' . htmlspecialchars($comment['comment']) . '</div>';
        if (!empty($comment['children'])) {
            $html .= '<div style="margin-left: 20px;">' . renderComments($comment['children']) . '</div>';
        }
    }
    return $html;
}

// Выводим дерево комментариев
echo renderComments($rootComments);

?>
