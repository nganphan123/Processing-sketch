class graph{
  ArrayList<Node> nodes = new ArrayList(); //contains nodes
  edge[] edges = new edge[10]; //contains edges
  
  Node a = new Node("A",width/5,height/2.5);
  Node b = new Node("B",width/3,height/4);
  Node c = new Node("C",width/2,height/2.5);
  Node d = new Node("D",2.5*width/4,height/4);
  Node e = new Node("E",3*width/4,height/2.5);
  Node f = new Node("F",2.5*width/4,2.3*height/4);
  Node g = new Node("G",width/2,3*width/4);
  Node h = new Node("H",3*width/4,3*width/4);
  Node s = new Node("S",width/3,2.3*height/4);
  
  public graph(){
    //add nodes
    nodes.add(a);
    nodes.add(b);
    nodes.add(c);
    nodes.add(d);
    nodes.add(e);
    nodes.add(f);
    nodes.add(g);
    nodes.add(h);
    nodes.add(s);
    
    //add edges
    edges[0] = new edge(a,b);
    edges[1] = new edge(a,s);
    edges[2] = new edge(s,c);
    edges[3] = new edge(s,g);
    edges[4] = new edge(c,d);
    edges[5] = new edge(c,e);
    edges[6] = new edge(c,f);
    edges[7] = new edge(g,f);
    edges[8] = new edge(g,h);
    edges[9] = new edge(e,h);
}}
