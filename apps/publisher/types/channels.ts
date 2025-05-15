export const CHANNELS = [
    'listings/add',
    'listings/remove',
    'sales/add',
    'sales/remove',
] as const

type Channel = (typeof CHANNELS)[number]

const routingKeyMap: Record<Channel, string> = {
    'listings/add': 'listing.add',
    'listings/remove': 'listing.remove',
    'sales/add': 'sale.add',
    'sales/remove': 'sale.remove',
}

export function toRoutingKey(event: string) {
    return routingKeyMap[event as Channel]
}
