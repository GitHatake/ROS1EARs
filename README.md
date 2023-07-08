# ears_ros_melodic
青木研究室で用いられている7軸マニピュレータ型超音波診断支援ロボットEARsの動作環境(ROSmelodic)です。
##導入
dockerがPCに導入されている前提です。
1.dockerhubからローカルへ
  以下のコマンドを実行してください。
  docker run -it --name [hoge] --network bridge -p 8080:8080 dockerhatake/ears_ros_melodic:latest

2.webブラウザからアクセス
  webブラウザからvncでアクセスします。
  以下のurlに移動してください。アクセスできるはずです。
  http://172.17.0.2:6080

3.コンテナ内での作業
  コンテナ内でターミナルを起動して、以下を実行してください。
  自動的に初期設定が開始されます。
  cd ~/catkin_ws
  ./startup.bash

4.シミュレーションの実行
  EARsのシミュレーションが実行できます。
  ~/catkin_ws/start_bash_memo.txt
  の中身を一つづつ実行してください。
  シミュレーションが起動します。


##注意点
- デスクトップのサイズはブラウザでvncを起動したときのサイズに固定されます
