# :watch: Calculate Most Free Time - Dart


## :question: Description
This is an algorithm that gets events happen to a person in one day; these event aren't necessarily in order. After that it calculates most free time between events.Note that the input format are in 12-hour format and output must be in **hh:mm** format.


## Example

#### :woman_office_worker: input:

```
  [ '10:00AM-12:30PM',
    '02:00PM-02:45PM',
    '9:10AM-9:50AM' ]
```


#### :lotus_position: output:
```
  01:30
```

## Solution

#### Step 1:  Extract an Event-List from given Input.

#### Step 2:  Sort List in order of Event_Start_Time

#### Step 3:  

- Convert hh:mm format to minute-format: hour * 60 + minutes
- Calculating the difference between the end time of the first event and the start time of the next event
- Keeping the longest time between two events

#### Step 4: Convert max_rest_time to hh:mm format
