\c esphome

--- type: type of measurement
--- location: physical location of device
--- hostname: hostname of ESP device sensor is registered to
--- class: virtual, inside, outside
--- active: true, false
--- device: model description of sensor

INSERT INTO sensors (id, type, location, hostname, class, active, device) 
VALUES (1, 'uptime', 'nodemcu', 'nodemcu', 'virtual', true, 'ESP32');

INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (2, 'temperature', 'piano', 'nodemcu', 'inside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (3, 'humidity', 'piano', 'nodemcu', 'inside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (4, 'battery-level', 'piano', 'nodemcu', 'inside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (5, 'rssi-value', 'piano', 'nodemcu', 'inside', true, 'LYWSD03MMC');

INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (6, 'temperature', 'kitchen', 'nodemcu', 'inside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (7, 'humidity', 'kitchen', 'nodemcu', 'inside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (8, 'battery-level', 'kitchen', 'nodemcu', 'inside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (9, 'rssi-value', 'kitchen', 'nodemcu', 'inside', true, 'LYWSD03MMC');

INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (10, 'temperature', 'patio', 'nodemcu', 'outside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (11, 'humidity', 'patio', 'nodemcu', 'outside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (12, 'battery-level', 'patio', 'nodemcu', 'outside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (13, 'rssi-value', 'patio', 'nodemcu', 'outside', true, 'LYWSD03MMC');
