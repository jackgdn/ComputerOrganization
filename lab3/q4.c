#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define filterSize 3
#define matrixSize 3

int filter[filterSize][filterSize];
int o_val[matrixSize][matrixSize];
int n_val[matrixSize][matrixSize];



int main(int argc, char *argv[])
{
    FILE *file1, *file2;
    int i = 0;
    int j, k, l;
    int iter;

    if (argc < 4)
    {
        printf("Usage: ./convolution2 data1.txt filter1.txt temp111 1\n");
        return 1;
    }
    file1 = fopen(argv[1], "r");
    file2 = fopen(argv[2], "r");
    if ((file1 == NULL) || (file2 == NULL))
    {
        printf("Error: Files cannot open\n");
        return 1;
    }
    iter = atoi(argv[3]);
    if (iter == 0)
    {
        printf("Error: Invalid iteration\n");
        return 1;
    }

    for (i = 0; i < matrixSize; i++)
    {
        for (j = 0; j < matrixSize; j++)
            fscanf(file1, "%d,", &o_val[i][j]);
    }
    for (i = 0; i < filterSize; i++)
    {
        for (j = 0; j < filterSize; j++)
            fscanf(file2, "%d,", &filter[filterSize - i - 1][filterSize - j - 1]);
    }
    fclose(file1);
    fclose(file2);

    for (int it = 0; it < iter; it++)
    {
        for (i = 0; i < matrixSize; i++)
        {
            for (j = 0; j < matrixSize; j++)
            {
                n_val[i][j] = 0;
                for (k = 0; k < filterSize; k++)
                {
                    for (l = 0; l < filterSize; l++)
                    {
                        int x = k - filterSize + 1 + i;
                        int y = l - filterSize + 1 + j;
                        if (x >= 0 && y >= 0)
                            n_val[i][j] += filter[k][l] * o_val[x][y];
                    }
                }
            }
        }

        if (it < iter - 1)
        {
            for (i = 0; i < matrixSize; i++)
            {
                for (j = 0; j < matrixSize; j++)
                    o_val[i][j] = n_val[i][j];
            }
        }
    }

    for (int i = 0; i < matrixSize; i++)
    {
        for (int j = 0; j < matrixSize - 1; j++)
            printf("%d ", n_val[i][j]);

        printf("%d\n", n_val[i][matrixSize - 1]);
    }

    return 0;
}
