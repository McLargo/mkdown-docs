# Websocket

Websocket provides a communication protocol that enables bidirectional
communication within the client and server over a persistent connection at the
initial handshake. Let see more into details:

- enables bidirectional communication within the client and server: full-duplex
  communication, client/server can send message at any time.
- over a persistent connection at the initial handshake: the connection is
  initiated by the client through HTTP request, and the server accepts it. After
  the handshake, the connection is kept open until the client or server closes
  it. It reduces the overhead of creating a new connection for each message and
  lowers the latency.

## Use cases

Most of the cases where real-time communication is needed, websocket can be the
perfect solution to your problem. Here are some examples:

- Chats: websocket enables real-time communication between users.
- Online games: websocket facilitates real-time communication between players
  and servers.
- Financial applications: websocket can be used to provide real-time updates on
  stock prices, currency exchange rates, etc.
- Collaborative applications: websocket can be used to enable real-time editing
  of online documents, spreadsheets, etc.

## References

- [Python websocket](https://websockets.readthedocs.io/en/stable/)
