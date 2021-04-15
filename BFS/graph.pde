

//Map<String,Boolean> nodes = new HashMap(); //nodes
//ArrayList<String>[] edges = new ArrayList[10];
//Queue<String> queue = new LinkedList();

class graph{
  ArrayList<Node> nodes = new ArrayList();
  //ArrayList<Node>[] edges = new ArrayList[10];
  Map<Node,List<edge>> edges = new HashMap<>();
  
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
    //edges[0] = new ArrayList(Arrays.asList(a,b));
    //edges[1] = new ArrayList(Arrays.asList(a,s));
    //edges[2] = new ArrayList(Arrays.asList(s,c));
    //edges[3] = new ArrayList(Arrays.asList(s,g));
    //edges[4] = new ArrayList(Arrays.asList(c,d));
    //edges[5] = new ArrayList(Arrays.asList(c,e));
    //edges[6] = new ArrayList(Arrays.asList(c,f));
    //edges[7] = new ArrayList(Arrays.asList(g,f));
    //edges[8] = new ArrayList(Arrays.asList(g,h));
    //edges[9] = new ArrayList(Arrays.asList(e,h));
    
    //edges.put(a,Arrays.asList(b,s));
    //edges.put(s,Arrays.asList(c,g,a));
    //edges.put(b,Arrays.asList(a));
    //edges.put(g,Arrays.asList(f,s,h));
    //edges.put(c,Arrays.asList(f,d,e,s));
    //edges.put(d,Arrays.asList(c));
    //edges.put(f,Arrays.asList(c,g));
    //edges.put(e,Arrays.asList(c,h));
    //edges.put(h,Arrays.asList(e,g));
}}
