use lib::par_prover::numero_par;
use lib::prime_prover::n_primo;
use lib::sum_n::sumando_n;

#[executable]
fn main() {
    sumando_n();
    n_primo();
    numero_par();
}
