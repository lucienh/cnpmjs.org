mysql -utest -ptestcnpmjs -P3307 -h127.0.0.1 -e 'DROP DATABASE IF EXISTS cnpmjs_test;' &&\
mysql -utest -ptestcnpmjs -P3307 -h127.0.0.1 -e 'CREATE DATABASE cnpmjs_test;' &&\
mysql -utest -ptestcnpmjs -P3307 -h127.0.0.1 'cnpmjs_test' < docs/db.sql &&\
mysql -utest -ptestcnpmjs -P3307 -h127.0.0.1 'cnpmjs_test' -e 'show tables;'