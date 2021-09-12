function factorial(number) {
    if (number > 1) {
        return factorial(number - 1) * number
    }

    return number
}

module.exports = {
    factorial
}
