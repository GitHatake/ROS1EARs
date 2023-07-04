#!/bin/bash

# 指定したディレクトリ以下のシンボリックリンクを再帰的に検索し、リンク切れしているものを修正するスクリプト

# 修正対象のディレクトリを指定
TARGET_DIR="/home/hatakeyama/docker/ROS1EARs/catkin_ws/devel"

# TARGET_DIR以下のシンボリックリンクを再帰的に検索
find "$TARGET_DIR" -type l | while read -r link; do
    # シンボリックリンクのリンク先を取得
    target=$(readlink "$link")

    # リンク切れしている場合、修正を行う
    if [[ ! -e "$target" ]]; then
        echo "Fixing broken symlink: $link"
        
        # シンボリックリンクの修正を行うコマンドをここに追加
        # 例えば、新しいリンク先を指定する場合は次のようになります:
        ln -sf /path/to/new/target "$link"
    fi
done
