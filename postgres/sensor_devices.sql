\c esphome

INSERT INTO sensors (id, type, location, hostname, class, active, device) 
VALUES (1, 'uptime', 'piano', 'nodemcu', 'virtual', true, 'ESP32');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (2, 'temperature', 'piano', 'nodemcu', 'inside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (3, 'humidity', 'piano', 'nodemcu', 'inside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (4, 'battery-level', 'piano', 'nodemcu', 'inside', true, 'LYWSD03MMC');
INSERT INTO sensors (id, type, location, hostname, class, active, device)
VALUES (5, 'rssi-value', 'piano', 'nodemcu', 'inside', true, 'LYWSD03MMC');
