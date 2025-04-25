import networkx as nx
import matplotlib.pyplot as plt
from collections import deque

def bfs(graph, start):
    visited = set()
    queue = deque([start])
    bfs_order = []

    plt.ion()
    pos = nx.spring_layout(graph)

    while queue:
        vertex = queue.popleft()
        if vertex not in visited:
            visited.add(vertex)
            bfs_order.append(vertex)


            plt.clf()
            nx.draw(graph, pos, with_labels=True, node_color='lightblue', node_size=2000, font_size=16,
                    font_color='black', font_weight='bold')
            nx.draw_networkx_nodes(graph, pos, nodelist=visited, node_color='red')
            plt.title(f"BFS Visualization - Current Node: {vertex}")
            plt.pause(1)


            for neighbor in graph[vertex]:
                if neighbor not in visited:
                    queue.append(neighbor)

    plt.ioff()
    plt.show()


G = nx.Graph()
edges = [
    ('A', 'B'), ('A', 'C'),
    ('B', 'D'), ('B', 'E'),
    ('C', 'F'),
    ('D', 'G'),
    ('F', 'H'),
    ('G', 'H')
]
G.add_edges_from(edges)

start_node = 'A'
bfs(G, start_node)
