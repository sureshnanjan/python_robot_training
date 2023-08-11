"""
Iterator	Allows you to create iterator objects	.__iter__() and .__next__()
Iterable	Makes your objects iterable	.__iter__()
Descriptor	Lets you write managed attributes	.__get__() and optionally .__set__(), .__delete__(), and .__set_name__()
Context manager	Enables an object to work on with statements	.__enter__() and .__exit__()
"""


class ThreeDPoint:
    def __init__(self, x, y, z):
        self.x = x
        self.y = y
        self.z = z

    def __iter__(self):
        yield from (self.x, self.y, self.z)