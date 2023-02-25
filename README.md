# 小租家家具出租網 WebProject

---

## 專案簡介
專案的主題是一個線上家具出租網站，旨在透過網站建立會員功能區塊與構築購物車系統學習JavaWeb前端與後端的技術，將所學以網站方式呈現。
- #### 使用到的技術包含:
JAVA17、J2EE、JSP頁面、透過phpMyAdmin的方式管理MySQL資料庫、透過Xampp架設HTTP伺服器Apache、由於有使用到JAVA的JSP技術因此需另外安裝Tomcat9.0。
- #### 網站外觀與功能技術的應用:
HTML5、CSS3、JavaScript與Bootstrap5框架。
- #### 開發環境:
Eclipse-EE 2022-09、Visual Studio Code、XAMPP Control Panelv3.3.0 、資料庫伺服器版本 10.4.27-MariaDB-mariadb。

---
## 應用程式啟動步驟
### 此段說明如何啟動小租家網站專題，第2步須完全遵照，包含資料庫名稱、使用者名稱與密碼設定。
1. 下載和安裝Xampp和Tomcat伺服器 (此專案檔案已包含Tomcat9.0檔案，無須再到官網下載，只需在專案內容架設Tomcat9.0)。
2. 在Xampp的MySQL中建立資料庫，**資料庫名稱為Ｍaxim1，使用者名稱與密碼請同時設定為admin1**，資料庫建立完成後在phpMyAdmin頁面匯入專案資料夾內的4個副檔名為.sql的資料表。
3. 確認Xampp中的Apache伺服器與MySQL能正常啟動。
4. 打開Eclipse-EE並導入此專題，且確認以下兩個路徑都有導入MySQLconnectorJAR包 </br>
(1). Webcontent -> WEB-INF -> lib資料夾 </br>
(2). 專案資料夾jdbctest右鍵Build Path -> Libraries -> Classpath導入MySQLconnectorJAR包
(3). 此專案已將MySQLconnectorJAR包導入完成，只需要檢查即可，若JAR包遺失則照上述步驟導入。
5. 點擊Eclipse-EE界面下方Servers運行Tomcat9。
6. 透過Eclipse-EE左上角直接執行專案，或直接至瀏覽器輸入此網址: localhost:8000/jdbctest/index.html。
---
## 網站程式使用步驟導覽
### 會員註冊、登入、修改與訂單狀態使用</br>
1. 進入首頁，點擊首頁導覽列的會員中進行登入或是註冊會員。
2. 登入會員之後會導覽至會員中心，此處可查看自己的會員資料與修改會員資料，也能在此處看到歷史訂單以及正在租賃中的商品。
### 購物車系統與結帳使用導覽</br>
1. 完成登入至會員中心
2. 回到首頁並點選導覽列之挑選商品，到商品頁將商品加入購物車。
3. 點選右上角購物車按鈕至購物車頁面，購物車頁面可以刪減商品，且需要有放置商品購物車頁面才會出現＜確認結帳＞按鈕。
4. 按下確認結帳，按下同意契約才能進入到結帳頁。
5. 完成結帳並送出訂單至後台資料庫。
6. 至會員中心查看自己的訂單與租賃中商品是否有增加。
---
## 網站結構說明
- /jdbctest : 為專案根目錄。
- /src : 包含JAVA程式碼與JSP頁面等等。
- /Webcontent : 包含前端外觀功能的資源、JSP頁面、HTML頁面。
- /assets : 包含/css、/img、/js等存前端外觀與功能的檔案。
- /WEB-INF：包含Web應用程式的配置檔案和資源，如web.xml檔案和lib目錄，lib目錄裡存放MySQLconnectorJAR包。
---
## 其他
此專題作品主要是以JSP頁面的去呈現MVC模式的網站架構，目前已知能改善的地方如下所述
1. JDBC部分的語法未能有效防範SQL injection，需要在語法上再做修改。
2. 此專題是以驗證Cookie的方式確保登入狀態，並非是常見的做法，應改以Seesion或其他方式保存登入資訊。
3. 若是未登入狀態將商品加入購物車，登入不同的帳號依舊能看到同樣的購物車商品。
4. 未來若要呈現類似的網站專案，以Spring框架或SpringBoot進行撰寫會更加有效率以及提升安全性。
5. 架站並對外開放的連線問題仍未解決。
6. 結帳頁面的商品數量尚未解決。
---
## 考量到無法成功運行此網站的情形，因此以下附上實體網站的圖片與簡易導覽說明，僅針對會員系統與租賃系統做說明。</br>
### 1.主頁外觀:主要呈現網站所提供的服務與導覽列進行其他功能。
![image](https://user-images.githubusercontent.com/122330054/221350280-0176f772-82b3-4fe5-a086-fe504951b2dd.png)
### 2.點擊導覽列之會員中心，由於是未登入狀態因此需要登入，若有登入會直接切換至會員中心頁面。</br>
![image](https://user-images.githubusercontent.com/122330054/221350389-58670383-7eee-4808-a923-a9c49ac34c38.png)
### 3.註冊頁面展示。</br>
![image](https://user-images.githubusercontent.com/122330054/221350481-a404eac9-e312-4e02-b98b-2bf5f3eed480.png)
### 4.會員中心展示，此處可看見會員資料、租賃中商品與歷史訂單。</br>
![image](https://user-images.githubusercontent.com/122330054/221350579-9c7f30c7-64c5-421c-956f-f0dac12e39ba.png)
### 5.點擊首頁導覽列之<挑選商品>去選購商品放進購物車。</br>
![image](https://user-images.githubusercontent.com/122330054/221350922-8cd71447-ace0-417b-bf67-a6719d59f355.png)
### 6.至購物車頁面結帳商品或刪除購物車商品。</br>
![image](https://user-images.githubusercontent.com/122330054/221350867-6dc4c3fa-91dd-408f-a8ef-dad0f96cd373.png)
### 7.結帳頁面與送出訂單。</br>
![image](https://user-images.githubusercontent.com/122330054/221350974-2a30092c-27c1-4048-9388-501c9f605a13.png)
### 8.結帳完成後回到會員中心查看目前租賃商品。</br>
![image](https://user-images.githubusercontent.com/122330054/221351062-d863a849-e73f-4350-a116-a15228f0215d.png)
### 9.結帳完成後回到會員中心查看歷史訂單情形，列出此用戶所產生過的訂單詳情。</br>
![image](https://user-images.githubusercontent.com/122330054/221351108-14cd24fc-a910-422c-b8e5-b04b676f4edf.png)








