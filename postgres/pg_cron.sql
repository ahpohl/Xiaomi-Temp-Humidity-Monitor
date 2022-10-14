\c pg_cron

CREATE EXTENSION IF NOT EXISTS pg_cron;

SELECT cron.schedule('sensors_monthly', '9 0 * * *', $$REFRESH
  MATERIALIZED VIEW sensors_monthly$$);

SELECT cron.schedule('sensors_yearly', '9 0 * * *', $$REFRESH
  MATERIALIZED VIEW sensors_yearly$$);

UPDATE cron.job SET database = 'esphome' WHERE 
  jobname = 'sensors_monthly' OR
  jobname = 'sensors_yearly';
