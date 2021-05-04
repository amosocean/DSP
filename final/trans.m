function in=trans(num)
    switch num
        case{'1'}
            in=[1 1];
        case{'2'}
            in=[1 2];
        case{'3'}
            in=[1 3];
        case{'A'}
            in=[1 4];
        case{'4'}
            in=[2 1];
        case{'5'}
            in=[2 2];
        case{'6'}
            in=[2 3];
        case{'B'}
            in=[2 4];
        case{'7'}
            in=[3 1];
        case{'8'}
            in=[3 2];
        case{'9'}
            in=[3 3];
        case{'C'}
            in=[3 4];
        case{'*'}
            in=[4 1];
        case{'0'}
            in=[4 2];
        case{'#'}
            in=[4 3];    
        case{'D'}
            in=[4 4]; 
    end
end