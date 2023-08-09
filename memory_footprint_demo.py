class OptimisedPoint:
    __slots__ = ("x", "y")

    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __str__(self):
        return f"Optimised Point {self:x}-{self.y}"


class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y

        def __str__(self):
            return f"Normal Point {self:x}-{self.y}"


if __name__ == '__main__':
    print("Executing stuff")
    """
    # from pympler import asizeof
    # pip install pymbler first
    print(asizeof.asizeof(Point(4, 8)))
    print(asizeof.asizeof(OptimisedPoint(4, 8)))
    """

