import { BrokerConfig } from 'rascal'

const config: BrokerConfig = {
    vhosts: {
        '/': {
            connection: {
                url: 'amqp://localhost',
            },
            exchanges: [
                {
                    name: 'event-exchange',
                    type: 'topic',
                    options: { durable: true },
                },
            ],
            queues: [
                { name: 'listing-add-queue', options: { durable: true } },
                { name: 'listing-remove-queue', options: { durable: true } },
                { name: 'sale-add-queue', options: { durable: true } },
                { name: 'sale-remove-queue', options: { durable: true } },
            ],
            bindings: [
                {
                    source: 'event',
                    destination: 'listing-add-queue',
                    bindingKey: 'listings.add',
                },
                {
                    source: 'events',
                    destination: 'listing-remove-queue',
                    bindingKey: 'listings.remove',
                },
                {
                    source: 'events',
                    destination: 'sale-add-queue',
                    bindingKey: 'sales.add',
                },
                {
                    source: 'events',
                    destination: 'sale-remove-queue',
                    bindingKey: 'sales.remove',
                },
            ],
            publications: {
                'event-publisher': {
                    exchange: 'event-exchange',
                    options: { persistent: true },
                },
            },
        },
    },
}

export default config
