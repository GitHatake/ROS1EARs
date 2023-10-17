# ears_ros_melodic
青木研究室で用いられている7軸マニピュレータ型超音波診断支援ロボットEARsの動作環境(ROSmelodic)です。　
## 導入
dockerがPCに導入されている前提です。 
### 1.dockerhubからローカルへ
  以下のコマンドを実行してください。 <br>
  ``docker run -it --name [hoge] --network bridge -p 8080:8080 dockerhatake/ears_ros_melodic:latest``

### 2.webブラウザからアクセス
  webブラウザからvncでアクセスします。 <br>
  以下のurlに移動してください。アクセスできるはずです。<br> 
  ``http://172.17.0.2``

### 3.コンテナ内での作業
  コンテナ内でターミナルを起動して、以下を実行してください。<br>
  自動的に初期設定が開始されます。<br>
  ``cd ~/catkin_ws``
  ``./startup.bash``

### 4.シミュレーションの実行
  EARsのシミュレーションが実行できます。<br> 
  ``~/catkin_ws/start_bash_memo.txt`` <br>
  の中身を一つずつ実行してください。 <br>
  シミュレーションが起動します。 <br>


## 注意点
- デスクトップのサイズはブラウザでvncを起動したときのサイズに固定されます 
