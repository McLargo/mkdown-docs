# C4 Model

[C4 model](https://c4model.com/) represents different diagrams for different
roles working together for the same ecosystem. Not everyone needs the same level
of details on a system/service. Different levels reaches to different roles. And
it is easy to zoom-in/zoom-out to understand more/less details.

## L1 - System contexts

Big boxes, where different system of the ecosystem working together

## L2 - container diagram

Zoom in on a system. What is inside, different services running inside it (web
page, database mobile app...) and relationships

## L3 - component diagram

Zoom in a container. How the code will be divided, major building blocks and
their interactions

## L4 - Code

Zoom in a component, usually is not recommend, as it contains too much details,
and it is not worthy. Can be generated on demand by IDE

## Notations and tips

- Title, short and meaningful
- Keep Visual consistency
- Avoid acronyms
- Schema of a box
    - Name
    - [What represent]
    - Description
- Lines, usually uni-directional. Shows data flows, with explicit notation on it
- Show bi-directional lines when intents are different
- Add words to make the intent explicit
- Key/Legend to explain shapes, lines, colors, border... even if they seem obvious
- Increase the readability of software architecture diagrams, so they can stand alone

## References

- [C4 modelling tool](https://icepanel.io/)
