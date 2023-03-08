package aseme;
import java.util.ArrayList;
import java.util.HashMap;

import statechart.Node;
import statechart.Transition;
public class NodeStore {
	private ArrayList<Node> adjacentSibling;
    private int count;
    private ArrayList<Transition> transitions;
    
    public NodeStore() {
        this.adjacentSibling = new ArrayList<Node>();
        this.transitions = new ArrayList<Transition>();
    }
    
    public void add(Node n,Transition t ) {
    	this.adjacentSibling.add(n);
    	this.transitions.add(t);
    }
    public ArrayList<Node> getNodes() {
    	return this.adjacentSibling;
    }
    public ArrayList<Transition> getTransitions(){
    	return this.transitions;
    }

}
