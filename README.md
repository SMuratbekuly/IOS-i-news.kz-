# IOS-i-news.kz-

Здравствуйте! Репозитории ios приложения Xcode старый 6.4 обновить не получилось потому потдержка IOS 7 - IOS 8.4 Подключиться к API к сожелению не получилось потому приложение не готова даже на минимум. При отправки запроса сервер отвечал без ошибок но данных не выдавал. status code 403 FORBIDDEN!!!! отказ сервера дружить со мной))) (403 Forbidden[16] — сервер понял запрос, но он отказывается его выполнять из-за ограничений в доступе для клиента к указанному ресурсу. by WIKIPEDIA) Рассмотрел разные способы по написанию запроса я их откоментировал для удобства чтобы проверить каждый. Буду благодарен если вы ознакомитесь и дадите знать что я сделал не так. Но всетаки думается дело в API.
 
 Ответ сервера:
 
2016-05-30 03:32:45.278 i-news.kz(Muratbekuly.Shyngys)[4901:206221] Response : { URL: https://api.i-news.kz/category/get-all } { status code: 403, headers { "Content-Encoding" = gzip; "Content-Type" = "application/json; charset=utf-8"; Date = "Sun, 29 May 2016 21:32:45 GMT"; Server = "nginx/1.8.1"; Vary = "Accept-Encoding"; "x-powered-by" = "PHP/5.4.35-1~dotdeb.1"; } } 2016-05-30 03:32:45.280 i-news.kz(Muratbekuly.Shyngys)[4901:206221] ERROR - (null) 2016-05-30 03:32:58.330 i-news.kz(Muratbekuly.Shyngys)[4901:206245] Communications error: { count = 1, contents = "XPCErrorDescription" => { length = 22, contents = "Connection interrupted" } }>
