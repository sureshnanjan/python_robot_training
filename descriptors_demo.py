import math


class PositiveNumber:
    def __set_name__(self, owner, name):
        self._name = name

    def __get__(self, instance, owner):
        return instance.__dict__[self._name]

    def __set__(self, instance, value):
        if not isinstance(value, int | float) or value <= 0:
            raise ValueError("positive number expected")
        instance.__dict__[self._name] = value


class Circle:
    radius = PositiveNumber()

    def __init__(self, radius):
        self.radius = radius

    def calculate_area(self):
        return round(math.pi * self.radius ** 2, 2)


class Square:
    side = PositiveNumber()

    def __init__(self, side):
        self.side = side

    def calculate_area(self):
        return round(self.side ** 2, 2)


class SquareWithProperty:
    def __init__(self, radius):
        self._radius = radius

    @property
    def radius(self):
        return self._radius

    @radius.setter
    def radius(self, value):
        if not isinstance(value, int | float) or value <= 0:
            raise ValueError("positive number expected")
        self._radius = value

    def calculate_area(self):
        return round(math.pi * self._radius ** 2, 2)

    def __str__(self):
        return  f"Circle with Radius: {self.radius}"


if __name__ == '__main__':
    print("Executing stuff")
    """
        circle_1 = SquareWithProperty(100)
    print(circle_1)
    try:
        circle_1.radius = -100
    except ValueError:
        print("Not Valid value")
        raise ValueError("The Input should More Than 0")
    """

    circle = Circle(100)
    circle.radius = 200
    shp = Square(20)
    shp.side = -1
