library(duckdb)
ddb<-dbConnect(duckdb::duckdb())
res <- dbGetQuery(ddb, "SELECT map { 'key1': 5, 'key2': 43 } as cool;")
