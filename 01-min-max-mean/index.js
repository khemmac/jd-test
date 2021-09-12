function findMinMaxMean(items) {
    if (!Array.isArray(items)) {
        throw 'Input is not an array'
    }

    if (items.length === 0) {
        throw 'Input is empty'
    }

    const itemLength = items.length
    const lastIndex = itemLength - 1

    return items.reduce((accumulate, item, index) => {
        if (item > accumulate.max) {
            accumulate.max = item
        }

        if (item < accumulate.min) {
            accumulate.min = item
        }

        accumulate.mean += item

        if (index === lastIndex) {
            accumulate.mean = accumulate.mean / itemLength
        }

        return accumulate
    }, {
        min: Number.MAX_SAFE_INTEGER,
        max: Number.MIN_SAFE_INTEGER,
        mean: 0,
    })
}

module.exports = {
    findMinMaxMean
}
