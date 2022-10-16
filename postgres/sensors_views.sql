\c esphome

---
--- monthly view
---

DROP MATERIALIZED VIEW IF EXISTS sensors_monthly CASCADE;

CREATE MATERIALIZED VIEW sensors_monthly
AS
SELECT
  timescaledb_experimental.time_bucket_ng('1 month', time, 'Europe/Berlin') AS bucket_1m,
  sensor_id,
  avg(avg) AS avg,
  min(min) AS min,
  max(max) AS max,
  sum(obs) AS obs
FROM sensors_daily
GROUP BY bucket_1m, sensor_id
WITH NO DATA;

GRANT SELECT ON TABLE sensors_monthly TO mqtt;

---
--- yearly ---
---

DROP MATERIALIZED VIEW IF EXISTS sensors_yearly CASCADE;

CREATE MATERIALIZED VIEW sensors_yearly
AS
SELECT
  timescaledb_experimental.time_bucket_ng('1 year', time, 'Europe/Berlin') AS bucket_1y,
  sensor_id,
  avg(avg) AS avg,
  min(min) AS min,
  max(max) AS max,
  sum(obs) AS obs
FROM sensors_daily
GROUP BY bucket_1y, sensor_id
WITH NO DATA;

GRANT SELECT ON TABLE sensors_yearly TO mqtt;
