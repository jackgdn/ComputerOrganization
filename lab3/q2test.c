#include <stdio.h>
#include "q2.h"

int main() {
    int n;

    n = 5;
    printf("The sum of the first %d natural numbers is %d.\n", n, sum_of_first_n_natural_numbers(n));

    n = 1;
    printf("The sum of the first %d natural numbers is %d.\n", n, sum_of_first_n_natural_numbers(n));

    return 0;
}
