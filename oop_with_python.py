"""
Define Python classes with the class keyword
Add state to your classes with class and instance attributes
Provide behavior to your classes with methods
Use inheritance to build hierarchies of classes
Provide interfaces with abstract classes
"""


class BluePrint:
    # the recommended naming convention for Python classes is the PascalCase,
    # where each word is capitalized.
    # Instance attributes
    # Instance Methods

    def __init__(self):
        self.field1 = "Data"

    def my_method(self):
        print(self.field1);


class NoAccessModifiers:

    def __init__(self, value):
        self._privatevalue = value
        self.__mangledvalue = value
        self.publicvalue = value

    def method(self):
        print(f"The Mangled name holds : {self.__mangledvalue}")
        print(f"The Private name holds : {self.__mangledvalue}")
        print(f"The Public name holds : {self.__mangledvalue}")


class InstanceClassAttributes:
    """

    """
    instance_counter = 0

    def __init__(self, constructor_arg):
        InstanceClassAttributes.instance_counter += 1
        self.attribute1 = "some value"
        self._private_attribute = constructor_arg

    def print_values(self):
        print(f"The class level name has value: {InstanceClassAttributes.instance_counter}")
        print(f"The public attribute has value: {self.attribute1}")
        print(f"The private attribute has value: {self._private_attribute}")


class DynamicAttributes:
    def show_value(self):
        for att_field, att_value in self.__dict__.items():
            print(f"{att_field} has value {att_value}")


if __name__ == '__main__':
    """
    copy = BluePrint()
    print(type(copy))
    print(isinstance(copy, BluePrint))
    # The .__dict__ Attribute

    # Objects can be constructed with dynamic attributes on the fly
   
    data_from_csv = {
        "name": "John Doe",
        "position": "Python Developer",
        "department": "Engineering",
        "salary": 80000,
        "hire_date": "2020-01-01",
        "is_manager": False,
    }

    new_object = DynamicAttributes()
    # with this data
    for field, value in data_from_csv.items():
        setattr(new_object, field, value)
    new_object.show_value()
     
    # Testing Python programs
    # assert(sum([1,2,3])) == 5
    instance = BluePrint()
    print(type(instance))
    instance.my_method()
    """
    nom_instance = NoAccessModifiers(11)
    nom_instance.method()
    nom_instance._privatevalue = 200
    nom_instance.publicvalue = 300
    nom_instance.method()
    print(nom_instance._privatevalue)
    print(nom_instance.publicvalue)
    print(dir(nom_instance))
    print(nom_instance._NoAccessModifiers__mangledvalue)

