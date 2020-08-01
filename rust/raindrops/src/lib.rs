pub fn raindrops(n: u32) -> String {
    let mut result = "".to_string();
    let factor_3 = n % 3 == 0;
    let factor_5 = n % 5 == 0;
    let factor_7 = n % 7 == 0;

    if factor_3 {
        result += "Pling"
    }

    if factor_5 {
        result += "Plang"
    }

    if factor_7 {
        result += "Plong"
    }

    if !(factor_3 || factor_5 || factor_7) {
        result = n.to_string()
    }

    return result
}
