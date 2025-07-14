import Foundation

let romanNumerals: [Character: Int] = [
    "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000
]

let arabicToRomanMap: [(Int, String)] = [
    (1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
    (100, "C"), (90, "XC"), (50, "L"), (40, "XL"),
    (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")
]

func romanToArabic(_ roman: String) -> Int {
    let chars = Array(roman)
    var arabic = 0
    var i = 0

    while i < chars.count {
        let currentVal = romanNumerals[chars[i]]!
        
        if i + 1 < chars.count, let nextVal = romanNumerals[chars[i + 1]], nextVal > currentVal {
            arabic += (nextVal - currentVal)
            i += 2
        } else {
            arabic += currentVal
            i += 1
        }
    }
    return arabic
}

func arabicToRoman(_ arabic: Int) -> String {
    var num = arabic
    var roman = ""

    for (value, symbol) in arabicToRomanMap {
        while num >= value {
            roman += symbol
            num -= value
        }
    }
    return roman
}

func solve() {
    let roman1 = readLine() ?? ""
    let roman2 = readLine() ?? ""

    let arabicSum = romanToArabic(roman1) + romanToArabic(roman2)
    print(arabicSum)

    let finalRoman = arabicToRoman(arabicSum)
    print(finalRoman)

}

solve()
