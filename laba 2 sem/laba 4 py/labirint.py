def dfs(graph, start,end, visited=None, path=None):
    if visited is None:
        visited = set()

    if path is None:
        path = list()

    visited.add(start)
    path.append(start)

    if start == end:
        return path


    for next in graph[start] - visited:
        new_path = dfs(graph, next, end, visited,path)
        if new_path:
            return new_path
    path.pop()

graph = {'0': set(['1', '2']),
         '1': set(['0', '3', '4']),
         '2': set(['4']),
         '3': set(['1']),
         '4': set(['2', '3'])}
result = dfs(graph, '0',"4")
if result:
    print(result)