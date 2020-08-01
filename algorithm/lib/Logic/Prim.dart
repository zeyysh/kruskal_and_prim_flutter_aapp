class Prim{
  var list = List();
  var result = List();
  Prim(List list){
    this.list = list;
  }
  void main(){
    int max = 0;
    int k = list?.length;
    if(list?.length == null ){
      k =0;}
    for(int i =0 ; i<k ; i++){
      for(int j =0 ; j<2 ; j++){
        if(list[i][j] > max){
          max = list[i][j];
        }
      }
      }
    max++;
    Graph g = Graph(max);
    var graph = List.generate(max, (i) => List.filled(max,0));
    print(graph);
    if(list?.length != null) {
      for (int i = 0; i < list.length ; i++) {
        graph[list[i][0]][list[i][1]] = list[i][2];
        graph[list[i][1]][list[i][0]] = list[i][2];
      }
      print(graph);

      g.graph = graph;
      g.primMST();
      result = g.GetResult();
      print('re');
      print(result);
    }
  }
  getList (){
    return result;
  }
}


class Graph{
  int int64MaxValue = 9223372036854775807;
  var V;
  List graph;
  var result = List();
  GetResult(){
    return result;
  }
  Graph(var vertices, ){
  this.V = vertices;
  this.graph = List.generate(V, (i) => List.filled(V+1,0));
  }

  printMST(var parent){
  for(int i = 1 ; i < V ; i++){
  int u = parent[i];
  int v = i;
  int w = graph[i][parent[i]];
  result.add([u,v,w]);
  print('$u -- $v == $w ');
  }
  }

  minKey(var key, var mstSet){
  var min = int64MaxValue;
  var min_index ;
  for(int i =0 ; i<V ; i++){
  if(key[i] < min && mstSet[i]== false ){
  min = key[i];
  min_index = i;
  }
  }
  return min_index;
  }


  primMST(){
    var key = List.filled(this.V, int64MaxValue);
    var parent = List.filled(this.V, 0);
    key[0] = 0;
    var mstSet = List.filled(this.V, false);
    parent[0] = -1;
    for(int j=0 ; j< this.V ; j++){
      var u = minKey(key, mstSet);
      mstSet[u] = true;
      for(int v=0 ; v< this.V ; v++){

        if(graph[u][v] > 0 && mstSet[v] == false && key[v] > graph[u][v]){
          key[v] = graph[u][v];
          parent[v] = u;
        }
      }
      }
    printMST(parent);
  }

}

