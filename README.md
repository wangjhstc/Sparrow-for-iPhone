# Sparrow-for-iPhone

# 1-->Sqlite 数据存储
# 2-->存储对象化
# 3-->单元测试
# 4-->数据库加密


/*
sqlite3          *db, 数据库句柄，跟文件句柄FILE很类似
sqlite3_stmt      *stmt, 这个相当于ODBC的Command对象，用于保存编译好的SQL语句
sqlite3_open(),   打开数据库，没有数据库时创建。
sqlite3_exec(),   执行非查询的sql语句
Sqlite3_step(), 在调用sqlite3_prepare后，使用这个函数在记录集中移动。
Sqlite3_close(), 关闭数据库文件
还有一系列的函数，用于从记录集字段中获取数据，如
sqlite3_column_text(), 取text类型的数据。
sqlite3_column_blob（），取blob类型的数据
sqlite3_column_int(), 取int类型的数据
*/