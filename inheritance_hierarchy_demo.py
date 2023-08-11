"""
parent class, superclass, and base class
"""


class Parent:
    # Parent's definition goes here...
    pass


"""
child class, derived class, and subclass
"""


class Child(Parent):
    # Child definitions goes here...
    pass


def my_function_equal_to_lambad(x):
    return x[1]


class Vehicle:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year
        self._started = False

    def start(self):
        print("Starting engine...")
        self._started = True

    def stop(self):
        print("Stopping engine...")
        self._started = False

    # lambda x: x[1]


class Car(Vehicle):
    def __init__(self, make, model, year, num_seats):
        super().__init__(make, model, year)
        self.num_seats = num_seats

    def drive(self):
        print(f'Driving my "{self.make} - {self.model}" on the road')

    def __str__(self):
        return f'"{self.make} - {self.model}" has {self.num_seats} seats'


class Motorcycle(Vehicle):
    def __init__(self, make, model, year, num_wheels):
        super().__init__(make, model, year)
        self.num_wheels = num_wheels

    def ride(self):
        print(f'Riding my "{self.make} - {self.model}" on the road')

    def __str__(self):
        return f'"{self.make} - {self.model}" has {self.num_wheels} wheels'


class MultiClass:
    pass


if __name__ == '__main__':
    print("Showing you stuff related to inheritance")
    tesla = Car("Tesla", "Model S", 2022, 5)
    harley = Motorcycle("Harley-Davidson", "Iron 883", 2021, 2)
    tesla.start()
    tesla.drive()
    tesla.stop()
    harley.start()
    harley.ride()
    harley.stop()
    import json
    my_json = json.dumps(tesla)
    import pprint
    pprint.pprint(my_json)
    """
    M R O -> algorithm to find the name in a hierarchy
The current class
The leftmost superclasses
The superclass listed next, from left to right, up to the last superclass
The superclasses of inherited classes
The object class
    """
