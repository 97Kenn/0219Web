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
