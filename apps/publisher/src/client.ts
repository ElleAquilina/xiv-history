import { deserialize } from 'bson'
import { WebSocket } from 'ws'
import { toRoutingKey } from '../types/channels'
import { publishEvent } from './broker'

const ADDR: string = process.env.UNIVERSALIS_WS || 'localhost'

export async function startWebSocketClient() {
    const ws = new WebSocket(ADDR)

    ws.on('open', () => {
        console.log('[Client] Connection opened.')
    })

    ws.on('message', async (data: Uint8Array) => {
        try {
            const message = deserialize(data)
            const routingKey = toRoutingKey(message.event)

            if (!routingKey) {
                console.error(
                    '[Client] Failed to parse routing key:',
                    message.event,
                )
            }

            await publishEvent(routingKey, message)
        } catch (err) {
            console.error('[Client] Failed to process message:', err)
        }
    })

    ws.on('close', () => {
        console.log('[Client] Connection closed.')
    })

    ws.on('error', (err) => {
        console.error('[Client] Connection error:', err)
    })
}
