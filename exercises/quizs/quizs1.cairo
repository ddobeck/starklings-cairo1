// Mary is buying apples. The price of an apple is calculated as follows:
// - An apple costs 3 cairobucks.
// - If Mary buys more than 40 apples, each apple only costs 2 cairobuck!
// Write a function that calculates the price of an order of apples given
// the quantity bought. No hints this time!


// Put your function here!
fn calculate_price_of_apples(num_apples: felt) -> felt {
    if num_apples > 40 {
        return num_apples * 2;
    } 
    else {
        return num_apples * 3;
    }

}


// Do not change the tests!
#[test]
fn verify_test() {
    let price1 = calculate_price_of_apples(35);
    let price2 = calculate_price_of_apples(40);
    let price3 = calculate_price_of_apples(41);
    let price4 = calculate_price_of_apples(65);

    assert(105 == price1, '35 apples == 105 cbucks');
    assert(120 == price2, '40 apples == 120 cbucks');
    assert(82 == price3, '41 apples == 82 cbucks');
    assert(130 == price4, '65 apples == 130 cbucks');
}