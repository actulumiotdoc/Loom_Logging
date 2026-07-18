#!/bin/bash
user=$HOME
flows=$user/.node-red/flows.json
db=$user/telemetry/sql/telemetry_factory.db


sqlite3 $db "
CREATE TABLE telemetry_log (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  create_at DATETIME DEFAULT (datetime('now', '+7 hours')),
  ts INTEGER NOT NULL,
  nf INTEGER,
  dou INTEGER,
  spdg REAL,
  ppm INTEGER
  );
"

rm $flows

cat << 'EOF' > $flows

EOF
