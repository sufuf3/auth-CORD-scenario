# Radius

全名：Remote Access Dial In User Service)  
https://tools.ietf.org/html/rfc2865  
https://tools.ietf.org/html/rfc2866  

使用 [FreeRADIUS](https://github.com/FreeRADIUS/freeradius-server)。  
FreeRADIUS 是一個 multi-protocol policy server 。通過使用RADIUS，可以對網絡進行身份驗證和授權，可以減少在向網絡添加或刪除新使用者時必須完成的更改次數。

### 設定要注意的事
- debugging mode 使用 `radiusd -X`
- Send it test packets using "radclient", or a NAS or AP.

## concepts
- Authorization
- Authentication
- Accounting request handling
