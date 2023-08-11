"""
Instance methods, which take the current instance, self, as their first argument
Class methods, which take the current class, cls, as their first argument
Static methods, which take neither the class nor the instance
"""


class MethodsClass:
    def __init__(self, x, y, z):
        self.x = x
        self.y = y
        self.z = z

    @classmethod
    def from_sequence(cls, sequence):
        return cls(*sequence)

    """
    Static methods like .show_intro_message() don’t operate on the current instance, self, or the current class, cls. They work as independent functions enclosed in a class. You’ll typically put them inside a class when they’re closely related to that class but don’t 
    necessarily affect the class or its instances.
    """

    @staticmethod
    def show_intro_message(name):
        print(f"Hey {name}! This is your Methods Demo")

    def __str__(self):
        return f"Values {self.x} {self.y} {self.z}"

    def __cmp__(self, other):
        if self.x > other.x:
            return 0

    def __gt__(self, other):
        return int(self.x) > int(other.x)

    def __iter__(self):
        yield from (1, 2, 3)

    def __enter__(self):
        pass

    def __exit__(self, exc_type, exc_val, exc_tb):
        pass


class TrainingDashboard(list):
    def __init__(self):
        super().__init__()
        self.participant = ["student1", "student1", "student1"]
        self.topics = []

    def __iter__(self):
        ctr = 0
        yield ctr + 1
        yield


if __name__ == '__main__':
    print("Showing the demo for object and its methods")
    MethodsClass.show_intro_message("Suresh")
    mylist = [10, 20, 30]
    obj1 = MethodsClass(10, 20, 30)
    obj2 = MethodsClass(20, 30, 40)
    dashbrd = TrainingDashboard()
    print(obj2 > obj1)
    with obj2 as fr:
        pass


