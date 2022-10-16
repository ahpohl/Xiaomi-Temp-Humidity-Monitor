\c esphome

CREATE EXTENSION IF NOT EXISTS timescaledb;
DROP TABLE IF EXISTS "sensors" CASCADE;
DROP TABLE IF EXISTS "live" CASCADE;

CREATE TABLE "sensors" (
  id SERIAL PRIMARY KEY,
  type VARCHAR(50),
  location VARCHAR(50),
  hostname VARCHAR(50),
  device VARCHAR(50),
  class VARCHAR(50),
  active BOOLEAN
);

CREATE TABLE "live" (
  time TIMESTAMPTZ NOT NULL,
  sensor_id INTEGER NOT NULL,
  value DOUBLE PRECISION,
  FOREIGN KEY (sensor_id) REFERENCES sensors (id)
);

SELECT create_hypertable('live', 'time');
SELECT add_retention_policy('live', INTERVAL '90 days');

GRANT INSERT, SELECT ON TABLE live TO mqtt;
GRANT SELECT ON TABLE sensors TO mqtt;
