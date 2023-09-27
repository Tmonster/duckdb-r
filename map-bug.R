library(duckdb)
ddb<-dbConnect(duckdb::duckdb())
res0 <- dbExecute(ddb, "Create table t0 (c0 MAP(VARCHAR, INT))")
res1 <- dbExecute(ddb, "INSERT INTO t0 VALUES (map {'a': 1, 'b': 2}), (map {'d': 3, 'e': 5})")
res <- dbGetQuery(ddb, "SELECT c0 as map from t0;")


res <- dbGetQuery(ddb, "SELECT map {'key1': 1, 'key2': 42} as map")