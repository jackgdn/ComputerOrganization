int sum_of_first_n_natural_numbers(int n)
{
    int result = n;
    while (n--) result += n;
    return result;
}
