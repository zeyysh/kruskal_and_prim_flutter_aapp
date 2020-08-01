class Kruskal{
  var list = List();
  var result = List();
  Kruskal(List list){
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
    print(list);
    if(list?.length != null) {
      for (int i = 0; i < list.length; i++) {
        g.addEdge(list[i][0], list[i][1], list[i][2]);
        print(list[i][2]);
      }
    }
    g.KruskalMST();
    result = g.GetResult();
  }
  getList (){
    return result;
  }
}

class Graph{
  int V, E;
  var graphM = List();
  var result = List();
  GetResult(){
    return result;
  }
  Graph(int v){
    V = v;
  }

  addEdge(int u, int v, int w){
    graphM.add([u,v,w]);
  }

  find(List parent, int i){
    if(parent[i] == i){
      return i;
    }
    else{
      return find(parent, parent[i]);
    }
  }

  union(List parent, List rank, int x, int y){
    var xroot = find(parent, x);
    var yroot = find(parent, y);
    if(rank[xroot] < rank[yroot]){
      parent[xroot] = yroot;
    }else if(rank[xroot] > rank[yroot]){
      parent[yroot] = xroot;
    }else{
      parent[yroot] = xroot;
      rank[xroot] +=1;
    }
  }

  sort(List arr){
    int n = arr?.length;
    if(arr?.length == null){
      n =0;
    }
    for (int i = 1; i < n; ++i) {
      int key = arr[i][2];
      var key1 = arr[i];
      int j = i - 1;
      while (j >= 0 && arr[j][2] > key) {
        arr[j + 1] = arr[j];
        j = j - 1;
      }
      arr[j + 1] = key1;
    }
  }

  KruskalMST(){
    int i = 0;
    int e = 0;
    sort(graphM);
    var parent = List();
    var rank = List();

    for(int k =0 ; k < this.V ; k++){
      parent.add(k);
      rank.add(0);
    }

    while(e < this.V -1){

      var u = graphM[i][0];
      var v = graphM[i][1];
      var w = graphM[i][2];
      i = i+1;
      int x = find(parent, u);
      int y = find(parent, v);
      if (x!=y){
        e = e+1;
        result.add([u,v,w]);
        union(parent, rank, x, y);
      }
    }
    int k = result?.length;
    if(result?.length == null ){
      k =0;
    }
    for(int j = 0 ; j < k ; j++){
      int u = result[j][0];
      int v = result[j][1];
      int w = result[j][2];
      print('$u -- $v == $w ');
    }
  }
}

