// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.ufpb.dsc.mma.domain;

import br.com.ufpb.dsc.mma.domain.Category;
import br.com.ufpb.dsc.mma.domain.Fighter;
import java.util.Set;

privileged aspect Category_Roo_JavaBean {
    
    public String Category.getName() {
        return this.name;
    }
    
    public void Category.setName(String name) {
        this.name = name;
    }
    
    public float Category.getMinWeight() {
        return this.minWeight;
    }
    
    public void Category.setMinWeight(float minWeight) {
        this.minWeight = minWeight;
    }
    
    public float Category.getMaxWeight() {
        return this.maxWeight;
    }
    
    public void Category.setMaxWeight(float maxWeight) {
        this.maxWeight = maxWeight;
    }
    
    public Set<Fighter> Category.getFighters() {
        return this.fighters;
    }
    
    public void Category.setFighters(Set<Fighter> fighters) {
        this.fighters = fighters;
    }
    
}
