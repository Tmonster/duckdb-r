library(duckdb)
ddb<-dbConnect(duckdb::duckdb())
dbGetQuery(ddb, "SELECT map { 'key1': 5, 'key2': 43 };")
