# docker-pgloader

You need to set two environment variable for your app to trigger the migration: `aptible config:set MYSQL=URL PSQL=URL`

Use `aptible logs --app HANDLE` to view the logs.  If it completes successfully, you can deprovision the app. If it does not, you can change ENV's or do `aptible restart --app HANDLE` to simply try again as is.

A successfull migration should conclude with a table of the operations:

```
{"log":"2017-05-05T21:22:40.951000Z NOTICE Comments\n","stream":"stdout","time":"2017-05-05T21:22:41.04204109Z"}
{"log":"             table name       read   imported     errors      total time       read      write\n","stream":"stdout","time":"2017-05-05T21:22:41.042118419Z"}
{"log":"-----------------------  ---------  ---------  ---------  --------------  ---------  ---------\n","stream":"stdout","time":"2017-05-05T21:22:41.042126063Z"}
{"log":"            before load          1          1          0          0.019s                     \n","stream":"stdout","time":"2017-05-05T21:22:41.045052136Z"}
{"log":"        fetch meta data         19         19          0          0.177s                     \n","stream":"stdout","time":"2017-05-05T21:22:41.045106929Z"}
{"log":"           create, drop          0          0          0          0.234s                     \n","stream":"stdout","time":"2017-05-05T21:22:41.045178553Z"}
{"log":"-----------------------  ---------  ---------  ---------  --------------  ---------  ---------\n","stream":"stdout","time":"2017-05-05T21:22:41.045192541Z"}
{"log":"            departments          9          9          0          0.047s     0.136s    0.008s\n","stream":"stdout","time":"2017-05-05T21:22:41.045300301Z"}
{"log":"               dept_emp     331603     331603          0          1.476s     5.797s    1.474s\n","stream":"stdout","time":"2017-05-05T21:22:41.045352887Z"}
{"log":"           dept_manager         24         24          0          0.004s     0.137s    0.004s\n","stream":"stdout","time":"2017-05-05T21:22:41.045413875Z"}
{"log":"              employees     300024     300024          0          3.542s    10.623s    3.542s\n","stream":"stdout","time":"2017-05-05T21:22:41.04549211Z"}
{"log":"               salaries    2844047    2844047          0         26.385s    54.240s   26.385s\n","stream":"stdout","time":"2017-05-05T21:22:41.045544937Z"}
{"log":"                 titles     443308     443308          0          4.127s    11.471s    4.127s\n","stream":"stdout","time":"2017-05-05T21:22:41.045601999Z"}
{"log":"-----------------------  ---------  ---------  ---------  --------------  ---------  ---------\n","stream":"stdout","time":"2017-05-05T21:22:41.045625709Z"}
{"log":"COPY Threads Completion         18         18          0        1m5.606s                     \n","stream":"stdout","time":"2017-05-05T21:22:41.045678956Z"}
{"log":"         Create Indexes          9          9          0         13.651s                     \n","stream":"stdout","time":"2017-05-05T21:22:41.045728235Z"}
{"log":" Index Build Completion          9          9          0          6.152s                     \n","stream":"stdout","time":"2017-05-05T21:22:41.045772924Z"}
{"log":"        Reset Sequences          0          0          0          0.052s                     \n","stream":"stdout","time":"2017-05-05T21:22:41.045823729Z"}
{"log":"           Primary Keys          6          6          0          0.018s                     \n","stream":"stdout","time":"2017-05-05T21:22:41.045861411Z"}
{"log":"           Foreign Keys          4          8          0          0.469s                     \n","stream":"stdout","time":"2017-05-05T21:22:41.045906874Z"}
{"log":"       Install comments          0          0          0          0.000s                     \n","stream":"stdout","time":"2017-05-05T21:22:41.045974251Z"}
{"log":"-----------------------  ---------  ---------  ---------  --------------  ---------  ---------\n","stream":"stdout","time":"2017-05-05T21:22:41.046040816Z"}
{"log":"      Total import time    3919015    3919015          0       1m13.957s  1m22.404s   35.540s\n","stream":"stdout","time":"2017-05-05T21:22:41.046101246Z"}
```
