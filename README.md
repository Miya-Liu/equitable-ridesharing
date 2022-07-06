# Equitable Ridesharing Project

This project shows our design of a ridesharing system which is Efficient (optimality-aware), Sustainable (environment-aware) and Equitable (preference-aware). 

### Benchmark Instance

The real data from a Chinese ridesharing company, Didi. 
The instances are from [Cargo](https://github.com/jamjpan/Cargo_benchmark).
The format of the Road map *.edges:
> Line 1: (number nodes) (number edges)
>
> Line 2-end: (node_1) (node_2) (weight)

The format of the instances:
> Line 1: (instance name), rs-\[city name\]-\[vehicle number\]-\[vehicle capacity\]-...
>
> Line 2: (road network) TAXI
>
> Line 3: VEHICLES (number of vehicles)
>
> Line 4: CUSTOMERS (number of customers)
>
> Line 5: blank line
>
> Line 6: header row: ID    ORIGIN	DEST	Q	EARLY	LATE
>>
>> ID: index of a vehicle or a rider
>>
>> ORIGIN and DEST: the starting point and destination of a vehicle or a rider
>>
>> Q: If Q < 0, it means that row records a vehicle and |Q| is the capacity of the vehicle. Otherwise, Q = 1 and the row represents a rider.
>>
>> EARLY and LATE: there is no clear explanation about these tow column. It is highly likely that they represents the time of starting and ending a ride for a rider or a vehilce. And it has been explained that when LATE = -1, it means a vehicle will never stop. 
>
> Line 7-end: vehicles and customers

We use the EARLY as the earlest leaving time of a rider and the starting time of a vehicle. 
