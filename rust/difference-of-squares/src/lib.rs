pub fn square_of_sum(n: u32) -> u32 {
    let mut sum = 0;
    for n in 1..(n + 1) {
        sum += n
    }
    return sum * sum;
}

pub fn sum_of_squares(n: u32) -> u32 {
    let mut sum = 0;
    for n in 1..(n + 1) {
        sum += n * n
    }
    return sum;
}

pub fn difference(n: u32) -> u32 {
    square_of_sum(n) - sum_of_squares(n)
}
