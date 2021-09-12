function validateItems(items) {
    if (!Array.isArray(items)) {
        throw 'Input is not an array'
    }

    if (items.length === 0) {
        throw 'Input is empty'
    }
}

function findMin(items) {
    validateItems(items)

    const length = items.length
    let result = Number.MAX_SAFE_INTEGER

    for (let i = 0; i < length; i++) {
        const item = items[i]

        if (item < result) {
            result = item
        }
    }

    return result
}

function findMax(items) {
    validateItems(items)

    const length = items.length
    let result = Number.MIN_SAFE_INTEGER

    for (let i = 0; i < length; i++) {
        const item = items[i]

        if (item > result) {
            result = item
        }
    }

    return result
}

function findMean(items) {
    validateItems(items)

    const length = items.length
    let sum = 0

    for (let i = 0; i < length; i++) {
        sum += items[i]
    }

    return sum / length
}

module.exports = {
    findMin,
    findMax,
    findMean,
}
