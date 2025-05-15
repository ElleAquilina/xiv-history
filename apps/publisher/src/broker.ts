import rascal from 'rascal'
import config from '../rascal-config'

const brokerConfig = rascal.withDefaultConfig(config)
const brokerPromise = rascal.BrokerAsPromised.create(brokerConfig)

export async function publishEvent(routingKey: string, payload: any) {
    const broker = await brokerPromise
    const publication = await broker.publish('event-publisher', payload, {
        routingKey,
    })

    publication.on('success', (messageId) => {
        console.log(`[Broker] Message published (${routingKey}):`, messageId)
    })

    publication.on('error', (err, messageId) => {
        console.error(
            `[Broker] Failed to publish (${routingKey}):`,
            err,
            messageId,
        )
    })
}
