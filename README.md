# Aegisub-Multilingual-Subtitle-Helper
> 为双语Aegisub制作者准备的一套自动化脚本

## 使用方法
1. 点击Aegisub菜单栏的『自动化』->『自动化』，打开自动化脚本管理器
2. 在自动化脚本管理器中选择一个插件，点击『显示信息』，复制其完整路径，如`/Applications/Aegisub.app/Contents/SharedSupport/automation/autoload/cleantags-autoload.lua`
3. 在资源管理器中打开该路径，如`/Applications/Aegisub.app/Contents/SharedSupport/automation/autoload/`
4. 将你所需的自动化脚本复制到该路径中
5. 根据你的需要对脚本进行修改（可修改的内容在代码里均有标记）
6. 返回Aegisub，在自动化脚本管理器中点击『重新扫描自动载入文件夹』
7. 在Aegisub的『自动化』菜单中可以找到对应的脚本，点击即可使用

## 脚本介绍
### chinese-subtitle-prepare.lua
> 自动准备中文字幕，行为是在现有的每行英文字幕前加入一行空白的中文字幕，便于填充。
#### 工作流
1. 准备好已经打轴的英文字幕，或从Youtube等网站下载打好轴的字幕
2. 点击该插件
3. 这个时候，每行英文字幕前均会多出一行中文字幕，样式和预填充内容可在脚本中进行个性化
4. 点击首行中文字幕，在编辑框中输入中文
5. 每编辑完一行后，按两下回车即可跳转到下一行，直至翻译到最后一行
