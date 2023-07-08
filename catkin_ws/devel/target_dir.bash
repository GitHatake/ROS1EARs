#!/bin/bash

# 指定したディレクトリ以下のシンボリックリンクを再帰的に検索し、リンクを変更するスクリプト

# 修正対象のディレクトリを指定
TARGET_DIR="/home/hatakeyama/docker/ROS1EARs/catkin_ws/devel"

# 置換前の文字列
<<<<<<< HEAD
OLD_TEXT="aokilablinuxws"
=======
OLD_TEXT="hatakeyama/docker/ROS1EARs"
>>>>>>> df2

# 置換後の文字列
NEW_TEXT="ubuntu"

# TARGET_DIR以下のシンボリックリンクを再帰的に検索
find "$TARGET_DIR" -type l | while read -r link; do
    # シンボリックリンクのリンク先を取得
    target=$(readlink "$link")

    # リンク先を変更する
    new_target="${target//$OLD_TEXT/$NEW_TEXT}"

    # シンボリックリンクの上書き
    ln -sf "$new_target" "$link"
    
    echo "Fixed symlink: $link"
done
