import { deserialize, serialize } from 'bson'
import rascal from 'rascal'
import { WebSocket } from 'ws'
import config from '../rascal-config'
const brokerConfig = rascal.withDefaultConfig(config)

const ADDR: string = process.env.UNIVERSALIS_WS || 'localhost'

async function startWebSocketClient() {
    const ws = new WebSocket(ADDR)
    const broker = await rascal.BrokerAsPromised.create(brokerConfig)

    broker.on('error', (err) => {
        console.error('[WS] Broker error:', err)
    })

    ws.on('open', () => {
        console.log('[WS] Connection opened.')
        ws.send(serialize({ event: 'subscribe', channel: 'listings/add' }))
        ws.send(serialize({ event: 'subscribe', channel: 'listings/remove' }))
        ws.send(serialize({ event: 'subscribe', channel: 'sales/add' }))
        ws.send(serialize({ event: 'subscribe', channel: 'sales/remove' }))
        console.log('[WS] Subscriptions opened.')
    })

    ws.on('close', () => {
        console.log('[WS] Connection closed.')
    })

    ws.on('error', (err) => {
        console.error('[WS] Connection error:', err)
    })

    ws.on('message', async (data: Uint8Array) => {
        try {
            const message = deserialize(data)
            const { event } = message

            // Change 'listings/add' to 'listings.add'
            const routingKey = event.replace('/', '.')

            // Publish to events exchange
            const publication = await broker.publish(
                'eventPublisher',
                message,
                {
                    routingKey,
                },
            )

            publication.on('success', (messageId) => {
                console.log('[WS] Published message:', messageId)
            })

            publication.on('error', (err, messageId) => {
                console.error('[WS] Failed to publish message:', err, messageId)
            })
        } catch (err) {
            console.error('[WS] Failed to process message:', err)
        }
    })
}

startWebSocketClient().catch((err) => {
    console.error('[WS] Failed to start WebSocket client:', err)
})
