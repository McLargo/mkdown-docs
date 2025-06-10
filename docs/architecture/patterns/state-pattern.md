# State pattern

The State Pattern is a behavioral design pattern that allows an object to alter
its behavior when its internal state changes. The object will appear to change
its class at runtime, specially when yo have multiple conditional statements
that switch the object behavior based on its state. You can add new states to
your system without altering existing code.

## Key components

- **Context**: The object that has a current state, delegating all
  state-specific work to this object.
- **State**: interface defining the behavior associated with a particular state
  of the context.
- **Concrete State**: classes that implement the State interface, defining the
  behavior associated with a particular state of the context.

## Example

Let's consider a traffic light system with three states: `Red`, `Yellow`, and
`Green`.

```python
from abc import ABC, abstractmethod

# State interface
class TrafficLightState(ABC):
    @abstractmethod
    def change(self):
        pass

# Concrete states
class RedLight(TrafficLightState):
    def change(self):
        return "Yellow"

class YellowLight(TrafficLightState):
    def change(self):
        return "Green"

class GreenLight(TrafficLightState):
    def change(self):
        return "Red"

# Context
class TrafficLight:
    def __init__(self):
        self.state = RedLight()

    def change(self):
        self.state = {
            RedLight: YellowLight(),
            YellowLight: GreenLight(),
            GreenLight: RedLight()
        }[type(self.state)]

    def current_state(self):
        return type(self.state).__name__

# Usage
traffic_light = TrafficLight()
print(traffic_light.current_state())  # Red
traffic_light.change()
print(traffic_light.current_state())  # Yellow
traffic_light.change()
print(traffic_light.current_state())  # Green
traffic_light.change()
print(traffic_light.current_state())  # Red
```

## Advantages

- **Simplicity**: It simplifies complex conditional statements by encapsulating
  state-specific behavior.
- **Maintainability**: Adding new states or modifying existing ones is easier
  without affecting other parts of the code.
- **Readability**: The code becomes more readable and self-explanatory as state
  transitions are clearly defined.
- **Testing**: Testing individual states becomes straightforward, enhancing the
  overall code quality.

## Use Cases

- Document Editing
- Traffic Light
- Vending Machine
- Booking System
- eCommerce Checkout

## References

- [State Pattern in python](https://medium.com/@amirm.lavasani/design-patterns-in-python-state-8916b2f65f69)
- [Transitioning - python library](https://github.com/pytransitions/transitions)
