# Mute-on-Unplug

Macを電源状態で動作させるときに自動でミュートにするスクリプトです。
外出時にミュートするのを忘れて公共の場で音が流れてしまうのを防ぐ事ができます。

## 導入方法
以下のコマンドを実行してください
```
git clone https://github.com/Akasakax/Mute-on-Unplug.git
cd Mute-on-Unplug
```
ここでcom.script.unplug_mute.plistを開き[USER_NAME]の部分を変更し、保存してください。
```
sudo cp com.script.unplug_mute.plist /Library/LaunchAgents/
launchctl load com.script.unplug_mute.plist
```
