#!/bin/bash

# 指定したディレクトリ以下のシンボリックリンクを再帰的に検索し、リンク切れしているものを修正するスクリプト

# 修正対象のディレクトリを指定
TARGET_DIR="/home/hatakeyama/docker/ROS1EARs/catkin_ws/devel"

# 置換前の文字列
OLD_TEXT="docker/ROS1EARs"

# 置換後の文字列
NEW_TEXT="hatakeyama/docker/ROS1EARs"

# TARGET_DIR以下のシンボリックリンクを再帰的に検索
find "$TARGET_DIR" -type l | while read -r link; do
    # シンボリックリンクのリンク先を取得
    target=$(readlink "$link")

    # リンク切れしている場合、修正を行う
    if [[ ! -e "$target" ]]; then
        echo "Fixing broken symlink: $link"
        
        # シンボリックリンクの修正を行う
        # 特定の一部を置換する
        new_target="${target//$OLD_TEXT/$NEW_TEXT}"
        
        # シンボリックリンクの上書き
        ln -sf "$new_target" "$link"
    fi
done
