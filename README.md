# Mute-on-Unplug

Macを電源状態で動作させるときに自動でミュートにするスクリプトです。
例えば、普段は家で充電しながらMacを使う人にとっては外出時にミュートにすることを忘れてしまう際があると思います。
そのような場合、このスクリプトによって充電器を抜くと自動でミュートにする事ができるため公共の場で音が流れてしまうということを防ぐ事ができるツールとなっています。

## 導入方法
以下のコマンドと操作を行ってください
```
git clone https://github.com/Akasakax/Mute-on-Unplug.git
cd Mute-on-Unplug
```
ここでcom.script.unplug_mute.plistを開き[USER_NAME]の部分を変更し、保存してください。
```
sudo cp com.script.unplug_mute.plist /Library/LaunchAgents/
launchctl load com.script.unplug_mute.plist
```
