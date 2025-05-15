# xiv-history: ingest
This is the ingest service for XIV history.

Data is ingested from the Universalis API, and sent to the RabbitMQ message queue/

## Technologies
This service the following technologies:
- **_ws_**: WebSocket client to connect to Universalis
- **_bson_**: Deserialize incoming websocket messages
- **_Rascal_**: RabbitMQ client library with a higher abstraction than amqplib