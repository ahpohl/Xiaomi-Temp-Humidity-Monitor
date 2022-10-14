\c esphome

---
--- daily continuous aggregate
---

DROP MATERIALIZED VIEW IF EXISTS sensors_daily CASCADE;

CREATE MATERIALIZED VIEW sensors_daily
WITH (timescaledb.continuous, timescaledb.materialized_only=true)
AS
SELECT
  timescaledb_experimental.time_bucket_ng('1 day', time, 'Europe/Berlin') AS time,
  sensor_id,
  avg(value) AS avg,
  min(value) AS min,
  max(value) AS max,
  count(*) AS obs
FROM live
GROUP BY timescaledb_experimental.time_bucket_ng('1 day', time, 'Europe/Berlin'), sensor_id
WITH NO DATA;

SELECT add_continuous_aggregate_policy('sensors_daily',
  start_offset => INTERVAL '3 days',
  end_offset => INTERVAL '1 hour',
  schedule_interval => '1 hour');

GRANT SELECT ON TABLE sensors_daily TO grafana;
