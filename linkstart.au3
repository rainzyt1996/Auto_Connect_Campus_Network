Global $web = "http://www.baidu.com"
$var = Ping($web)	; ping百度，检测网络连接状态
If @error Then
   ; 网络连接异常
   Run("explorer.exe "& $web)	; 调用默认浏览器打开百度页面，自动跳转到校园网登录页面（如果默认浏览器不会自动跳转登录，则将explorer.exe替换为可以自动跳转的浏览器，亲测Edge可行）
   Sleep(10000)
   Send("{ENTER}")	; 执行回车键，相当于按下登录页面的连接按键（需要预先设置网页记住密码）
   Sleep(10000)
   Run("taskkill.exe /IM msedge.exe")	; 关闭浏览器（将msedge.exe替换为登录使用的浏览器）
Else
   ; 网络连接正常，不做任何操作
EndIf
